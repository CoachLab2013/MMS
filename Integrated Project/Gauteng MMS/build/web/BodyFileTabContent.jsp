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
        <%--        <link type="text/css" rel="stylesheet"  href="CSS files/datetimepicker.css">   
         <script type="text/javascript" src="bootstrap/js/bootstrap-datetimepicker.js" charset="UTF-8"></script>
          <script type="text/javascript" src="bootstrap/js/bootstrap-datetimepicker.min.js" charset="UTF-8"></script>

        --%>
        <link type="text/css" rel="stylesheet"  href="bootstrap/css/bootstrap.css">
        <link type="text/css" rel="stylesheet"  href="bootstrap/css/bootstrap-datetimepicker.min.css">
        <script type="text/javascript"  src="js/jquery-1.9.1.js" charset="UTF-8"></script>
        <script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="bootstrap/js/bootstrap-datetimepicker.min.js" charset="UTF-8"></script>
        <script  src="bootstrap/js/bootstrap-tabs.js"></script>
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
                <li id="tabOpenBodyFiles" class="active"><a href="#OpenBodyFiles" data-toggle="tab">Open Body Files</a> </li>
                <li id="tabNewBodyFiles"><a href="#NewBodyFiles" data-toggle="tab">New Body File</a></li>   
                <li id="tabEditBodyFiles"><a href="#EditBodyFiles" data-toggle="tab">Edit Body Files</a></li>
                <li id="tabLinkBodyFiles"><a href="#LinkBodyFiles" data-toggle="tab">Link Body Files</a></li> 
            </ul>
            <div class="tab-content">
                <div id="OpenBodyFiles" class="tab-pane active">
                    <jsp:include page="OpenBodyFileContent.jsp"/>
                </div>

                <div id="NewBodyFiles" class="tab-pane ">
                    <%--new body file content --%>
                    <form name="AddBody" id="AddBody" method="post" action="AddBodyFile">  
                        <div>
                            <div align="center"><h2>New Body File </h2> </div>
                            <div class="offset1  span8 form-horizontal"  >

                                <div class="control-group">
                                    <label class="control-label" for="inncidentNum">Incident Number</label> 
                                    <div class="controls"> <%
                                                            Tools t = new Tools();
                                                            out.print(t.makeReferenceList("Incident", "incidentLogNumber", ""));
                                                            %>
                                    </div>
                                </div> 


                                <div class="control-group">
                                    <label class="control-label" for="deathRegister">Death Register Number</label> 
                                    <div class="controls">
                                        <input type="text" name="deathRegister" id="deathRegister"/> 
                                    </div>
                                </div> 

                                <div class="tabbable">
                                    <ul class="nav nav-tabs " data-tabs="tabs">
                                        <li id="scene" class="active"><a href="#atScene" data-toggle="tab">Receive body from scene</a> </li>
                                        <li id="mortuary"><a href="#atMortuary" data-toggle="tab">Receive body at mortuary</a></li>   

                                    </ul>
                                    <div class="tab-content" >
<<<<<<< HEAD
=======
                                        <div id="atScene" class="tab-pane active"> 
                                            <div align="center"><h2>Receive body from scene</h2> </div>
                                            <fieldset class="fieldset">
                                                <legend class="legend"><h4>Body received from:</h4></legend>
                                                <div class="control-group">
                                                    <label class="control-label" for="receivedBodyFromName">Name</label> 
                                                    <div class="controls">
                                                        <input type="text" name="receivedBodyFromName" id="receivedBodyFromName"/> 
                                                    </div>
                                                </div>
                                                <div class="control-group">
                                                    <label class="control-label" for="receivedBodyFromSurname">Surname</label>
                                                    <div class="controls">
                                                        <input type="text" name="receivedBodyFromSurname" id="receivedFromBodySurname"/> 
                                                    </div>
                                                </div>
                                                <div class="control-group">
                                                    <label class="control-label" for="organisation">Institution</label> 
                                                    <div class="controls"><%
                                                            out.print(t.makeReferenceList("Institution", "type", ""));
                                                            %>
                                                            <%--<select id="organisation" name="organisation">                         
                                                            <option value=""> 
                                                            <% out.println(String.valueOf("-Please Select-"));%></option>

                                                            <%
                                                                for (int i = 0; i < institutionList.size(); i++) {
                                                            %>
                                                            <option><% out.print(institutionList.get(i));%> </option>

                                                            <%
                                                                }
%> --%>



                                                        </select>
                                                    </div>
                                                </div> 

                                            </fieldset>

                                            <fieldset class="fieldset">
                                                <legend class="legend"><h4>SAPS member handing over the body:</h4></legend>
                                                <div class="control-group error">
                                                    <label class="control-label" for="SAPSmemberBodyName">Name</label> 
                                                    <div class="controls">
                                                        <input type="text" name="SAPSmemberBodyName" id="SAPSmemberBodyName"/> 
                                                    </div>
                                                </div>
                                                <div class="control-group error">
                                                    <label class="control-label" for="SAPSmemberBodySurname">Surname</label>
                                                    <div class="controls">
                                                        <input type="text" name="SAPSmemberBodySurname" id="SAPSmemberBodySurname"/> 
                                                    </div>
                                                </div>
                                                <div class="control-group error">
                                                    <label class="control-label" for="SAPSmemberBodyCell">Cell phone number</label>
                                                    <div class="controls">
                                                        <input type="text" name="SAPSmemberBodyCell" id="SAPSmemberBodyCell"/> 
                                                    </div>
                                                </div>

                                                <div class="control-group error">
                                                    <label class="control-label" for="SAPSmemberBodyRank">Rank</label>
                                                    <div class="controls">
                                                        <input type="text" name="SAPSmemberBodyRank" id="SAPSmemberBodyRank"/> 
                                                    </div>
                                                </div>

                                            </fieldset>

                                            <fieldset class="fieldset">
                                                <legend class="legend"><h4>FPS member receiving body:</h4></legend>
                                                <div class="control-group">
                                                    <label class="control-label" for="FPSmemberBodyName">Name</label> 
                                                    <div class="controls">
                                                        <input type="text" name="FPSmemberBodyName" id="FPSmemberBodyName"/> 
                                                    </div>
                                                </div>
                                                <div class="control-group">
                                                    <label class="control-label" for="FPSmemberBodySurname">Surname</label>
                                                    <div class="controls">
                                                        <input type="text" name="FPSmemberBodySurname" id="FPSmemberBodySurname"/> 
                                                    </div>
                                                </div>
                                                <div class="control-group">
                                                    <label class="control-label" for="FPSmemberBodyPersal">Persal number</label>
                                                    <div class="controls">
                                                        <input type="text" name="FPSmemberBodyPersal" id="FPSmemberBodyPersal"/> 
                                                    </div>
                                                </div>

                                                <div class="control-group">
                                                    <label class="control-label" for="FPSmemberBodyCell">Cell phone number</label>
                                                    <div class="controls">
                                                        <input type="text" name="FPSmemberBodyCell" id="FPSmemberBodyCell"/> 
                                                    </div>
                                                </div>
                                                <div class="control-group">
                                                    <label class="control-label" for="FPSmemberBodyRank">Rank</label>
                                                    <div class="controls">
                                                        <input type="text" name="FPSmemberBodyRank" id="FPSmemberBodyRank"/> 
                                                    </div>
                                                </div>

                                            </fieldset>

                                            <fieldset class="fieldset">
                                                <legend class="legend"><h4>Pathologist at scene:</h4></legend>

                                                <div class="control-group">
                                                    <label class="control-label" for="pathologistAtScene">Was pathologist at scene</label> 
                                                    <div class="controls">
                                                        <select id="pathologistAtScene" name="pathologistAtScene">                            
                                                            <option>No</option>
                                                            <option>Yes</option>
                                                        </select>
                                                    </div>
                                                </div> 
                                                <div class="control-group">
                                                    <label class="control-label" for="pathologistBodyName">Name</label> 
                                                    <div class="controls">
                                                        <input type="text" name="pathologistBodyName" id="pathologistBodyName"/> 
                                                    </div>
                                                </div>
                                                <div class="control-group">
                                                    <label class="control-label" for="pathologistBodySurname">Surname</label>
                                                    <div class="controls">
                                                        <input type="text" name="pathologistBodySurname" id="pathologistBodySurname"/> 
                                                    </div>
                                                </div>


                                                <div class="control-group">
                                                    <label class="control-label" for="pathologistBodyRank">Rank</label>
                                                    <div class="controls">
                                                        <input type="text" name="pathologistBodyRank" id="pathologistBodyRank"/> 
                                                    </div>
                                                </div>

                                            </fieldset>

                                            <fieldset class="fieldset">
                                                <legend class="legend"><h4>Body details:</h4></legend>

                                                <div class="control-group">
                                                    <label class="control-label">Body Classification</label> 
                                                    <div class="controls"><%
                                                            out.print(t.makeReferenceList("BodyPart", "type", ""));
                                                            %>
                                                        <%--<select id="BodyClass" name="BodyClass">                            
                                                            <option>Head</option>
                                                            <option>Eye</option>
                                                            <option>Body</option>
                                                        </select>--%>
                                                    </div>
                                                </div> 

                                                <div class="control-group">
                                                    <label class="control-label" for="atSceneBodyName">Name</label> 
                                                    <div class="controls">
                                                        <input type="text" name="atSceneBodyName" id="atSceneBodyName"/> 
                                                    </div>



                                                </div>
                                                <div class="control-group">
                                                    <label class="control-label" for="atSceneBodySurname">Surname</label>
                                                    <div class="controls">
                                                        <input type="text" name="atSceneBodySurname" id="atSceneBodySurname"/> 
                                                    </div>
                                                </div>


                                                <div class="control-group">
                                                    <label class="control-label" for="atSceneBodyID">ID number</label>
                                                    <div class="controls">
                                                        <input type="text" name="atSceneBodyID" id="atSceneBodyID"/> 
                                                    </div>
                                                </div>
                                                <%-- ADDING BODY ADDRESS TABS --%> 
                                               <div class="control-group">
                                                    <label class="control-label" for="atSceneBodyAddressBuilding">Building</label>
                                                    <div class="controls">
                                                        <input type="text" name="atSceneBodyAddressBuilding" id="atSceneBodyAddressBuilding"/> 
                                                    </div>
                                                </div>
                                               <div class="control-group">
                                                    <label class="control-label" for="atSceneBodyAddressStreet">Street</label>
                                                    <div class="controls">
                                                        <input type="text" name="atSceneBodyAddressStreet" id="atSceneBodyAddressStreet"/> 
                                                    </div>
                                                </div>
                                               
                                               <div class="control-group">
                                                    <label class="control-label" for="atSceneBodyAddressSuburb">Suburb</label>
                                                    <div class="controls">
                                                        <input type="text" name="atSceneBodyAddressSuburb" id="atSceneBodyAddressSuburb"/> 
                                                    </div>
                                                </div>
                                               
                                               <div class="control-group">
                                                    <label class="control-label" for="atSceneBodyAddressCity">City</label>
                                                    <div class="controls">
                                                        <input type="text" name="atSceneBodyAddressCity" id="atSceneBodyAddressCity"/> 
                                                    </div>
                                                </div>
                                               
                                               <div class="control-group">
                                                    <label class="control-label" for="atSceneBodyAddressPostalCode">Postal Code</label>
                                                    <div class="controls">
                                                        <input type="text" name="atSceneBodyAddressPostalCode" id="atSceneBodyAddressPostalCode"/> 
                                                    </div>
                                                </div>
                                               
                                               <div class="control-group">
                                                    <label class="control-label" for="atSceneBodyAddressProvince">Province</label>
                                                    <div class="controls">
                                                        <input type="text" name="atSceneBodyAddressProvince" id="atSceneBodyAddressProvince"/> 
                                                    </div>
                                                </div>
                                               
                                               <div class="control-group">
                                                    <label class="control-label" for="atSceneBodyAddressRegion">Region</label>
                                                    <div class="controls">
                                                        <input type="text" name="atSceneBodyAddressRegion" id="atSceneBodyAddressRegion"/> 
                                                    </div>
                                                </div>
                                               
                                               
                                               <%--
                                                <div class="control-group">
                                                    <label class="control-label" for="atSceneBodyAddress">Address</label>
                                                    <div class="controls">

                                                        <textarea cols="50" rows="3" id="atSceneBodyAddress" name="atSceneBodyAddress"> </textarea>

                                                    </div>
                                                </div> --%>

                                                <div class="control-group">
                                                    <label class="control-label">Race</label> 
                                                    <div class="controls"><%
                                                            out.print(t.makeReferenceList("Race", "type", ""));
                                                            %>                      
                                                            <%--<select id="Brace" name="Brace"><option value=""> <% out.println(String.valueOf("-Please Select-"));%></option>
                                                            <%
                                                                for (int i = 0; i < raceList.size(); i++) {
                                                            %>
                                                            <option><% out.print(raceList.get(i));%> </option>

                                                            <%
                                                                }
                                                            %> --%>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="control-group">
                                                    <label class="control-label">Gender</label> 
                                                    <div class="controls"><%
                                                            out.print(t.makeReferenceList("Gender", "type", ""));
                                                            %>
                                                        <%--<select id="Bgender" name="Bgender">                            
                                                            <option value=""> <% out.println(String.valueOf("-Please Select-"));%></option>
                                                            <%
                                                                for (int i = 0; i < genderList.size(); i++) {
                                                            %>
                                                            <option><% out.print(genderList.get(i));%> </option>

                                                            <%
                                                                }
                                                            %> --%>

                                                        </select>
                                                    </div>
                                                </div>

                                                <div class="control-group">
                                                    <label class="control-label" for="atSceneBodyEstAge">Age estimate</label>
                                                    <div class="controls">
                                                        <input type="text" name="atSceneBodyEstAge" id="atSceneBodyEstAge"/> 
                                                    </div>
                                                </div>

                                            </fieldset>

                                            <fieldset class="fieldset">     
                                                <legend class="legend"><h4>Date and time body found:</h4></legend>

                                                <div class="control-group error">
                                                    <label class="control-label" for="bodyFoundDate">Date</label> 

                                                    <div class="input-append date " id="datepicker" name="bodyFoundDate" >

                                                        <input size="16" id="bodyFoundDate" name="bodyFoundDate" data-format="yyyy-MM-dd" type="text" value="" readonly>
                                                        <span class="add-on"><i class="icon-calendar"></i></span> 

                                                    </div>
                                                </div>

                                                <div class="control-group error">
                                                    <label class="control-label" for="bodyFoundTime">Time  </label> 

                                                    <div class="input-append date " id="timepicker" name="bodyFoundTime" >

                                                        <input size="16" id="bodyFoundTime" name="bodyFoundTime" data-format="hh:mm" type="text" value="" readonly>
                                                        <span class="add-on"><i class="icon-time"></i></span> 

                                                    </div>
                                                </div>


                                            </fieldset>

                                            <fieldset class="fieldset">     
                                                <legend class="legend"><h4>Alleged date and time of injury:</h4></legend>

                                                <div class="control-group">
                                                    <label class="control-label" for="allegedInjuryDate">Date</label> 

                                                    <div class="input-append date " id="datepicker2" name="allegedInjuryDate" >

                                                        <input size="16" id="inAllegedInjuryDate" name="inAllegedInjuryDate" data-format="yyyy-MM-dd" type="text" value="" readonly>
                                                        <span class="add-on"><i class="icon-calendar"></i></span> 

                                                    </div>
                                                </div>

                                                <div class="control-group">
                                                    <label class="control-label" for="allegedInjuryTime">Time</label> 

                                                    <div class="input-append date " id="timepicker2" name="allegedInjuryTime">

                                                        <input size="16" id="inAllegedInjuryTime" name="inAllegedInjuryTime" data-format="hh:mm" type="text" value="" readonly>
                                                        <span class="add-on"><i class="icon-time"></i></span> 

                                                    </div>
                                                </div>

                                            </fieldset>
                                            <fieldset class="fieldset">     
                                                <legend class="legend"><h4>Alleged date and time of death:</h4></legend>

                                                <div class="control-group">
                                                    <label class="control-label" for="allegedDeathDate">Date</label> 

                                                    <div class="input-append date " id="datepicker3" name="allegedDeathDate" >

                                                        <input size="16" id="inAllegedDeathDate" name="inAllegedDeathDate" data-format="yyyy-MM-dd" type="text" value="" readonly>
                                                        <span class="add-on"><i class="icon-calendar"></i></span> 

                                                    </div>
                                                </div>

                                                <div class="control-group">
                                                    <label class="control-label" for="allegedDeathtime">Time  </label> 

                                                    <div class="input-append date " id="timepicker3" name="allegedDeathtime" >

                                                        <input size="16" id="inAllegedDeathTime" name="inAllegedDeathTime" data-format="hh:mm" type="text" value="" readonly>
                                                        <span class="add-on"><i class="icon-time"></i></span> 

                                                    </div>
                                                </div>

                                            </fieldset>

                                            <fieldset class="fieldset">     
                                                <legend class="legend"><h4>Date and time of FPS receiving the body at scene:</h4></legend>

                                                <div class="control-group error">
                                                    <label class="control-label" for="FPSbodyReceiveSceneDate">Date  </label> 

                                                    <div class="input-append date " id="datepicker4" name="FPSbodyReceiveSceneDate" >

                                                        <input size="16" id="ReceivedSceneDate" name="ReceivedSceneDate" data-format="yyyy-MM-dd" type="text" value="" readonly>
                                                               <span class="add-on"><i class="icon-calendar"></i></span> 

                                                    </div>
                                                </div>

                                                <div class="control-group error">
                                                    <label class="control-label" for="FPSbodyReceiveSceneTime">Time  </label> 

                                                    <div class="input-append date " id="timepicker4" name="FPSbodyReceiveSceneTime" >

                                                        <input size="16"  id="ReceivedSceneTime" name="ReceivedSceneTime" data-format="hh:mm" type="text" value="" readonly>
                                                        <span class="add-on"><i class="icon-time"></i></span> 

                                                    </div>
                                                </div>

                                            </fieldset>

                                            <fieldset class="fieldset">     
                                                <legend class="legend"><h4>Date and time of FPS receiving the body at facility:</h4></legend>

                                                <div class="control-group error">
                                                    <label class="control-label" for="FPSbodyReceiveFacilitydate">Date  </label> 

                                                    <div class="input-append date " id="datepicker5" name="FPSbodyReceiveFacilityDate" >

                                                        <input size="16" id="ReceivedFDate" name="ReceivedFacilityDate" data-format="yyyy-MM-dd" type="text" value="" readonly>
                                                        <span class="add-on"><i class="icon-calendar"></i></span> 

                                                    </div>
                                                </div>

                                                <div class="control-group error">
                                                    <label class="control-label" for="FPSbodyReceiveFacilityTime">Time  </label> 

                                                    <div class="input-append date " id="timepicker5" name="FPSbodyReceiveFacilityTime" >

                                                        <input size="16" id="ReceivedFTime" name="ReceivedFacilityTime"  data-format="hh:mm" type="text" value="" readonly>
                                                        <span class="add-on"><i class="icon-time"></i></span> 
>>>>>>> origin/master

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

                    </form>
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
