<%-- 
    Document   : CheckLogIn
    Created on : 21 Apr 2013, 8:43:38 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>



<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <%
    if(session.getAttribute("loggedin")== null){
        session.setAttribute("loginerror", "You must log in to gain access to the system.");
        response.sendRedirect("/Gauteng_MMS/");
    }
%>
    </body>
</html>
