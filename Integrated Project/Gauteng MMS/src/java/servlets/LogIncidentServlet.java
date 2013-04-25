/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import database.DbDetail;
import database.DeathCall;
import database.DeathCallDb;
import database.Incident;
import database.IncidentDb;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Administrator
 */
@WebServlet(name = "LogIncidentServlet", urlPatterns = {"/LogIncidentServlet"})
public class LogIncidentServlet extends HttpServlet {

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
        
        Incident incident = new Incident();
        incident.setIncidentLogNumber(request.getParameter("fpsnumber"));
        incident.setReferenceNumber(request.getParameter("SAPSnumber"));
        String date = request.getParameter("detailyear")+"-"+request.getParameter("detailmonth")+"-"+request.getParameter("detailday");
        incident.setDateOfIncident(date);
        String time = request.getParameter("detailhour") +":"+ request.getParameter("detailminute") + ":00";
        incident.setTimeOfIncident(time);
        incident.setNumberOfBodies(Integer.parseInt(request.getParameter("numberofbodies" )));
        incident.setPlaceBodyFound(request.getParameter("placefound"));
        incident.setCircumstanceOfDeath(request.getParameter("circumstancesofdeath"));
        incident.setSpecialCircumstances(request.getParameter("specialcircumstance"));
        incident.setStatus(true);
        
        DbDetail dbdetail = new DbDetail("localhost","/mydb","asheen","password");
        IncidentDb incidentdb = new IncidentDb(incident, dbdetail);
        incidentdb.init();
        incidentdb.add();
        
        String timestamp = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(Calendar.getInstance().getTime());
        String[] datetime = timestamp.split(" ");
        DeathCall dcall = new DeathCall();
        String calltime = request.getParameter("callhour") + ":" + request.getParameter("callminute")+ ":00"; 
        dcall.setTimeOfCall(calltime);
        
        dcall.setDateOfCall(datetime[0]);
        dcall.setNumberOfCaller(request.getParameter("phonenumber"));
        dcall.setNameOfCaller(request.getParameter("name"));
        dcall.setInstitution(request.getParameter("institution"));
        dcall.setSceneAddress(request.getParameter("address"));        
        dcall.setProvince(request.getParameter("province"));
        dcall.setRegion(request.getParameter("region"));
        dcall.setSceneConditions(request.getParameter("condition"));
        dcall.setIncident(incident);
        
        DeathCallDb calldb = new DeathCallDb(dcall,dbdetail);
        calldb.init();
        calldb.add();
        
        HttpSession sess = request.getSession();
        sess.setAttribute("incidentlogged", "Incident created succesully");
        sess.setAttribute("incident", incident);
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
