<%-- 
    Document   : test
    Created on : 12 Apr 2013, 2:19:19 AM
    Author     : Sandile
--%>

<%@page import="servlets.Tools"%>
<%@page import="database.Employee"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <style type="text/css">
            label.error { 
                float: none; 
                color: red; 
                padding-left: .5em; 
                vertical-align: top; 
            }
        </style>
        <script language="javascript" type="text/javascript" src="js/jquery-1.9.1.js"></script>
        <script language="javascript" type="text/javascript" src="js/jquery.validate.min.js"></script>

        <link type="text/css" rel="stylesheet"  href="bootstrap/css/bootstrap.css">   
        <script  src="bootstrap/js/bootstrap-tabs.js"></script>
        <title>Gauteng Mortuary Management System</title>
        <div class="head"><img src="Images/logo2.jpg">
    </head>
    <body>
        <% 
        
        //Tools t = new Tools();
        //t.adduser();  
        %>

        <p>

            
            <span style="float: right"><a href="/Gauteng_MMS">Logout</a></span>
        </p>
        <%
            if (session.getAttribute("incidentlogged") != null) {
                out.println("<input name='incidentlogged' id='incidentlogged' type=hidden value=true>");
            }
        %>
       
        <div class="tabbable">
            <ul class="nav nav-tabs " data-tabs="tabs">
                <li id="IncidentTab" class="active"><a href="#Incident" data-toggle="tab">Incidents</a> </li>
                <li id ="BodyFileTab"><a href="#BodyFile" data-toggle="tab">Body File</a></li>       
            </ul>
            <div class="tab-content" >
                <div id="Incident" class="tab-pane active">  
                    <jsp:include page="IncidentsTabContent.jsp" /> 

                </div>
                <div id="BodyFile" class="tab-pane "> 
                    <div align="center"><h2>Body File </h2> </div>
                    <jsp:include page= "BodyFileTabContent.jsp"/>
                </div>           
            </div>

        </div>

    </body>
</html>
