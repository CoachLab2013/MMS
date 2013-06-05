/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import database.BodyAddress;
import database.BodyAtMortuary;
import database.BodyAtScene;
import database.BodyAtSceneDb;
import database.BodyDb;
import database.DbDetail;
import database.Incident;
import database.IncidentDb;
import database.Member;
import database.MemberDb;
import database.Property;
import database.PropertyDb;
import database.Witness;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Bandile
 */
@WebServlet(name = "AtSceneServlet", urlPatterns = {"/AtSceneServlet"})
public class AtSceneServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        Tools t = new Tools();
        DbDetail dbdetail = t.getDbdetail();
        
        //Incident Log number: request.getParameter("at_scene_lognmber");   
        
        BodyAtScene bodyAtScene = new BodyAtScene(new BodyAtMortuary(request.getParameter("at_scene_deathregister")));       
        bodyAtScene.setDateTimeBodyFound(request.getParameter("bodyFoundDate") + " " + request.getParameter("bodyFoundTime"));
        bodyAtScene.setAllegedInjuryDateTime(request.getParameter("inAllegedInjuryDate") + " " + request.getParameter("inAllegedInjuryTime"));
        bodyAtScene.setAllegedDeathDateTime(request.getParameter("inAllegedDeathDate") + " " + request.getParameter("inAllegedDeathTime"));
        bodyAtScene.setSceneDateTime(request.getParameter("ReceivedSceneDate") + " " + request.getParameter("ReceivedSceneTime"));
        bodyAtScene.setFacilityDateTime(request.getParameter("ReceivedFacilityDate") + " " + request.getParameter("ReceivedFacilityTime"));
        bodyAtScene.setSceneIncidentOccured(request.getParameter("SceneType"));
        bodyAtScene.setPlaceOfDeath(request.getParameter("DeathAddress"));
        bodyAtScene.setExternalCircumstanceOfInjury(request.getParameter("externalcircumstance"));
        
        if (request.getParameter("pathologistAtScene").equals("Yes")){
            bodyAtScene.setPathOnScene(true);
        }else{
            bodyAtScene.setPathOnScene(false);
        }
        
        
        //build body received from
            Member receivedFrom = new Member();
            receivedFrom.setName(request.getParameter("receivedBodyFromName"));
            receivedFrom.setSurname(request.getParameter("receivedBodyFromSurname"));
            String organization = request.getParameter("organization");
            /**
             * Organization is not mandatory, so if they don't select an organization make sure
             * that you save none into the database
             */
            if(organization.equals("Select")){
                receivedFrom.setOrganization("None");
            }
            else{
                receivedFrom.setOrganization(organization);
            }
            receivedFrom.setDeathRegisterNumber(bodyAtScene.getBody().getDeathRegisterNumber());
        //end of building received from
        
        //SAPS member
            Member SAPSmemeber = new Member();
            SAPSmemeber.setName(request.getParameter("SAPSmemberBodyName"));
            SAPSmemeber.setSurname(request.getParameter("SAPSmemberBodySurname"));
            SAPSmemeber.setContactNumber(request.getParameter("SAPSmemberBodyCell"));
            SAPSmemeber.setOrganization("SAPS"); //SAPS
            SAPSmemeber.setRank(request.getParameter("SAPSmemberBodyRank"));
            SAPSmemeber.setDeathRegisterNumber(bodyAtScene.getBody().getDeathRegisterNumber());
        // end of SAPS member
        
        //FPSmemeber
            Member FPSmemeber = new Member();
            FPSmemeber.setName(request.getParameter("FPSmemberBodyName"));
            FPSmemeber.setSurname(request.getParameter("FPSmemberBodySurname"));
            FPSmemeber.setPersonnelNumber(request.getParameter("FPSmemberBodyPersal"));
            FPSmemeber.setContactNumber(request.getParameter("FPSmemberBodyCell")); //SAPS
            FPSmemeber.setRank(request.getParameter("FPSmemberBodyRank"));
            FPSmemeber.setDeathRegisterNumber(bodyAtScene.getBody().getDeathRegisterNumber());
        //end of FPS member
            
        //Pathologist on scene MIGHT NEED TO ADD SEPERATE TABLE
            Member pathologistOnScene = new Member();
            pathologistOnScene.setName(request.getParameter("pathologistBodyName"));
            pathologistOnScene.setSurname(request.getParameter("pathologistBodySurname"));
            //pathologistOnScene.setPersonnelNumber(request.getParameter(null));
            //pathologistOnScene.setContactNumber(request.getParameter(null)); //SAPS
            pathologistOnScene.setRank(request.getParameter("pathologistBodyRank"));
            pathologistOnScene.setDeathRegisterNumber(bodyAtScene.getBody().getDeathRegisterNumber());
         //end of Pathologist on scene
            
         
        //Body Details
        bodyAtScene.getBody().setIncident(new Incident(request.getParameter("at_scene_lognmber")));
        bodyAtScene.getBody().setBodyType(request.getParameter("bodypart"));
        bodyAtScene.getBody().setNameOfDeceased(request.getParameter("atSceneBodyName"));
        bodyAtScene.getBody().setSurnameOfDeceased(request.getParameter("atSceneBodySurname"));
        bodyAtScene.getBody().setID(request.getParameter("atSceneBodyID"));
        //building body address
            BodyAddress bodyAddress = new BodyAddress();
            bodyAddress.setBuilding(request.getParameter("atSceneBodyAddressBuilding"));
            bodyAddress.setStreet(request.getParameter("atSceneBodyAddressStreet"));
            bodyAddress.setSuburb(request.getParameter("atSceneBodyAddressSuburb"));
            bodyAddress.setCity(request.getParameter("atSceneBodyAddressCity"));
            bodyAddress.setPostCode(request.getParameter("atSceneBodyAddressPostalCode"));
            bodyAddress.setProvince(request.getParameter("atSceneBodyAddressProvince"));
            bodyAddress.setRegion(request.getParameter("atSceneBodyAddressRegion"));
            bodyAddress.setMagisterialDistrict(request.getParameter("atSceneBodyAddressMagisterialDistrict"));
        //end of building body address
        bodyAtScene.getBody().setBodyAddress(bodyAddress);
        bodyAtScene.getBody().setRace(request.getParameter("race"));
        bodyAtScene.getBody().setGender(request.getParameter("gender"));
        if(request.getParameter("at_scene_body_estimated_age_type").equals("Month")){
            bodyAtScene.getBody().setEstimatedAgeMonth(Integer.parseInt(request.getParameter("atSceneBodyEstAge")));
        }else if(request.getParameter("at_scene_body_estimated_age_type").equals("Year")){
            bodyAtScene.getBody().setEstimatedAgeYear(Integer.parseInt(request.getParameter("atSceneBodyEstAge")));
        }
        //body fields that are not given by the UI input
        bodyAtScene.getBody().setDateOfBirth("0000-00-00");
        bodyAtScene.getBody().setAgeOnDateFound(Integer.parseInt(request.getParameter("atSceneBodyEstAge")));
        bodyAtScene.getBody().setIdentifiedDateTime("0000-00-00 00:00");
        bodyAtScene.getBody().setBodyStatus(false);
        bodyAtScene.getBody().setDateBodyReceived("0000-00-00");
        bodyAtScene.getBody().setDateBodyReleased("0000-00-00");
        bodyAtScene.getBody().setBodyReleased(false);
        bodyAtScene.getBody().setBodyReleaseTo(null);
        //end of body fiels that are not given by the UI
        
        //end of Body details
        //inserting body into database
        BodyDb bodyDb = new BodyDb(dbdetail, bodyAtScene.getBody());
        bodyDb.init();
        out.println("adding body :::" + bodyDb.add());
        //end of body inserting
        
        //inserting BodyAtScene into Database
        BodyAtSceneDb bodyAtSceneDb = new BodyAtSceneDb(dbdetail,bodyAtScene);
        bodyAtSceneDb.init();
        out.println("adding bodyAtScene :::" + bodyAtSceneDb.add());
        //end inserting BodyAtScene
        
        //NOTE: must add all other things such as members and property after adding the body, due to foreign key constraints
        MemberDb memberDb = new MemberDb(dbdetail);
        //insertin SAPS member
        //memberDb = new MemberDb(dbdetail);
        memberDb.setMember(SAPSmemeber);
        memberDb.init();
        out.println("adding SAPSmem  :::" + memberDb.add());
        //end inserting SAPS member
        
        //insertin FPS member
        //memberDb = new MemberDb(dbdetail);
        memberDb.setMember(FPSmemeber);
        memberDb.init();
        out.println("adding FPSmem :::" + memberDb.add());
        //end insertingF member
        
        //insertin Pathologist member
        //memberDb = new MemberDb(dbdetail);
        memberDb.setMember(pathologistOnScene);
        memberDb.init();
        out.println("adding Pathmem :::" + memberDb.add());
        //end inserting Pathologist member
        
        //Property
        PropertyDb atScene_propertyDb = new PropertyDb(dbdetail);
        int count_saps = Integer.parseInt(request.getParameter("saps_property_counter").toString());
        for(int i=0;i<count_saps;i++){
            String saps_prop_des = "saps_prop_des"+Integer.toString(i+1);
            String saps_prop_name = "saps_prop_name"+Integer.toString(i+1);
            String saps_prop_surname = "saps_prop_surname"+Integer.toString(i+1);
            if(request.getParameter(saps_prop_des) != null){
                Property propertySAPS = new Property();
                propertySAPS.setDeathRegisterNumber(bodyAtScene.getBody().getDeathRegisterNumber());
                propertySAPS.setDescription(request.getParameter(saps_prop_des));
                propertySAPS.setSAPS_name(request.getParameter(saps_prop_name));
                propertySAPS.setSAPS_surname(request.getParameter(saps_prop_surname));
                //Not null unmentioned fields
                Witness[] witnesses = {new Witness("null","null"), new Witness("null","null")};
                propertySAPS.setWitnesses(witnesses);
                propertySAPS.setDate(request.getParameter("bodyFoundDate"));
                propertySAPS.setSAPS_taken(true);
                propertySAPS.setReleased(false);
                //put the code to add this property into the database here
                atScene_propertyDb.setProperty(propertySAPS);
                atScene_propertyDb.init();
                out.println("adding property :::" + atScene_propertyDb.add());
            }
        }
        
        int count_fps = Integer.parseInt(request.getParameter("fps_property_counter").toString());
        for(int i=0;i<count_fps;i++){
            String fps_prop_des = "fps_prop_des"+Integer.toString(i+1);
            String fps_prop_persal = "fps_prop_persal"+Integer.toString(i+1);
            //out.println("FPS prop des table number: " + fps_prop_des);
            if(request.getParameter(fps_prop_des) != null){
                Property propertyFPS = new Property();
                propertyFPS.setDeathRegisterNumber(bodyAtScene.getBody().getDeathRegisterNumber());
                propertyFPS.setDescription(request.getParameter(fps_prop_des));
                //out.println("********FPS PROP DES*********: " + request.getParameter(fps_prop_des));
                propertyFPS.setTakenBy(request.getParameter(fps_prop_persal));
                //out.println("********FPS PROP PERSEL*********: " + request.getParameter(fps_prop_persal));
                //Not null unmentioned fields
                Witness[] witnesses = {new Witness("null","null"), new Witness("null","null")};
                propertyFPS.setWitnesses(witnesses);
                propertyFPS.setDate(request.getParameter("bodyFoundDate"));
                propertyFPS.setSAPS_taken(false);
                propertyFPS.setReleased(false);
                //put the code to add this property into the database here
                atScene_propertyDb.setProperty(propertyFPS);
                atScene_propertyDb.init();
                out.println("adding property :::" + atScene_propertyDb.add());
            }
        }
        
        //end Property
        
        //Increase Body Count for the relevent incident
        IncidentDb incidentDb = new IncidentDb( new Incident(request.getParameter("at_scene_lognmber")), dbdetail);
        incidentDb.init();
        out.println(incidentDb.read());
        incidentDb.init();
        out.println(incidentDb.IncreaseBodyCount());
        
        response.sendRedirect("Home.jsp");

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP
     * <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
