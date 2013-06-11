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
    <legend>Open Incidents</legend>

    
        <%
            Tools t = new Tools();
            out.println(t.makeOpenIncidentsTable("opentable"));
        %>

        <br>        


        <table>
            <tr>
                <td width="20"></td>
                <td width="50"><input class="btn" type="button" value="Edit" id="editincidentbutton"></td>
                <td width="30" align="center"><input class="btn" type="button" value="Close Incident" id="close"> </td>
            </tr>
            <tr>
                <td>
                    <form id="noincident" hidden="true">
                    <label hidden id="label_noincident" class="error" >Please select an incident</label>
                    </form>
                </td>
            </tr>

        </table> 
        <br>
        
    <form id="closeincident" hidden="true" action="CloseIncidentServlet">
        <table>

            <th>Close Incident</th>
            <tr>
                <td>
                    FPS Incident Log Number: 
                </td>
                <td>
                    <input type="text" id="selectedincident" name="selectedincident" readonly="true">
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
                    <input class="btn" id="closeincident" type="submit" value="Close Incident">
                    <input class="btn" id="cancelcloseincident" type="reset" value="Cancel">
                </td>
            </tr>
        </table>
    </form>
        <form id="editincidentform" hidden="true" action="GetIncidentServlet">
            <input class="btn" type="text" id="selected_edit_incident" name="selected_edit_incident">
           
        </form>
</body>
</html>