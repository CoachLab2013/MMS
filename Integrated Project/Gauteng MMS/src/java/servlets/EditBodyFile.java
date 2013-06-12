/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import database.BodyAtMortuary;
import database.BodyDb;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Chester
 */
@WebServlet(name = "EditBodyFile", urlPatterns = {"/EditBodyFile"})
public class EditBodyFile extends HttpServlet {

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
            throws ServletException, IOException 
    {
        response.setContentType("text/html;charset=UTF-8");
        String deathReg = request.getParameter("selectedbody");
        BodyAtMortuary body = new Tools().getBody(deathReg);
        HttpSession ses = request.getSession();
        ses.setAttribute("bIdFullName", body.getNameOfDeceased());
        ses.setAttribute("bIdMadienName",body.getMaidenName());
        ses.setAttribute("bIdSurname", body.getSurnameOfDeceased());
        if(body.getID().equals(""))
        {
            ses.setAttribute("bIdIDNumber", body.getID());
        }
        else
        {
            ses.setAttribute("bIdIDNumber", body.getPassport());
        }
        ses.setAttribute("bIdPlaceOfBirth", body.getPlaceOfBirth());
        ses.setAttribute("bIdDateOfBirth", body.getDateOfBirth());
        ses.setAttribute("bIdAgeOnDate", body.getAgeOnDateFound());
        ses.setAttribute("bIdGender", body.getGender());
        ses.setAttribute("bIdMarital", body.getMaritalStatus());
        ses.setAttribute("bIdRace", body.getRace());
        ses.setAttribute("bIdOccupation", body.getOccupation());
        ses.setAttribute("bIdCitizenship", body.getCitizen());
        ses.setAttribute("bIdBodyStatus", body.isBodyStatus());
        ses.setAttribute("bIdAssignedFPS", body.getAssignedTo());
        ses.setAttribute("bIdBuild", body.getBodyAddress().getBuilding());
        ses.setAttribute("bIdStreet", body.getBodyAddress().getStreet());
        ses.setAttribute("bIdSuburb", body.getBodyAddress().getSuburb());
        ses.setAttribute("bIdCity", body.getBodyAddress().getCity());
        ses.setAttribute("bIdPostCode", body.getBodyAddress().getPostCode());
        ses.setAttribute("bIdProvince", body.getBodyAddress().getProvince());
        ses.setAttribute("bIdRegion", body.getBodyAddress().getRegion());
        ses.setAttribute("bIdDistrict", body.getBodyAddress().getMagisterialDistrict());
        ses.setAttribute("bodyFileDetail", true);
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
            throws ServletException, IOException
    {
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
            throws ServletException, IOException 
    {
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