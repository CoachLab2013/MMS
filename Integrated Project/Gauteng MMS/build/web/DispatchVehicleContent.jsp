<%-- 
    Document   : DispatchVehicleContent
    Created on : 18 Apr 2013, 11:31:27 AM
    Author     : Administrator
--%>

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
        <script language="javascript" type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
        <script language="javascript" type="text/javascript" src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.10.0/jquery.validate.min.js"></script>
        <script src="js/DispatchVehicleScript.js"></script>
    </head>

    <body>
    <legend>Incidents> Log Incident> Dispatch Vehicle</legend>
    <%
        if (session.getAttribute("incidentlogged") != null) {
            out.print("<label class='success'>" + session.getAttribute("incidentlogged") + "</label>");
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
    
    <form id="vehicleform" name="vehicleform" method="post" action="" hidden="true">
        <table>
            <tr>
                <td>Select Vehicle:</td><td> <select name="vehicle"  id="vehicle">
                        <option selected="selected">Select</option>
                        <option>vehicle 1</option>
                        <option>vehicle 2</option>
                        <option>vehicle 3</option>
                        <option>vehicle 4</option>
                        <option>vehicle 5</option>
                        <option>vehicle 6</option>
                    </select></td>
            </tr>
            <tr><td></td><td><input type="submit" value="Dsipatch Vehicle" /><input type="reset" value="Cancel" id="vehiclecancel" /></td>
            </tr>
        </table>
    </form>  
</body>


</html>
