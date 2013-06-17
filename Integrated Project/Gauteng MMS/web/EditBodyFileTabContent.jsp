<%-- 
    Document   : EditBodyFileTabContent
    Created on : 22 Apr 2013, 10:23:17 AM
    Author     : Lady
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
            <ul class="nav nav-tabs " data-tabs="tabs">
                <li id="tabIncidentInformation"  class="active"><a href="#IncidentInformation" data-toggle="tab">Incident Information</a> </li>
                <li id="tabBodyIdentification"><a href="#BodyIdentification" data-toggle="tab">Body Identification</a></li>   
                <li id="tabPostMortem"><a href="#PostMortem" data-toggle="tab">Post Mortem</a></li>
                <li id="tabReleaseBody"><a href="#ReleaseBody" data-toggle="tab">Release Body</a></li>
            </ul>
            
            <div class="tab-content" >
                <div id="IncidentInformation" class="tab-pane active">
                   <jsp:include page="IncidentInformationTabContent.jsp"/>
                </div>
                
                <div id="BodyIdentification" class="tab-pane ">
                    <jsp:include page="BodyIdentificationTabContent.jsp"/>
                </div> 
                
                <div id="PostMortem" class="tab-pane ">
                    <jsp:include page="PostMortemTabContent.jsp"/>
                </div> 
                
                <div id="ReleaseBody" class="tab-pane "> 
                     <jsp:include page="ReleaseBodyContent.jsp"/>
                </div> 
                
            </div>
        </div>               
    </body>
</html>
