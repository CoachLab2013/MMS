/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import database.BodyAddress;
import database.BodyAtMortuary;
import database.BodyAtScene;
import database.Member;
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
        
        BodyAtScene bodyAtScene = new BodyAtScene(new BodyAtMortuary("INSERT DEATH REGISTER NUMBER"));
        
        bodyAtScene.setDateTimeBodyFound(null);
        bodyAtScene.setAllegedInjuryDateTime(null);
        bodyAtScene.setAllegedDeathDateTime(null);
        bodyAtScene.setSceneDateTime(null);
        bodyAtScene.setSceneIncidentOccured(null);
        bodyAtScene.setPlaceOfDeath(null);
        bodyAtScene.setExternalCircumstanceOfInjury(null);
        bodyAtScene.setPathOnScene(true);
        
        //build body received from
            Member receivedFrom = new Member();
            receivedFrom.setName(null);
            receivedFrom.setSurname(null);
            receivedFrom.setOrganization(null);
            receivedFrom.setDeathRegisterNumber(null);
        //end of building received from
        
        //SAPS member
            Member SAPSmemeber = new Member();
            SAPSmemeber.setName(null);
            SAPSmemeber.setSurname(null);
            SAPSmemeber.setContactNumber(null);
            SAPSmemeber.setOrganization(null); //SAPS
            SAPSmemeber.setRank(null);
            SAPSmemeber.setDeathRegisterNumber(null);
        // end of SAPS member
        
        //FPSmemeber
            Member FPSmemeber = new Member();
            FPSmemeber.setName(null);
            FPSmemeber.setSurname(null);
            FPSmemeber.setPersonnelNumber(null);
            FPSmemeber.setContactNumber(null); //SAPS
            FPSmemeber.setRank(null);
            FPSmemeber.setDeathRegisterNumber(null);
        //end of FPS member
            
        //Pathologist on scene
            Member pathologistOnScene = new Member();
            pathologistOnScene.setName(null);
            pathologistOnScene.setSurname(null);
            pathologistOnScene.setPersonnelNumber(null);
            pathologistOnScene.setContactNumber(null); //SAPS
            pathologistOnScene.setRank(null);
            pathologistOnScene.setDeathRegisterNumber(null);
         //end of Pathologist on scene
            
         
        //Body Details
        bodyAtScene.getBody().setBodyType(null);
        bodyAtScene.getBody().setNameOfDeceased(null);
        bodyAtScene.getBody().setSurnameOfDeceased(null);
        bodyAtScene.getBody().setID(null);
        //building body address
            BodyAddress bodyAddress = new BodyAddress();
            bodyAddress.setBuilding(null);
            bodyAddress.setStreet(null);
            bodyAddress.setSuburb(null);
            bodyAddress.setCity(null);
            bodyAddress.setPostCode(null);
            bodyAddress.setProvince(null);
            bodyAddress.setRegion(null);
            bodyAddress.setMagisterialDistrict(null);
        //end of building body
        bodyAtScene.getBody().setBodyAddress(bodyAddress);
        bodyAtScene.getBody().setRace(null);
        bodyAtScene.getBody().setGender(null);
 
//        bodyAtScene.getBody().setEstimatedAgeYear(estimatedAgeYear);
 
        //end of Body details
        
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
