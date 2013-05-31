/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import database.BodyAddress;
import database.BodyAtMortuary;
import database.BodyAtScene;
import database.Member;
import database.Property;
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
        
        BodyAtScene bodyAtScene = new BodyAtScene(new BodyAtMortuary(request.getParameter(null)));
        
        bodyAtScene.setDateTimeBodyFound(request.getParameter("bodyFoundDate") + " " + request.getParameter("bodyFoundTime"));
        bodyAtScene.setAllegedInjuryDateTime(request.getParameter("inAllegedInjuryDate") + " " + request.getParameter("inAllegedInjuryTime"));
        bodyAtScene.setAllegedDeathDateTime(request.getParameter("inAllegedDeathDate") + " " + request.getParameter("inAllegedDeathTime"));
        bodyAtScene.setSceneDateTime(request.getParameter("ReceivedSceneDate") + " " + request.getParameter("ReceivedSceneTime"));
        bodyAtScene.setFacilityDateTime(request.getParameter("ReceivedFacilityDate") + " " + request.getParameter("ReceivedFacilityTime"));
        bodyAtScene.setSceneIncidentOccured(request.getParameter("SceneType"));
        bodyAtScene.setPlaceOfDeath(request.getParameter("DeathAddress"));
        bodyAtScene.setExternalCircumstanceOfInjury(request.getParameter("ExternalCircumstance"));
        if (request.getParameter("pathologistAtScene").equals("Yes")){
            bodyAtScene.setPathOnScene(true);
        }else{
            bodyAtScene.setPathOnScene(false);
        }
        
        
        //build body received from
            Member receivedFrom = new Member();
            receivedFrom.setName(request.getParameter("receivedBodyFromName"));
            receivedFrom.setSurname(request.getParameter("receivedBodyFromSurname"));
            receivedFrom.setOrganization(request.getParameter("Organization"));
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
            pathologistOnScene.setDeathRegisterNumber(request.getParameter(bodyAtScene.getBody().getDeathRegisterNumber()));
         //end of Pathologist on scene
            
         
        //Body Details
        bodyAtScene.getBody().setBodyType(request.getParameter("BodyPart"));
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
        //end of building body
        bodyAtScene.getBody().setBodyAddress(bodyAddress);
        bodyAtScene.getBody().setRace(request.getParameter("Race"));
        bodyAtScene.getBody().setGender(request.getParameter("Gender"));
        if(request.getParameter(null).equals("Month")){
            bodyAtScene.getBody().setEstimatedAgeMonth(1);
        }else if(request.getParameter(null).equals("Year")){
            bodyAtScene.getBody().setEstimatedAgeYear(1);
        }
 
        //end of Body details
        //scroll up to at scene specifics
        //Property 
        Property propertySAPS = new Property();
        propertySAPS.setDeathRegisterNumber(request.getParameter(bodyAtScene.getBody().getDeathRegisterNumber()));
        propertySAPS.setDescription("SAPSpropertyDescr");
        propertySAPS.setSAPS_name("SAPSpropertyName");
        propertySAPS.setSAPS_surname("SAPSpropertySurname");
        
        Property propertyFPS = new Property();
        propertyFPS.setDeathRegisterNumber(request.getParameter(bodyAtScene.getBody().getDeathRegisterNumber()));
        propertyFPS.setDescription("atSceneFPSpropertyDescr");
        propertyFPS.setTakenBy(null);
        //end Property

        /*try {
            /* TODO output your page here. You may use following sample code. 
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet AtSceneServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AtSceneServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        } finally {            
            out.close();
        }*/
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
