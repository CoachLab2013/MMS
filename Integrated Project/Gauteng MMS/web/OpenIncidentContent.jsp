<%-- 
    Document   : OpenIncident
    Created on : Apr 16, 2013, 10:27:53 PM
    Author     : hollard
--%>

<%@page import="servlets.Tools"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="js/OpenIncidentScript.js"></script>
        <link type="text/css" rel="stylesheet"  href="bootstrap/css/tablecss.css"> 
    </head>
    <body>  
    <legend>Incidents> Open Incidents</legend>
    <form name="Deceased details" method="post" action="Deceased Address.jsp" class="form-horizontal" >
        <%
            Tools t = new Tools();
            out.println(t.makeOpenIncidentsTable("opentable"));
        %>

        <br>        


        <table>
            <tr>
                <td width="200"></td>
                <td width="10"><input type="button" value="Edit" id="edit"></td>
                <td width="300" align="center"><input type="button" value="Close Incident" id="close"> </td>
            </tr>


        </table> 
        <br>
        <br>
    </form>
    <form id="closeincident" hidden="true">
        <table>

            <th>Close Incident</th>
            <tr>
                <td>
                    FPS Incident Log Number: 
                </td>
                <td>
                    <input type="text" id="selectedincident" readonly="true">
                </td>
            </tr>
            <tr>
                <td>
                    Reason for closing incident:
                </td>
                <td>
                    <textarea cols="50" rows="3" name="closereason" id="closereason"> </textarea>
                </td>
            </tr>
            <tr>
                <td>

                </td>
                <td>
                    <input id="closeincident" type="submit" value="Close Incident">
                    <input id="cancelcloseincident" type="reset" value="Cancel">
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
