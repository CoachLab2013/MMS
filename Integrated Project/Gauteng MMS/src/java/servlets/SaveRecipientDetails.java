/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import database.DbDetail;
import database.Recipient;
import database.RecipientDb;
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
 * @author Cya
 */
@WebServlet(name = "SaveRecipientDetails", urlPatterns = {"/SaveRecipientDetails"})
public class SaveRecipientDetails extends HttpServlet {

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
        Recipient recipient = new Recipient();
     
        recipient.setName(request.getParameter("RecipientName"));
        recipient.setSurname(request.getParameter("RecipientSurname"));       
        recipient.setIdType(request.getParameter("Recipientidentificationtype"));
        recipient.setID(request.getParameter("recipientIDNumber"));
        recipient.setAddress(request.getParameter("recipientAddres"));
        recipient.setContactNumber(request.getParameter("recipientContact"));
        recipient.setBody_idDeathRegisterNumber("099888592");
            
        Tools t = new Tools();
        DbDetail dbdetail = t.getDbdetail();
        RecipientDb recipientDb = new  RecipientDb(recipient, dbdetail);
        recipientDb.init();
       // String success =  recipientDb.add();
        
        HttpSession sess = request.getSession();
        sess.setAttribute("recipient", true);
        response.sendRedirect("Home.jsp");
        out.close();
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
