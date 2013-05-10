<%-- 
    Document   : test
    Created on : 12 Apr 2013, 2:19:19 AM
    Author     : Sandile
--%>

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
        <script language="javascript" type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
        <script language="javascript" type="text/javascript" src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.10.0/jquery.validate.min.js"></script>
        <script src="js/SetFocus.js"></script>

        <link type="text/css" rel="stylesheet"  href="bootstrap/css/bootstrap.css">           
        <script  src="bootstrap/js/bootstrap-tabs.js"></script>
        <title>Gauteng Mortuary Management System</title>
    </head>
    <body>

        <p>

            <span style="float: left">Welcome ${employee.getName()} ${employee.getSurname()}</span>
            <span style="float: right">Logout</span>
        </p>
        <%
            if (session.getAttribute("incidentlogged") != null) {
                out.println("<input name='incidentlogged' id='incidentlogged' type=hidden value=true>");
            }
        %>
        <div align="center"><h1> <img src="Images/logo.jpg" width="75" height="75"> Gauteng Mortuary Management System</h1></div>
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
