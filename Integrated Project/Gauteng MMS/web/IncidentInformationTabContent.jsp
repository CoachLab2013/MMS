<%-- 
    Document   : IncidentInformationTabContent
    Created on : 12 Jun 2013, 11:51:14 AM
    Author     : Lady
--%>

<%@page import="servlets.Tools"%>
<%@page import="database.ReferenceListDb"%>
<%@page import="database.Incident"%>
<%@page import="java.util.ArrayList"%>
<%@page import="AssistiveClasses.SetDbDetail"%>
<%@page import="database.IncidentDb"%>
<%@page import="servlets.AddBodyFile"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%-- <link type="text/css" rel="stylesheet"  href="CSS files/datetimepicker.css">   
         <script type="text/javascript" src="bootstrap/js/bootstrap-datetimepicker.js" charset="UTF-8"></script>
          <script type="text/javascript" src="bootstrap/js/bootstrap-datetimepicker.min.js" charset="UTF-8"></script>

        --%>
        <link type="text/css" rel="stylesheet"  href="bootstrap/css/bootstrap.css">
        <link type="text/css" rel="stylesheet"  href="bootstrap/css/bootstrap-datetimepicker.min.css">
        <script type="text/javascript"  src="js/jquery-1.9.1.js" charset="UTF-8"></script>
        <script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="bootstrap/js/bootstrap-datetimepicker.min.js" charset="UTF-8"></script>
        <script  src="bootstrap/js/bootstrap-tabs.js"></script>
        <script type="text/javascript" src="js/editBodyFile.js"></script>
        <%--  <script src="js/script.js"></script>   --%>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
                <div id="EditBodyFiles" class="tab-pane  ">
                    <%--new body file content --%>

                  <form name="EditBody" id="EditBody" method="post" action="#">  
                        <legend> Body File </legend>
                        <div class="offset1  span8 form-horizontal"  >

                            <div class="control-group">
                                <label class="control-label" for="open_incident_list">Incident Number</label> 
                                <div class="controls"> <%
                                    Tools t = new Tools();
                                    if(session.getAttribute("bIdIncidentLog")!=null){
                                        out.println(t.getOPenIncidentList("open_incident_list", session.getAttribute("bIdIncidentLog").toString()));
                                    }else{
                                        out.print(t.getOPenIncidentList("open_incident_list", ""));
                                    }
                                    
                                    %>
                                </div>
                                <br>
                                <label class="control-label" for="deathRegister">Death Register Number</label> 
                                <div class="controls">
                                    <input type="text" name="deathRegister" id="deathRegister" readonly="true" value =<% 
                                    if(session.getAttribute("death_register_number")!=null){
                                        out.println(session.getAttribute("death_register_number"));
                                    }
                                    %> /> 
                                </div>
                                <br>
                                <div class="offset2">
                                    <input class="btn" type="submit" name="edit_continue_new_body_file" id="edit_continue_new_body_file" value="Continue"/> 
                                </div>
                            </div> 
                        </div>
</form> 

                   <div class="offset1  span8 form-horizontal" style="display: none;" id="edit_recieve_tabs">
                        <div class="tabbable">
                            <ul class="nav nav-tabs " data-tabs="tabs">
                                <li id="edit_scene" class="active"><a href="#edit_atScene" data-toggle="tab">Receive body from scene</a> </li>
                                <li id="edit_mortuary"><a href="#edit_atMortuary" data-toggle="tab">Receive body at mortuary</a></li>   

                            </ul>


                            <div class="tab-content" >

                                <div id="edit_atScene" class="tab-pane active"> 
                                     <jsp:include page="EditRecieveBodyAtScene.jsp" /> 
                                </div>
                                <div id="edit_atMortuary" class="tab-pane "> 
                                   <jsp:include page="EditRecieveBodyAtMortuary.jsp" /> 
                                </div>   

                            </div>
                        </div> 
                    </div>
                </div>
    </body>
</html>
