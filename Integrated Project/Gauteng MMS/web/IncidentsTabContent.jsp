<!--
To change this template, choose Tools | Templates
and open the template in the editor.
-->
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
            <ul class="nav nav-tabs " data-tabs="tabs">
                <li id ="OpenIncidentsTab" class="active"><a href="#OpenIncidents" data-toggle="tab">Open Incidents</a> </li>
                <li id="LogIncidentTab"><a href="#LogIncident" data-toggle="tab">Log Incident</a></li> 
                <li id="EditIncidentTab"><a href="#EditIncident" data-toggle="tab">Edit Incident</a></li> 
            </ul>
            <div class="tab-content" >
                <div id="OpenIncidents" class="tab-pane active" name="openincidents">  
                    <jsp:include page="OpenIncidentContent.jsp" />                            
                </div>
                <div id="LogIncident" class="tab-pane" name="logincident"> 
                    <jsp:include page="LogIncidentTabContent.jsp" />
                </div> 
                <div id="EditIncident" class="tab-pane" name="editincident"> 
                   <jsp:include page="EditIncidentTabContent.jsp" />
                </div> 
            </div>

        </div>
        
    </body>
</html>
