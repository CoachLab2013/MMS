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
         <style type="text/css">
                label.error { 
                    float: none; 
                    color: red; 
                    padding-left: .5em; 
                    vertical-align: top; 
                }
            </style>
    </head>
    <body>
        <h2>Open body files </h2>
    
         <%
            Tools t = new Tools();
            out.println(t.makeOpenBodyFileTable("open_body_file_table"));
            %>
        
       
    </body>
</html>
