<%-- 
    Document   : EditIncidentTabContent
    Created on : 19 Apr 2013, 12:23:53 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.4/jquery.min.js"></script>
        <link type="text/css" rel="stylesheet"  href="bootstrap/css/bootstrap.css">           
        <script  src="bootstrap/js/bootstrap-tabs.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <div class="tabbable">
            <ul class="nav nav-tabs " data-tabs="tabs">
                <li class="active"><a href="#EditIncidentDetails" data-toggle="tab">Incident Details</a> </li>
                <li><a href="#EditCallDetails" data-toggle="tab">Call Details</a></li>   
            </ul>
            <div class="tab-content" >
                <div id="EditIncidentDetails" class="tab-pane active">  
                    <jsp:include page="EditIncidentDetailsContent.jsp" />
                </div>
                
                <div id="EditCallDetails" class="tab-pane "> 
                    
                     <jsp:include page="EditCallDetailsContent.jsp" />
                </div> 
                 
            </div>

        </div>
    </body>
</html>