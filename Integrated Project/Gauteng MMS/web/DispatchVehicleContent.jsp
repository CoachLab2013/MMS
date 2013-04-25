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
            </style>
<script language="javascript" type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script language="javascript" type="text/javascript" src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.10.0/jquery.validate.min.js"></script>
 <script src="js/DispatchVehicleScript.js"></script>
    </head>
    
    <body>
        <% 
            if(session.getAttribute("incidentlogged") != null){
                out.print(session.getAttribute("incidentlogged"));
                //session.removeAttribute("incidentlogged");
           }
        %>
        <legend>Incidents> Log Incident> Dispatch Vehicle</legend>
        <form id="vehicleform" name="vehicleform" method="post" action="">
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
   <tr><td></td><td><input type="submit" value="Submit" /><input type="reset" value="Cancel" id="vehiclecancel" /></td>
   </tr>
    </table>
</form>      
    </body>
    

</html>
