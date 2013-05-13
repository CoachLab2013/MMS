<%-- 
    Document   : DispatchVehicleContent
    Created on : 18 Apr 2013, 11:31:27 AM
    Author     : Administrator
--%>

<%@page import="servlets.Tools"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style type="text/css">
            label.error { 
                float: none; 
                color: red; 
                padding-left: .5em; 
                vertical-align: top; 
            }
            label.success { 
                float: none; 
                color: green; 
                padding-left: .5em; 
                vertical-align: top; 
            }
        </style>
        <script language="javascript" type="text/javascript" src="js/jquery-1.9.1.js"></script>
        <script language="javascript" type="text/javascript" src="js/jquery.validate.min.js"></script>
        <script src="js/DispatchVehicleScript.js"></script>
    </head>

    <body>
    <legend>Incidents> Log Incident> Dispatch Vehicle</legend>
    <%
        if (session.getAttribute("incidentlogged") != null) {
            out.print("<script src='js/SetFocus.js'></script>");
            out.print("<label class='success' id='success'>" + session.getAttribute("incidentlogged") + "</label>");
            session.removeAttribute("incidentlogged");
        }
    %>
    
    <form id="dispatchform" name="dispatchform" hidden="true" method="post" action="DispatchVehicleServlet">
        <table>
            <tr>
                <td><label>Would you like to dispatch a vehicle?</label> </td><td>   </td>
                <td>
                    <input id="yesdispatch" type="submit" value="Yes" />
                    <input id="nodispatch" type="button" value="No" />
                </td>
            </tr>
        </table>
    </form>
    
    <form id="vehicleform" name="vehicleform" method="post" action="DispatchVehicleServlet" hidden="true">
        <table>
            <tr>
                <td>Select Vehicle:</td><td>
                <% 
                    Tools t = new Tools();
                    out.print(t.makeReferenceList("vehicle"));
                %>
                </td>
            </tr>
            <tr><td></td><td><input type="submit" id="dispatch" value="Dsipatch Vehicle" /><input type="reset" value="Cancel" id="vehiclecancel" /></td>
            </tr>
        </table>
    </form>  
</body>


</html>
