<%-- 
    Document   : EditRecieveBodyAtScene
    Created on : 12 Jun 2013, 11:34:15 AM
    Author     : Lady
--%>

<%@page import="servlets.Tools"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style type="text/css">
            label.error { 
                float: none; 
                color: red; 
                padding-left: .5em; 
                vertical-align: top; 
            }
        </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript" src="js/EditRecieveAtSceneScript.js"></script>
        <script type="text/javascript" src="js/jquery-ui-1.10.3.custom.min.js"></script>
        <script type="text/javascript" src="js/jquery-ui-timepicker.js"></script>
         <link type="text/css" rel="stylesheet"  href="bootstrap/css/tablecss.css"> 
        <link type="text/css" rel="stylesheet"  href="CSS files/jquery-ui-1.10.3.custom.css">
        <%-- http://jqueryui.com/themeroller/ --%>
    </head>
    <body>
        <%
        if(session.getAttribute("atScene") != null){
            out.println("<input id='checkscene'  type='text' value="+session.getAttribute("atScene")+" />");
            session.removeAttribute("atScene");
        }
     %>
    <legend class="legend"><h3>Receive body from scene</h3> </legend>
    
    
    <form name="edit_recieve_body_scene_form" id="edit_recieve_body_scene_form" method="post" action="#">
        <input type="hidden" name="edit_at_scene_deathregister" id="edit_at_scene_deathregister"/>
        <input type="hidden" name="edit_at_scene_lognmber" id="edit_at_scene_lognmber"/>
        <fieldset class="fieldset">
            <legend class="legend"><h4>Body received from:</h4></legend>
            <div class="control-group">
                <label class="control-label" for="edit_receivedBodyFromName">Name</label> 
                <div class="controls">
                    <input type="text" name="edit_receivedBodyFromName" id="edit_receivedBodyFromName"/> 
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="edit_receivedBodyFromSurname">Surname</label>
                <div class="controls">
                    <input type="text" name="edit_receivedBodyFromSurname" id="edit_receivedFromBodySurname"/> 
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="edit_organisation">Organization</label> 
                <div class="controls"><%
                    Tools t = new Tools();
                    out.print(t.makeReferenceList("organization", "name", ""));
                    %>
                    <%--<select id="edit_organisation" name="edit_organisation">                         
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
                <label class="control-label" for="edit_SAPSmemberBodyName">Name</label> 
                <div class="controls">
                    <input type="text" name="edit_SAPSmemberBodyName" id="edit_SAPSmemberBodyName"/> 
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="edit_SAPSmemberBodySurname">Surname</label>
                <div class="controls">
                    <input type="text" name="edit_SAPSmemberBodySurname" id="edit_SAPSmemberBodySurname"/> 
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="edit_SAPSmemberBodyCell">Cell phone number</label>
                <div class="controls">
                    <input type="text" name="edit_SAPSmemberBodyCell" id="edit_SAPSmemberBodyCell"/> 
                </div>
            </div>

            <div class="control-group">
                <label class="control-label" for="edit_SAPSmemberBodyRank">Rank</label>
                <div class="controls">
                    <% String list = t.makeReferenceList("rank", "type", "");
                        list = list.replaceFirst("name='rank'", "name='SAPSmemberBodyRank'");
                        list = list.replaceFirst("id='rank'", "id='SAPSmemberBodyRank'");
                        out.println(list);
                    %>
                </div>
            </div>

        </fieldset>

        <fieldset class="fieldset">
            <legend class="legend"><h4>FPS member receiving body:</h4></legend>
            <div class="control-group">
                <label class="control-label" for="edit_FPSmemberBodyName">Name</label> 
                <div class="controls">
                    <input type="text" name="edit_FPSmemberBodyName" id="edit_FPSmemberBodyName"/> 
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="edit_FPSmemberBodySurname">Surname</label>
                <div class="controls">
                    <input type="text" name="edit_FPSmemberBodySurname" id="edit_FPSmemberBodySurname"/> 
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="edit_FPSmemberBodyPersal">Persal number</label>
                <div class="controls">
                    <%
                    String persal = t.makeReferenceList("employee", "personnelNumber", "");
                    persal = persal.replaceAll("name='employee'", "name='FPSmemberBodyPersal'");
                    persal = persal.replaceAll("id='employee'", "id='FPSmemberBodyPersal'");
                    out.println(persal);
                    %>                    
                </div>
            </div>

            <div class="control-group">
                <label class="control-label" for="edit_FPSmemberBodyCell">Cell phone number</label>
                <div class="controls">
                    <input type="text" name="edit_FPSmemberBodyCell" id="edit_FPSmemberBodyCell"/> 
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="edit_FPSmemberBodyRank">Rank</label>
                <div class="controls">
                    <%
                        String list2 = t.makeReferenceList("rank", "type", "");
                        list2 = list2.replaceFirst("name='rank'", "name='FPSmemberBodyRank'");
                        list2 = list2.replaceFirst("id='rank'", "id='FPSmemberBodyRank'");
                        out.println(list2);
                    %>
                </div>
            </div>

        </fieldset>

        <fieldset class="fieldset">
            <legend class="legend"><h4>Pathologist at scene:</h4></legend>

            <div class="control-group">
                <label class="control-label" for="edit_pathologistAtScene">Was pathologist at scene</label> 
                <div class="controls">
                    <select id="edit_pathologistAtScene" name="edit_pathologistAtScene">                            
                        <option >No</option>
                        <option>Yes</option>
                    </select>
                </div>
            </div> 
            <div id="edit_pathologist_at_scene_details" style="display:none;">
                <div class="control-group">
                    <label class="control-label" for="edit_pathologistBodyName">Name</label> 
                    <div class="controls">
                        <input type="text" name="edit_pathologistBodyName" id="edit_pathologistBodyName"/> 
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label" for="edit_pathologistBodySurname">Surname</label>
                    <div class="controls">
                        <input type="text" name="edit_pathologistBodySurname" id="edit_pathologistBodySurname"/> 
                    </div>
                </div>


                <div class="control-group">
                    <label class="control-label" for="edit_pathologistBodyRank">Rank</label>
                    <div class="controls">
                        <%
                            String list3 = t.makeReferenceList("rank", "type", "");
                            list3 = list3.replaceFirst("name='rank'", "name='pathologistBodyRank'");
                            list3 = list3.replaceFirst("id='rank'", "id='pathologistBodyRank'");
                            out.println(list3);
                        %>
                    </div>
                </div>
            </div>
        </fieldset>

        <fieldset class="fieldset">
            <legend class="legend"><h4>Body details:</h4></legend>

            <div class="control-group">
                <label class="control-label">Body Classification</label> 
                <div class="controls"><%
                    out.print(t.makeReferenceList("bodypart", "type", ""));
                    %>
                    <%--<select id="edit_BodyClass" name="edit_BodyClass">                            
                        <option>Head</option>
                        <option>Eye</option>
                        <option>Body</option>
                    </select>--%>
                </div>
            </div> 

            <div class="control-group">
                <label class="control-label" for="edit_atSceneBodyName">Name</label> 
                <div class="controls">
                    <input type="text" name="edit_atSceneBodyName" id="edit_atSceneBodyName"/> 
                </div>



            </div>
            <div class="control-group">
                <label class="control-label" for="edit_atSceneBodySurname">Surname</label>
                <div class="controls">
                    <input type="text" name="edit_atSceneBodySurname" id="edit_atSceneBodySurname"/> 
                </div>
            </div>

            <div class="control-group">
                <label class="control-label" for="edit_recieve_at_scene_id_type">Identification type</label>


                <div class="controls">
                    <select id="edit_recieve_at_scene_id_type" name="edit_recieve_at_scene_id_type">
                        <option selected="selected">Select</option>
                        <option>ID</option>
                        <option>Passport</option>
                    </select>
                    <label id="edit_no_id_type" class="error" style="display:none;">Please select an identification type</label>
                </div>
            </div>

            <div class="control-group">
                <label class="control-label" for="edit_atSceneBodyID">Identification number</label>
                <div class="controls">
                    <input type="text" name="edit_atSceneBodyID" id="edit_atSceneBodyID"/> 
                    <label id ="invalid_id" class="error" style="display:none;">Invalid ID number</label>
                    <label id="edit_invalid_passport" class="error" style="display:none;">Invalid passport number</label>
                </div>
                
            </div>

            <%-- ADDING BODY ADDRESS TABS --%> 
            <div class="control-group">
                <label class="control-label" for="edit_atSceneBodyAddressBuilding">Building</label>
                <div class="controls">
                    <input type="text" name="edit_atSceneBodyAddressBuilding" id="edit_atSceneBodyAddressBuilding"/> 
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="edit_atSceneBodyAddressStreet">Street</label>
                <div class="controls">
                    <input type="text" name="edit_atSceneBodyAddressStreet" id="edit_atSceneBodyAddressStreet"/> 
                </div>
            </div>

            <div class="control-group">
                <label class="control-label" for="edit_atSceneBodyAddressSuburb">Suburb</label>
                <div class="controls">
                    <input type="text" name="edit_atSceneBodyAddressSuburb" id="edit_atSceneBodyAddressSuburb"/> 
                </div>
            </div>

            <div class="control-group">
                <label class="control-label" for="edit_atSceneBodyAddressCity">City</label>
                <div class="controls">
                    <input type="text" name="edit_atSceneBodyAddressCity" id="edit_atSceneBodyAddressCity"/> 
                </div>
            </div>

            <div class="control-group">
                <label class="control-label" for="edit_atSceneBodyAddressPostalCode">Postal Code</label>
                <div class="controls">
                    <input type="text" name="edit_atSceneBodyAddressPostalCode" id="edit_atSceneBodyAddressPostalCode"/> 
                </div>
            </div>

            <div class="control-group">
                <label class="control-label" for="edit_province">Province</label>
                <div class="controls">                                                        
                    <% out.println(t.makeReferenceList("province", "type", ""));%>
                </div>
            </div>

            <div class="control-group">
                <label class="control-label" for="edit_region">Region</label>
                <div class="controls">
                    <% out.println(t.makeReferenceList("region", "type", ""));%>
                </div>
            </div>

            <div class="control-group">
                <label class="control-label" for="edit_atSceneBodyAddressMagisterialDistrict">Magisterial District</label>
                <div class="controls">
                    <input type="text" name="edit_atSceneBodyAddressMagisterialDistrict" id="edit_atSceneBodyAddressMagisterialDistrict"/> 
                </div>
            </div>


            <%--<div class="control-group">
        <label class="control-label" for="edit_atSceneBodyAddress">Address</label>
        <div class="controls">

                                                        <textarea cols="50" rows="3" id="edit_atSceneBodyAddress" name="edit_atSceneBodyAddress"> </textarea>

                                                    </div>
                                                </div>--%>

            <div class="control-group">
                <label class="control-label">Race</label> 
                <div class="controls"><%
                    out.print(t.makeReferenceList("race", "type", ""));
                    %>                      
                    <%--<select id="edit_Brace" name="edit_Brace"><option value=""> <% out.println(String.valueOf("-Please Select-"));%></option>
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
                    out.print(t.makeReferenceList("gender", "type", ""));
                    %>
                    <%--<select id="edit_Bgender" name="edit_Bgender">                            
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
                <label class="control-label" for="edit_atSceneBodyEstAge">Estimated age</label>
                <div class="controls">    
                    <table>
                        <tr>
                            <td><select name="edit_atSceneBodyEstAge" id="edit_atSceneBodyEstAge" style="width:100px;" >
                                    <option selected="selected">Age</option>
                                    <%
                                        for (int i = 1; i < 101; i++) {
                                            out.println("<option>" + i + "</option>");
                                        }
                                    %>
                                </select></td>
                            <td><select name="edit_at_scene_body_estimated_age_type" id="edit_at_scene_body_estimated_age_type" style="width:120px;" >
                                    <option selected="selected">Years/Months</option>
                                    <option>Years</option>
                                    <option>Months</option>
                                </select></td>
                        </tr>
                    </table>                                                         
                </div>
            </div>

        </fieldset>

        <fieldset class="fieldset">     
            <legend class="legend"><h4>Date and time body found:</h4></legend>

            <div class="control-group">
                <label class="control-label" for="edit_bodyFoundDate">Date:</label> 
                <div class="controls" >
                    <input id="edit_bodyFoundDate" name="edit_bodyFoundDate" type="text" readonly style="cursor:pointer;"/>                    
                </div>
            </div>

            <div class="control-group">
                <label class="control-label" for="edit_bodyFoundTime">Time:</label> 
                <div class="controls">
                    <input id="edit_bodyFoundTime" name="edit_bodyFoundTime"  type="text" readonly  style="cursor:pointer;"/>                    
                </div>
            </div>


        </fieldset>

        <fieldset class="fieldset">     
            <legend class="legend"><h4>Alleged date and time of injury:</h4></legend>

            <div class="control-group">
                <label class="control-label" for="edit_allegedInjuryDate">Date:</label> 
                <div class="controls">
                    <input id="edit_inAllegedInjuryDate" name="edit_inAllegedInjuryDate" type="text" readonly style="cursor:pointer;" />                    
                </div>
            </div>

            <div class="control-group">
                <label class="control-label" for="edit_allegedInjuryTime">Time:</label> 
                <div class="controls">
                    <input id="edit_inAllegedInjuryTime" name="edit_inAllegedInjuryTime" type="text" readonly style="cursor:pointer;" />
                </div>
            </div>

        </fieldset>
        <fieldset class="fieldset">     
            <legend class="legend"><h4>Alleged date and time of death:</h4></legend>

            <div class="control-group">
                <label class="control-label" for="edit_allegedDeathDate">Date:</label> 
                <div class="controls">
                    <input id="edit_inAllegedDeathDate" name="edit_inAllegedDeathDate" type="text" readonly style="cursor:pointer;" />                   
                </div>
            </div>

            <div class="control-group">
                <label class="control-label" for="edit_allegedDeathtime">Time:</label> 

                <div class="controls">

                    <input id="edit_inAllegedDeathTime" name="edit_inAllegedDeathTime" type="text" readonly style="cursor:pointer;" />                    
                </div>
            </div>

        </fieldset>

        <fieldset class="fieldset">     
            <legend class="legend"><h4>Date and time of FPS receiving the body at scene:</h4></legend>

            <div class="control-group">
                <label class="control-label" for="edit_FPSbodyReceiveSceneDate">Date:</label> 

                <div class="controls">

                    <input id="edit_ReceivedSceneDate" name="edit_ReceivedSceneDate" type="text" readonly style="cursor:pointer;" />                    

                </div>
            </div>

            <div class="control-group">
                <label class="control-label" for="edit_FPSbodyReceiveSceneTime">Time:</label> 

                <div class="controls">

                    <input id="edit_ReceivedSceneTime" name="edit_ReceivedSceneTime" type="text" readonly style="cursor:pointer;" />

                </div>
            </div>

        </fieldset>

        <fieldset class="fieldset">     
            <legend class="legend"><h4>Date and time of FPS receiving the body at facility:</h4></legend>

            <div class="control-group">
                <label class="control-label" for="edit_FPSbodyReceiveFacilitydate">Date:</label> 

                <div class="controls">
                    <input id="edit_ReceivedFDate" name="edit_ReceivedFacilityDate" type="text" readonly style="cursor:pointer;" />                    
                </div>
            </div>

            <div class="control-group">
                <label class="control-label" for="edit_FPSbodyReceiveFacilityTime">Time:</label> 

                <div class="controls">
                    <input id="edit_ReceivedFTime" name="edit_ReceivedFacilityTime" type="text" readonly style="cursor:pointer;" />                    
                </div>
            </div>


        </fieldset>

        <fieldset class="fieldset">     
            <legend class="legend"><h4>Scene details:</h4></legend>
            <div class="control-group">
                <label class="control-label" for="edit_SceneType">Scene where incident occurred:</label> 
                <div class="controls"><%
                    out.print(t.makeReferenceList("SceneType", "type", ""));
                    %>
                    <%-- <select id="edit_SceneO" name="edit_SceneO">                            
                        <option>home</option>
                        <option>park</option>
                        <option>flat</option>
                    </select> --%>
                </div>
            </div> 

            <div class="control-group">
                <label class="control-label" for="edit_DeathAddress">Place of death(Address)</label> 
                <div class="controls">
                    <textarea cols="50" rows="3" id="edit_DeathAddress" name="edit_DeathAddress"> </textarea>
                </div>
            </div>

            <div class="control-group">
                <label class="control-label" for="edit_ExternalCircumstance">External cause or circumstance of injury:</label> 
                <div class="controls"><%
                    out.print(t.makeReferenceList("externalcircumstance", "type", ""));
                    %>
                    <%--<select id="edit_Cause" name="edit_Cause">                            
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
                <legend class="legend"><h5>Handed over to SAPS:</h5></legend>
                <div class="control-group">
                    <label class="control-label" for="edit_SAPSpropertyDescr">Description</label> 
                    <div class="controls">
                        <textarea cols="50" rows="3" id="edit_SAPSpropertyDescr" name="edit_SAPSpropertyDescr"></textarea>
                        <label class="error" id="edit_no_saps_description" style="display:none;">Please complete the description</label>
                    </div>
                </div>

                <div class="control-group">
                    <label class="control-label" for="edit_SAPSpropertyName">SAPS member name:</label> 
                    <div class="controls">
                        <input type="text" name="edit_SAPSpropertyName" id="edit_SAPSpropertyName"/>
                        <label class="error" id="edit_no_saps_name" style="display:none;">Please enter in the SAPS member name</label>
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label" for="edit_SAPSpropertySurname">SAPS member surname:</label> 
                    <div class="controls">
                        <input type="text" name="edit_SAPSpropertySurname" id="edit_SAPSpropertySurname"/> 
                        <label class="error" id="edit_no_saps_surname" style="display:none;">Please enter in the SAPS member surname</label>
                    </div>
                </div>

                <div class="offset4">
                    <input id="edit_saps_property_add" name="edit_saps_property_add"  class="btn"  type="button" value="Add Item" /> 
                    <%--Display save result --%> 
                </div>
                <br/> <br/>
                <table class='tabledisplay' id="edit_SAPSpropertyTable" name="edit_SAPSpropertyTable">
                    <tr class='tablerow'>
                        <th class='tableheading'>Select</th>
                        <th class='tableheading'>Description</th>
                        <th class='tableheading'>SAPS Name</th>
                        <th class='tableheading'>SAPS Surname</th>
                    </tr>

                </table>
                <br/>
                <div class="offset5">
                    <input id="edit_saps_property_delete" name="edit_saps_property_delete"   class="btn" type="button" value="Delete" /> 
                    <%--Display save result --%> 
                </div>

            </fieldset>
            <br/> <br/>
            <fieldset class="fieldset offset1">     
                <legend class="legend"><h5>Taken by FPS officer</h5></legend>                    
                <div class="control-group">
                    <label class="control-label" for="edit_atSceneFPSpropertyDescr">Description</label> 
                    <div class="controls">
                        <textarea cols="50" rows="3" id="edit_atSceneFPSpropertyDescr" name="edit_atSceneFPSpropertyDescr"></textarea>
                        <label class="error" id="edit_no_fps_description" style="display:none;">Please complete the description</label>
                    </div>
                </div>

                <div class="control-group">
                    <label class="control-label" for="edit_atSceneFPSpersal">Persal number:</label> 
                    <div class="controls">
                        <%
                            String list4 = t.makeReferenceList("employee", "personnelNumber", "");
                            list4 = list4.replaceFirst("name='employee'", "name='atSceneFPSpersal'");
                            list4 = list4.replaceFirst("id='employee'", "id='atSceneFPSpersal'");
                            out.println(list4);
                        %>                            
                        <label class="error" id="edit_no_fps_persal" style="display:none;">Please select a persal number</label>                            
                    </div>
                </div>

                <div class="offset4">
                    <input id="edit_at_scene_fps_add" id="edit_at_scene_fps_add"  class="btn"  type="button" value="Add Item" /> 
                    <%--Display save result --%> 
                </div>

                <br/> <br/>
                <table class="tabledisplay" id="edit_atSceneFPSpropertyTable" name="edit_atSceneFPSpropertyTable">
                    <tr>
                        <th class="tableheading">Select</th>
                        <th class="tableheading">Description</th>
                        <th class="tableheading">Persal Number</th>
                    </tr>
                </table>
                <br/>
                <input id="edit_saps_property_counter" name="edit_saps_property_counter" type="hidden" value="0" />
                <input id="edit_fps_property_counter" name="edit_fps_property_counter" type="hidden" value="0" />
                <div class="offset5">
                    <input id="edit_at_scene_fps_delete" name="edit_at_scene_fps_delete"  class="btn"  type="button" value="Delete" /> 
                    <%--Display save result --%> 
                </div>
                <br/><br/>
            </fieldset>

        </fieldset>

        <div class="offset5">
            <input  type="submit"  class="btn" name="edit_recieve_at_scene_save" id="edit_recieve_at_scene_save"   value="Save" /> 
            <%--Display save result --%> 
        </div>              
    </form>  
<script type="text/javascript" src="js/RecieveBodyDateTime.js"></script>        
</body>         
</html>
