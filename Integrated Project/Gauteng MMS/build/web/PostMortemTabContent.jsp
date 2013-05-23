<%-- 
    Document   : PostMortemTabContent
    Created on : 22 Apr 2013, 10:53:26 AM
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
                <li class="active"><a href="#RegisterForensicSample" data-toggle="tab">Register Forensic Sample</a> </li>
                <li><a href="#RequestForensicSample" data-toggle="tab">Request Forensic Sample</a></li>   
                <li><a href="#RegisteredSamples" data-toggle="tab">Registered Samples</a></li>
                <li><a href="#LabRecords" data-toggle="tab">Lab Records</a></li>
                <li><a href="#Property" data-toggle="tab">Property</a></li>
                <li><a href="#PostMortemFindings" data-toggle="tab">Post Mortem Findings</a></li>
            </ul>
            <div class="tab-content" >
                <div id="RegisterForensicSample" class="tab-pane active"> 
                    <jsp:include page="RegisterForensicSampleContent.jsp" />
                </div>
                
                <div id="RequestForensicSample" class="tab-pane ">
                    <jsp:include page="RequestForensicSampleContent.jsp" />
                </div>   
                
                <div id="RegisteredSamples" class="tab-pane ">
                    <h1>Hello3</h1>
                </div>
                
                <div id="LabRecords" class="tab-pane ">
                    <jsp:include page="LabRecordContent.jsp" />
                </div>
                
                <div id="Property" class="tab-pane ">
                    <jsp:include page="PropertyContent.jsp" />
                </div>
                
                <div id="PostMortemFindings" class="tab-pane ">
                    <jsp:include page="PostMortemFindingsContent.jsp" />
                </div>
                
                </div>
            </div>

       </body>
</html>