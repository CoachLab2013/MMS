<%-- 
    Document   : bodyrelease
    Created on : 21 May 2013, 12:13:32 PM
    Author     : Cya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="servlets.Tools"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Body Release</h1>
        <%
            Tools t = new Tools();
            //out.println(t.bodyRelease("bodyreleasetable"));
             //out.println(t.makeOpenIncidentsTable("opentable"));
           out.println(t.bodyRelease("opentable"));
            %>
        
    </body>
</html>
