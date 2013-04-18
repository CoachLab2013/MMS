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
    </head>
    
    <body>
        <legend>Incidents> Log Incident> Dispatch Vehicle</legend>
        <form>
    <table>
   Select Vehicle: <select name="select vehicle" single="single">
       <option>vehicle 1</option>
        <option>vehicle 2</option>
        <option>vehicle 3</option>
        <option>vehicle 4</option>
        <option>vehicle 5</option>
        <option>vehicle 6</option>
    </select>
  
   <br><br>Message:  <br><textarea cols="50" rows="7" name="massage"> </textarea>
   <br><br><br><input type="submit" value="Submit" />
    </table>
</form>      
    </body>
    

</html>
