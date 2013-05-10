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
        <link type="text/css" rel="stylesheet"  href="bootstrap/css/table.css"> 
    </head>
    <body>  
        <legend>Incidents> Open Incidents</legend>
            <form name="Deceased details" method="post" action="Deceased Address.jsp" class="form-horizontal" >
             <%
                //Tools t = new Tools();
                //out.println(t.makeOpenIncidentsTable());
             %>
<table class="displaytable">
	<th class="tableheading">Header 1</th>
	<th class="tableheading">Header 2</th>
	<th class="tableheading">Header 3</th>
	<tr class="tablerow">
		<td class="tablecell">Row 1 Col 1</td>
		<td class="tablecell">Row 1 Col 2</td>
		<td class="tablecell">Row 1 Col 3</td>
	</tr>
	<tr class="tablerow">
		<td class="tablecell">Row 2 Col 1</td>
		<td class="tablecell">Row 2 Col 2</td>
		<td class="tablecell">Row 2 Col 3</td>
	</tr>
	<tr class="tablerow">
		<td class="tablecell">Row 3 Col 1</td>
		<td class="tablecell">Row 3 Col 2</td>
		<td class="tablecell">Row 3 Col 3</td>
	</tr>
</table>
             
        <br>        


<table>
    <tr>
        <td width="200"></td>
        <td width="10"><input type="button" value="Edit" onClick="Edit();"></td>
        <td width="300" align="center"><input type="button" value="Close Incident" onClick="closeIncident()"> </td>
    </tr>
</table> 
        
        
            </form>
    </body>
</html>
