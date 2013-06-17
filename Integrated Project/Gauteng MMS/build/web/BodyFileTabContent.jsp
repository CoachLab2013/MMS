<%-- 
    Document   : newjsp
    Created on : 22 Apr 2013, 9:57:47 AM
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

        <script type="text/javascript" src="js/addBodyFile.js"></script>
        <%--  <script src="js/script.js"></script>   --%>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>


    <body>

        <%--
            SetDbDetail dbset = new SetDbDetail();
            IncidentDb incidents = new IncidentDb(dbset.getDbdetail());
            incidents.init();
            ArrayList<Incident> incidentsList = incidents.incidentList();

            ReferenceListDb emp = new ReferenceListDb("institution", "e", "type", "e", dbset.getDbdetail());
            emp.init();
            ArrayList<String> institutionList = emp.referenceList();
            //For gender list box
            emp = new ReferenceListDb("gender", "e", "type", "e", dbset.getDbdetail());
            emp.init();
            ArrayList<String> genderList = emp.referenceList();

            //For race list box
            emp = new ReferenceListDb("race", "e", "type", "e", dbset.getDbdetail());
            emp.init();
            ArrayList<String> raceList = emp.referenceList();
 
        --%>
        <div class="tabbable">
            <ul class="nav nav-tabs " data-tabs="tabs">
                <li id="tabOpenBodyFiles" class="active" ><a href="#OpenBodyFiles" data-toggle="tab">Open Body Files</a> </li>
                <li id="tabNewBodyFiles" ><a href="#NewBodyFiles" data-toggle="tab">New Body File</a></li>   
                <li id="tabEditBodyFiles"><a href="#EditBodyFiles" data-toggle="tab">Edit Body Files</a></li>
                <li id="tabLinkBodyFiles"><a href="#LinkBodyFiles" data-toggle="tab">Link Body Files</a></li> 
            </ul>
            <div class="tab-content">
                <div id="OpenBodyFiles" class="tab-pane active">   
                    <jsp:include page="OpenBodyFileContent.jsp" />
                </div>

                <div id="NewBodyFiles" class="tab-pane  ">
                    <%--new body file content --%>

                  <form name="AddBody" id="AddBody" method="post" action="">  
                        <legend>New Body File </legend>
                        <div class="offset1  span8 form-horizontal"  >

                            <div class="control-group">
                                <label class="control-label" for="open_incident_list">Incident Number:</label> 
                                <div class="controls"> <%
                                    Tools t = new Tools();
                                    out.print(t.getOPenIncidentList("open_incident_list", ""));
                                    %>
                                </div>
                                <br>
                                <label class="control-label" for="deathRegister">Death Register Number:</label> 
                                <div class="controls">
                                    <input type="text" name="deathRegister" id="deathRegister" readonly="true" value =<% out.println(t.makeDeathRegisterNumber());%>/> 
                                </div>
                                <br>
                                <div class="offset2">
                                    <input class="btn" type="submit" name="continue_new_body_file" id="continue_new_body_file" value="Continue"/> 
                                </div>
                            </div> 
                        </div>
</form> 

                   <div class="offset1  span8 form-horizontal" style="display: none;" id="recieve_tabs">
                        <div class="tabbable">
                            <ul class="nav nav-tabs " data-tabs="tabs">
                                <li id="scene" class="active"><a href="#atScene" data-toggle="tab">Receive body from scene</a> </li>
                                <li id="mortuary"><a href="#atMortuary" data-toggle="tab">Receive body at mortuary</a></li>   

                            </ul>


                            <div class="tab-content" >

                                <div id="atScene" class="tab-pane active"> 
                                    <jsp:include page="RecieveBodyAtScene.jsp" />
                                </div>
                                <div id="atMortuary" class="tab-pane "> 
                                    <jsp:include page="RecieveBodyAtMortuary.jsp" />
                                </div>   

                            </div>
                        </div> 
                    </div>
                </div>

                <div id="EditBodyFiles" class="tab-pane "> 
                 <jsp:include page="EditBodyFileTabContent.jsp"/>
                </div>

                <div id="LinkBodyFiles" class="tab-pane ">
                    <jsp:include page="LinkBodyContent.jsp"/>
                </div>

            </div>
        </div>
    </body>

</html>
