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
<<<<<<< HEAD
         <link type="text/css" rel="stylesheet"  href="bootstrap/css/tablecss.css">
            
        <title>JSP Page</title>
=======
         <style type="text/css">
                label.error { 
                    float: none; 
                    color: red; 
                    padding-left: .5em; 
                    vertical-align: top; 
                }
            </style>
>>>>>>> origin/master
    </head>
    <body>
        <legend>Open body files </legend>
    
         <%
            Tools t = new Tools();
<<<<<<< HEAD
            out.println(t.openbodyfile("opentable"));
=======
            out.println(t.makeOpenBodyFileTable("opentable"));
>>>>>>> origin/master
            %>
        
       
    </body>
</html>
