<%-- 
    Document   : test
    Created on : 12 Apr 2013, 2:19:19 AM
    Author     : Sandile
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.4/jquery.min.js"></script>
        <link type="text/css" rel="stylesheet"  href="bootstrap/css/bootstrap.css">           
        <script  src="bootstrap/js/bootstrap-tabs.js"></script>
 
        <title>Gauteng Mortuary Management System</title>
    </head>
    <body>
      
        <%-- <p>Welcome MR Pathologist <span>Logout</span></p>--%>
        <p>
             
  <span style="float: left">Welcome Mr Pathologist </span>
  <span style="float: right">Logout  .</span>
        </p>
        <div align="center"><h1> <img src="Images/logo.jpg" width="75" height="75"> Gauteng Mortuary Management System</h1></div>
         <div class="tabbable">
            <ul class="nav nav-tabs " data-tabs="tabs">
                <li class="active"><a href="#Incident" data-toggle="tab">Incidents</a> </li>
                <li><a href="#BodyFile" data-toggle="tab">Body File</a></li>       
            </ul>
            <div class="tab-content" >
                <div id="Incident" class="tab-pane active">  
                    <div align="center"><h2>Incidents </h2> </div>
                        <div class="tabbable">
                            <ul class="nav nav-tabs " data-tabs="tabs">
                                <li class="active"><a href="#Open Incidents" data-toggle="tab">Open Incidents</a> </li>
                                <li><a href="#Log Incident" data-toggle="tab">Log Incident</a></li>    
                                <li><a href="#Edit Incident" data-toggle="tab">Edit Incident</a></li>
                            </ul>
                            <div class="tab-content" >
                                <div id="Open Incidents" class="tab-pane active">  
                                    <div align="center"><h3>Open Incidents </h3> </div>
                                 </div>
                                <div id="Log Incident" class="tab-pane "> 
                                    <div align="center"><h3>Log Incident </h3> </div>
                                </div>   
                                <div id="Edit Incident" class="tab-pane "> 
                                    <div align="center"><h3>Edit Incident </h3> </div>
                                </div> 
                            </div>
                    </div>
                                          
                </div>
                <div id="BodyFile" class="tab-pane "> 
                    <div align="center"><h2>Body File </h2> </div>
                    
                </div>           
            </div>

        </div>
 
    </body>
</html>
