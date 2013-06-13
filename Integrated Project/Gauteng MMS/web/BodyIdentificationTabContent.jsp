<%-- 
    Document   : BodyIdentificationTabContent
    Created on : 25 Apr 2013, 9:41:01 AM
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
                <li id ="tabKinInformantDetails" class="active"><a href="#KinInformantDetails" data-toggle="tab">Kin/Informant Details</a> </li>
                <li id ="tabDeceasedDetails"><a href="#DeceasedDetails" data-toggle="tab">Deceased Details</a></li>   
                <li id ="tabDeaceasedAddress"><a href="#DeaceasedAddress" data-toggle="tab">Deceased Address Details</a></li>
                <li id ="tabReleaseproperty"><a href="#Releaseproperty" data-toggle="tab">Release Property</a></li>
            </ul>
            <div class="tab-content" >
                <div id="KinInformantDetails" class="tab-pane active"> 
                    <jsp:include page="KinInformantDetailsContent.jsp"/>
                </div>
                
                <div id="DeceasedDetails" class="tab-pane ">
                    <jsp:include page="DeceasedDetailsContent.jsp"/>
                    <%-- <jsp:include page="test.jsp"/>--%>
                </div>   
                
                <div id="DeaceasedAddress" class="tab-pane ">
                    <jsp:include page="DeceasedAddressContent.jsp"/>
                </div>
                
                <div id="Releaseproperty" class="tab-pane ">
                   <jsp:include page="ReleasePropertyContent.jsp"/>
                </div>
        
            </div>
         </div>
       </body>
</html>
