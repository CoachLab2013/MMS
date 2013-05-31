<%-- 
    Document   : RecieveBodyAtScene
    Created on : May 28, 2013, 8:43:29 AM
    Author     : Asheen
--%>

<%@page import="servlets.Tools"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript" src="js/RecieveAtSceneScript.js"></script>       
    </head>
    <body>
                                            <div align="center"><h2>Receive body from scene</h2> </div>
                                            <form name="recieve_body_scene_form" id="recieve_body_scene_form" method="post" action="#">
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
                                                            Tools t = new Tools();
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
                                                <div class="control-group">
                                                    <label class="control-label" for="SAPSmemberBodyName">Name</label> 
                                                    <div class="controls">
                                                        <input type="text" name="SAPSmemberBodyName" id="SAPSmemberBodyName"/> 
                                                    </div>
                                                </div>
                                                <div class="control-group">
                                                    <label class="control-label" for="SAPSmemberBodySurname">Surname</label>
                                                    <div class="controls">
                                                        <input type="text" name="SAPSmemberBodySurname" id="SAPSmemberBodySurname"/> 
                                                    </div>
                                                </div>
                                                <div class="control-group">
                                                    <label class="control-label" for="SAPSmemberBodyCell">Cell phone number</label>
                                                    <div class="controls">
                                                        <input type="text" name="SAPSmemberBodyCell" id="SAPSmemberBodyCell"/> 
                                                    </div>
                                                </div>

                                                <div class="control-group">
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
                                               
                                               <div class="control-group">
                                                    <label class="control-label" for="atSceneBodyAddressMagisterialDistrict">Magisterial District</label>
                                                    <div class="controls">
                                                        <input type="text" name="atSceneBodyAddressMagisterialDistrict" id="atSceneBodyAddressMagisterialDistrict"/> 
                                                    </div>
                                                </div>


                                                        <%--<div class="control-group">
                                                    <label class="control-label" for="atSceneBodyAddress">Address</label>
                                                    <div class="controls">

                                                        <textarea cols="50" rows="3" id="atSceneBodyAddress" name="atSceneBodyAddress"> </textarea>

                                                    </div>
                                                </div>--%>

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

                                                    </div>
                                                </div>


                                            </fieldset>

                                            <fieldset class="fieldset">     
                                                <legend class="legend"><h4>Scene details:</h4></legend>
                                                <div class="control-group">
                                                    <label class="control-label" for="SceneType">Scene where incident occured:</label> 
                                                    <div class="controls"><%
                                                            out.print(t.makeReferenceList("SceneType", "type", ""));
                                                            %>
                                                        <%-- <select id="SceneO" name="SceneO">                            
                                                            <option>home</option>
                                                            <option>park</option>
                                                            <option>flat</option>
                                                        </select> --%>
                                                    </div>
                                                </div> 

                                                <div class="control-group">
                                                    <label class="control-label" for="DeathAddress">Place of death(Address)</label> 
                                                    <div class="controls">
                                                        <textarea cols="50" rows="3" id="DeathAddress" name="DeathAddress"> </textarea>
                                                    </div>
                                                </div>

                                                <div class="control-group">
                                                    <label class="control-label" for="ExternalCircumstance">External cause or circumstance of injury:</label> 
                                                    <div class="controls"><%
                                                            out.print(t.makeReferenceList("ExternalCircumstance", "type", ""));
                                                            %>
                                                        <%--<select id="Cause" name="Cause">                            
                                                            <option>Shot</option>
                                                            <option>Fell</option>
                                                            <option>Coding</option>
                                                        </select> --%>
                                                    </div>
                                                </div>

                                            </fieldset>

                                            <fieldset class="fieldset">     
                                                <legend class="legend"><h4>Property/Evidence:</h4></legend>

                                                <fieldset class="fieldset offset1">     
                                                    <legend class="legend"><h5>Taken/handed over by SAPS:</h5></legend>
                                                    <div class="control-group">
                                                        <label class="control-label" for="SAPSpropertyDescr">Description</label> 
                                                        <div class="controls">
                                                            <textarea cols="50" rows="3" id="SAPSpropertyDescr" name="SAPSpropertyDescr"> </textarea>
                                                        </div>
                                                    </div>

                                                    <div class="control-group">
                                                        <label class="control-label" for="SAPSpropertyName">SAPS member name:</label> 
                                                        <div class="controls">
                                                            <input type="text" name="SAPSpropertyName" id="SAPSpropertyName"/> 
                                                        </div>
                                                    </div>
                                                    <div class="control-group">
                                                        <label class="control-label" for="SAPSpropertySurname">SAPS member surname:</label> 
                                                        <div class="controls">
                                                            <input type="text" name="SAPSpropertySurname" id="SAPSpropertySurname"/> 
                                                        </div>
                                                    </div>

                                                    <div class="offset4">
                                                        <input   class="btn btn-primary" onclick="displayResult('SAPSpropertyTable', 'SAPSpropertyDescr', 'SAPSpropertyName', 'SAPSpropertySurname')" type="button" value="Add Item" /> 
                                                        <%--Display save result --%> 
                                                    </div>
                                                    <br/> <br/>
                                                    <table id="SAPSpropertyTable" border="1">
                                                        <tr>
                                                            <th width="60">select</th>
                                                            <th width="150">Description</th>
                                                            <th width="150">SAPS Name</th>
                                                            <th width="150">SAPS Surname</th>

                                                        </tr>

                                                    </table>
                                                    <br/>
                                                    <div class="offset5">
                                                        <input   class="btn btn-primary" onclick=" deleteRow('SAPSpropertyTable')" type="button" value="Delete" /> 
                                                        <%--Display save result --%> 
                                                    </div>

                                                    <script>
                                                            function displayResult(table, des, name, surname)
                                                            {
                                                                var table = document.getElementById(table);
                                                                var row = table.insertRow(1);

                                                                var cell0 = row.insertCell(0);
                                                                var cell1 = row.insertCell(1);
                                                                var cell2 = row.insertCell(2);
                                                                var cell3 = row.insertCell(3);

                                                                var element1 = document.createElement("input");
                                                                element1.type = "checkbox";
                                                                element1.name = "chkbox[]";
                                                                cell0.appendChild(element1);
                                                                cell1.innerHTML = document.getElementById(des).value;
                                                                cell2.innerHTML = document.getElementById(name).value;
                                                                cell3.innerHTML = document.getElementById(surname).value;
                                                            }
                                                            function move() {

                                                                //  if ($("#callform").valid()) {
                                                                $("#scene").removeClass("active");
                                                                $("#atScene").removeClass("tab-pane active");
                                                                $("#atMortuary").removeClass("tab-pane");

                                                                $("#atScene").addClass("tab-pane");
                                                                $("#atMortuary").addClass("tab-pane active");
                                                                $("#mortuary").addClass("active");


                                                                //Copy details to next tab
                                                                $("#BMname").val($("#Bname").val());
                                                                $("#BMid").val($("#Bid").val());
                                                                $("#BMage").val($("#Bage").val());
                                                                $("#BMaddress").val($("#Baddress").val());
                                                                $("#BMsurname").val($("#Bsurname").val());
                                                                /*       
                                                                 <div class="control-group">
                                                                 <label class="control-label" for="atMort">Body Classification</label> 
                                                                 <div class="controls">
                                                                 <select id="atMort" name="atMort">                            
                                                                 <option>Head</option>
                                                                 <option>Eye</option>
                                                                 <option>Body</option>
                                                                 </select>
                                                                 </div>
                                                                 </div> */




                                                                /*
                                                                 </div>
                                                                 <div class="control-group">
                                                                 <label class="control-label" for="BMsurname">Surname</label>
                                                                 <div class="controls">
                                                                 <input type="text" name="BMsurname" id="BMsurname"/> 
                                                                 </div>
                                                                 </div>
                                                                 */





                                                                /*
                                                                 <div class="control-group">
                                                                 <label class="control-label" for="BMrace">Race</label> 
                                                                 <div class="controls">
                                                                 <select id="BMrace" name="BMrace">                            
                                                                 <option>Black</option>
                                                                 
                                                                 </select>
                                                                 </div>
                                                                 </div>
                                                                 <div class="control-group">
                                                                 <label class="control-label" for="BMgender">Gender</label> 
                                                                 <div class="controls">
                                                                 <select id="BMgender" name="BMgender">                            
                                                                 <option>Male</option>
                                                                 
                                                                 </select>
                                                                 </div>
                                                                 </div>
                                                                 
                                                                 */



                                                                //    }

                                                            }
                                                            function deleteRow(tableID) {
                                                                try {
                                                                    var table = document.getElementById(tableID);
                                                                    var rowCount = table.rows.length;

                                                                    for (var i = 0; i < rowCount; i++) {
                                                                        var row = table.rows[i];
                                                                        var chkbox = row.cells[0].childNodes[0];
                                                                        if (null !== chkbox && true === chkbox.checked) {
                                                                            table.deleteRow(i);
                                                                            rowCount--;
                                                                            i--;
                                                                        }


                                                                    }
                                                                } catch (e) {
                                                                    alert(e);
                                                                }
                                                            }


                                                            $('#datepicker').datetimepicker({
                                                                pickTime: false,
                                                                autoclose: true
                                                            });

                                                            $('#timepicker').datetimepicker({
                                                                pickDate: false,
                                                                autoclose: true,
                                                                pickSeconds: false

                                                            });

                                                            $('#datepicker2').datetimepicker({
                                                                pickTime: false,
                                                                autoclose: true
                                                            });

                                                            $('#timepicker2').datetimepicker({
                                                                pickDate: false,
                                                                autoclose: true,
                                                                pickSeconds: false

                                                            });

                                                            $('#datepicker3').datetimepicker({
                                                                pickTime: false,
                                                                autoclose: true
                                                            });

                                                            $('#timepicker3').datetimepicker({
                                                                pickDate: false,
                                                                autoclose: true,
                                                                pickSeconds: false

                                                            });

                                                            $('#datepicker4').datetimepicker({
                                                                pickTime: false,
                                                                autoclose: true
                                                            });

                                                            $('#timepicker4').datetimepicker({
                                                                pickDate: false,
                                                                autoclose: true,
                                                                pickSeconds: false

                                                            });

                                                            $('#datepicker5').datetimepicker({
                                                                pickTime: false,
                                                                autoclose: true
                                                            });

                                                            $('#timepicker5').datetimepicker({
                                                                pickDate: false,
                                                                autoclose: true,
                                                                pickSeconds: false

                                                            });

                                                    </script>
                                                </fieldset>
                                                <br/> <br/>
                                                <fieldset class="fieldset offset1">     
                                                    <legend class="legend"><h5>Taken/handed over by FPS officer</h5></legend>
                                                    <div class="control-group">
                                                        <label class="control-label" for="atSceneFPSpropertyDescr">Description</label> 
                                                        <div class="controls">
                                                            <textarea cols="50" rows="3" id="atSceneFPSpropertyDescr" name="atSceneFPSpropertyDescr"> </textarea>
                                                        </div>
                                                    </div>

                                                    <div class="control-group">
                                                        <label class="control-label" for="atSceneFPSpropertyName">FPS member name:</label> 
                                                        <div class="controls">
                                                            <input type="text" name="atSceneFPSpropertyName" id="atSceneFPSpropertyName"/> 
                                                        </div>
                                                    </div>
                                                    <div class="control-group">
                                                        <label class="control-label" for="atSceneFPSpropertySurname">FPS member surname:</label> 
                                                        <div class="controls">
                                                            <input type="text" name="atSceneFPSpropertySurname" id="atSceneFPSpropertySurname"/> 
                                                        </div>
                                                    </div>

                                                    <div class="offset4">
                                                        <input   class="btn btn-primary" onclick="displayResult('atSceneFPSpropertyTable', 'atSceneFPSpropertyDescr', 'atSceneFPSpropertyName', 'atSceneFPSpropertySurname')" type="button" value="Add Item" /> 
                                                        <%--Display save result --%> 
                                                    </div>
                                                    <br/> <br/>
                                                    <table id="atSceneFPSpropertyTable" border="1">
                                                        <tr>
                                                            <th width="60">select</th>
                                                            <th width="150">Description</th>
                                                            <th width="150">FPS Name</th>
                                                            <th width="150">FPS Surname</th>
                                                        </tr>

                                                    </table>
                                                    <br/>
                                                    <div class="offset5">
                                                        <input    class="btn btn-primary" onclick=" deleteRow('atSceneFPSpropertyTable')" type="button" value="Delete" /> 
                                                        <%--Display save result --%> 
                                                    </div>
                                                    <br/><br/>
                                                </fieldset>

                                            </fieldset>

                                            <div class="offset5">
                                                <input  type="submit"  class="btn btn-primary" name="recieve_at_scene_save" id="recieve_at_scene_save"   value="Save" /> 
                                                <%--Display save result --%> 
                                            </div>
                                            </form>
    </body>         
</html>
