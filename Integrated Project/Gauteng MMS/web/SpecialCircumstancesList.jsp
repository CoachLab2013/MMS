<%-- 
    Document   : SpecialCircumstances
    Created on : 23 Apr 2013, 10:55:20 AM
    Author     : Administrator
--%>

<%@page import="servlets.Tools"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <select name="specialcircumstances" id="specialcircumstances">
            <option selected="selected">Select</option>
            <% 
                ArrayList<String> list = new ArrayList<String>();
                Tools t = new Tools();
                list = t.getReferenceList("specialcircumstance");
                int size = list.size();
                for(int i=0;i<size;i++){
                    out.println("<option>"+list.get(i)+"</option>");
                }
            %>
        </select>
    </body>
</html>
