<%-- 
    Document   : LogIncidentTabContent
    Created on : 18 Apr 2013, 10:49:45 AM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <script language="javascript" type="text/javascript" src="js/jquery-1.9.1.js"></script>
        <script language="javascript" type="text/javascript" src="js/jquery.validate.min.js"></script>
        <link type="text/css" rel="stylesheet"  href="bootstrap/css/bootstrap.css">           
        <script  src="bootstrap/js/bootstrap-tabs.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <div class="tabbable">
                           <!--<li id="IncidentDetailsTab" class="active"><a href="#IncidentDetails" data-toggle="tab"> Enter Incident Details</a> </li>
 <ul class="nav nav-tabs " data-tabs="tabs">
                <li id="CallDetailsTab"><a href="#CallDetails" data-toggle="tab">Enter Call Details</a></li>   
            </ul>                <li id="DispatchVehicleTab"><a href="#DispatchVehicle" data-toggle="tab">Dispatch Vehicle</a></li> -->

            <div class="tab-content" >
                <div id="IncidentDetails" class="tab-pane active">  
                    <jsp:include page="IncidentDetailsContent.jsp" />
                </div>

                <div id="CallDetails" class="tab-pane "> 

                    <jsp:include page="CallDetailsContent.jsp" />
                </div> 

                <div id="DispatchVehicle" class="tab-pane "> 
                    <jsp:include page="DispatchVehicleContent.jsp" />
                </div> 
            </div>

        </div>
    </body>
</html>
