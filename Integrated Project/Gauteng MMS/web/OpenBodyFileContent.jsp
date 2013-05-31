<%-- 
    Document   : OpenBodyFileContent
    Created on : 27 May 2013, 8:19:09 AM
    Author     : Cya
--%>
<%@page import="servlets.Tools"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link type="text/css" rel="stylesheet"  href="bootstrap/css/tablecss.css">
            
        <title>JSP Page</title>
    </head>
    <body>
        <legend>Open body files </legend>
    
         <%
            Tools t = new Tools();
            out.println(t.openbodyfile("opentable"));
            %>
        
       
    </body>
</html>
