/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import database.*;
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
 * @author Asheen
 */
@WebServlet(name = "DispatchVehicleServlet", urlPatterns = {"/DispatchVehicleServlet"})
public class DispatchVehicleServlet extends HttpServlet {

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
        HttpSession sess = request.getSession();
        String lognumber = sess.getAttribute("lognumber").toString();
        Tools t  = new Tools();
       
       Vehicle vehicle = new Vehicle(request.getParameter("vehicle"));
       Incident inc = new Incident(lognumber);
       VehicleDispatch vehicledispatch = new VehicleDispatch(t.getDateTime(),vehicle,inc);
       DbDetail dbdetail = new DbDetail("localhost","/mydb","root","password");
       VehicleDispatchDb vdb = new VehicleDispatchDb(dbdetail,vehicledispatch);
       vdb.init();
       vdb.add();
       String personnelnumber = sess.getAttribute("personnelnumber").toString();
       t.makeAuditTrail("Dispatch Vehicle", "Dispatched vehicle "+ request.getParameter("vehicle"), personnelnumber, "Log Incident Tab");
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
