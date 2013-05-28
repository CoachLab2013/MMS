<%-- 
    Document   : Time
    Created on : 19 Apr 2013, 8:59:20 AM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <select name="hour" id="hour">
            <option selected="selected">Hour</option>
            <%
                for(int i=0;i<24;i++){
                    out.println("<option>"+i+"</option>");
                }
            %>
        </select>
        <select name="minute" id="minute">
            <option selected="selected">Minute</option>
            <%
                for(int i=0;i<60;i++){
                    out.println("<option>"+i+"</option>");
                }
            %>
        </select>
    </body>
</html>
