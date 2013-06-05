/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import database.BodyAddress;
import database.BodyAtMortuary;
import database.BodyAtMortuaryDb;
import database.BodyDb;
import database.DbDetail;
import database.Incident;
import database.IncidentDb;
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
@WebServlet(name = "AtMortuaryServlet", urlPatterns = {"/AtMortuaryServlet"})
public class AtMortuaryServlet extends HttpServlet {

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
        /**
         * Death register number: request.getParameter("at_mort_deathregister")
         * Incident log number: request.getParameter("at_mort_lognmber")
         */        
        BodyAtMortuary bodyAtMortuary = new BodyAtMortuary(request.getParameter("at_mort_deathregister"));
        bodyAtMortuary.setBodyHandedOverToPerNumber(request.getParameter("employee"));
        String receivedFrom = request.getParameter("employee_handing");
            /**
             * receivedFrom is not mandatory, so if they don't select an organization make sure
             * that you save none into the database
             */
            if(receivedFrom.equals("Select")!=true){
                bodyAtMortuary.setBodyHandOverFromOrganization(receivedFrom);
            }else{
                bodyAtMortuary.setBodyHandOverFromOrganization("null");
            }
        String organization = request.getParameter("organization");
            /**
             * Organization is not mandatory, so if they don't select an organization make sure
             * that you save none into the database
             */
            if(organization.equals("Select")!=true){
                bodyAtMortuary.setBodyHandOverFromOrganization(organization);
            }else{
                bodyAtMortuary.setBodyHandOverFromOrganization("null");
            }
        
        //Body Details
        bodyAtMortuary.setIncident(new Incident(request.getParameter("at_mort_lognmber")));
        bodyAtMortuary.setBodyType(request.getParameter("BodyPart"));
        bodyAtMortuary.setNameOfDeceased(request.getParameter("atMortBodyName"));
        bodyAtMortuary.setSurnameOfDeceased(request.getParameter("atMortBodySurname"));
        bodyAtMortuary.setID(request.getParameter("atMortBodyID"));
        //building body address
            BodyAddress bodyAddress = new BodyAddress();
            bodyAddress.setBuilding(request.getParameter("atMortuaryBodyAddressBuilding"));
            bodyAddress.setStreet(request.getParameter("atMortuaryBodyAddressStreet"));
            bodyAddress.setSuburb(request.getParameter("atMortuaryBodyAddressSuburb"));
            bodyAddress.setCity(request.getParameter("atMortuaryBodyAddressCity"));
            bodyAddress.setPostCode(request.getParameter("atMortuaryAddressPostalCode"));
            bodyAddress.setProvince(request.getParameter("province"));
            bodyAddress.setRegion(request.getParameter("region"));
            //bodyAddress.setMagisterialDistrict(request.getParameter("atSceneBodyAddressMagisterialDistrict"));
        //end of building body address
        bodyAtMortuary.setBodyAddress(bodyAddress);
        bodyAtMortuary.setRace(request.getParameter("Race"));
        bodyAtMortuary.setGender(request.getParameter("Gender"));
        if(request.getParameter("at_mortuary_body_estimated_age").equals("Months")){
            bodyAtMortuary.setEstimatedAgeMonth(Integer.parseInt(request.getParameter("atMortuaryBodyEstAge")));
        }else if(request.getParameter("at_mortuary_body_estimated_age").equals("Years")){
            bodyAtMortuary.setEstimatedAgeYear(Integer.parseInt(request.getParameter("atMortuaryBodyEstAge")));
        }
        //end of Body details
        //body fields that are not given by the UI input
        bodyAtMortuary.setDateOfBirth("0000-00-00");
        bodyAtMortuary.setAgeOnDateFound(Integer.parseInt(request.getParameter("atMortuaryBodyEstAge")));
        bodyAtMortuary.setIdentifiedDateTime("0000-00-00 00:00");
        bodyAtMortuary.setBodyStatus(false);
        bodyAtMortuary.setDateBodyReceived("0000-00-00");
        bodyAtMortuary.setDateBodyReleased("0000-00-00");
        bodyAtMortuary.setBodyReleased(false);
        bodyAtMortuary.setBodyReleaseTo(null);
        //end of body fiels that are not given by the UI
        
        //inserting body into database
        BodyDb bodyDb = new BodyDb(dbdetail, bodyAtMortuary);
        bodyDb.init();
        out.println("adding body :::" + bodyDb.add());
        //end of body inserting
        
        //inserting BodyAtMortuary into Database
        BodyAtMortuaryDb bodyAtMortuaryDb = new BodyAtMortuaryDb(bodyAtMortuary, dbdetail);
        bodyDb.init();
        out.println("adding body at mortuary :::" + bodyAtMortuaryDb.add());
        //end inserting BodyAtMortuary
        
        //property
        PropertyDb atMort_propertyDb = new PropertyDb(dbdetail);
        int count_fps = Integer.parseInt(request.getParameter("fps_property_counter_mort").toString());
        for(int i=0;i<count_fps;i++){
            String fps_prop_des = "fps_prop_des"+Integer.toString(i+1);
            String fps_prop_persal = "fps_prop_persal"+Integer.toString(i+1);
            if(request.getParameter(fps_prop_des) != null){
                Property propertyFPS = new Property();
                propertyFPS.setDeathRegisterNumber(request.getParameter(bodyAtMortuary.getDeathRegisterNumber()));
                propertyFPS.setDescription(request.getParameter(fps_prop_des));
                propertyFPS.setTakenBy(request.getParameter(fps_prop_persal));
                //Not null unmentioned fields
                Witness[] witnesses = {new Witness("null","null"), new Witness("null","null")};
                propertyFPS.setWitnesses(witnesses);
                propertyFPS.setDate(request.getParameter("bodyFoundDate"));
                propertyFPS.setSAPS_taken(false);
                propertyFPS.setReleased(false);
                //put the code to add this property into the database here
                atMort_propertyDb.setProperty(propertyFPS);
                atMort_propertyDb.init();
                out.println("adding property :::" + atMort_propertyDb.add());
            }
        }
        //property end
        
        //Increase Body Count for the relevent incident
        IncidentDb incidentDb = new IncidentDb( new Incident(request.getParameter("at_scene_lognmber")), dbdetail);
        incidentDb.init();
        out.println(incidentDb.read());
        incidentDb.init();
        out.println(incidentDb.IncreaseBodyCount());
        //response.sendRedirect("Home.jsp");

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
