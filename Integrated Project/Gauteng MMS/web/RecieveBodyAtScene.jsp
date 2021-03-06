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
        <style type="text/css">
            label.error { 
                float: none; 
                color: red; 
                padding-left: .5em; 
                vertical-align: top; 
            }
        </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script language="javascript" type="text/javascript" src="js/jquery-1.9.1.js"></script>
        <script language="javascript" type="text/javascript" src="js/jquery.validate.min.js"></script>
         <script type="text/javascript" src="js/RecieveAtSceneScript.js"></script>
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
    
    <form name="recieve_body_scene_form" id="recieve_body_scene_form" method="post" action="AtSceneServlet">
        <input type="hidden" name="at_scene_deathregister" id="at_scene_deathregister"/>
        <input type="hidden" name="at_scene_lognmber" id="at_scene_lognmber"/>
        <fieldset class="fieldset">
            <legend class="legend"><h4>Body received from:</h4></legend>
            <div class="control-group">
                <label class="control-label" for="receivedBodyFromName">Name:</label> 
                <div class="controls">
                    <input type="text" name="receivedBodyFromName" id="receivedBodyFromName"/> 
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="receivedBodyFromSurname">Surname:</label>
                <div class="controls">
                    <input type="text" name="receivedBodyFromSurname" id="receivedFromBodySurname"/> 
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="organisation">Organization:</label> 
                <div class="controls"><%
                    Tools t = new Tools();
                    out.print(t.makeReferenceList("organization", "name", ""));
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
                <label class="control-label" for="SAPSmemberBodyName">Name:</label> 
                <div class="controls">
                    <input type="text" name="SAPSmemberBodyName" id="SAPSmemberBodyName"/> 
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="SAPSmemberBodySurname">Surname:</label>
                <div class="controls">
                    <input type="text" name="SAPSmemberBodySurname" id="SAPSmemberBodySurname"/> 
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="SAPSmemberBodyCell">Cell phone number:</label>
                <div class="controls">
                    <input type="text" name="SAPSmemberBodyCell" id="SAPSmemberBodyCell"/> 
                </div>
            </div>

            <div class="control-group">
                <label class="control-label" for="SAPSmemberBodyRank">Rank:</label>
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
                <label class="control-label" for="FPSmemberBodyName">Name:</label> 
                <div class="controls">
                    <input type="text" name="FPSmemberBodyName" id="FPSmemberBodyName"/> 
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="FPSmemberBodySurname">Surname:</label>
                <div class="controls">
                    <input type="text" name="FPSmemberBodySurname" id="FPSmemberBodySurname"/> 
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="FPSmemberBodyPersal">Persal number:</label>
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
                <label class="control-label" for="FPSmemberBodyCell">Cell phone number:</label>
                <div class="controls">
                    <input type="text" name="FPSmemberBodyCell" id="FPSmemberBodyCell"/> 
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="FPSmemberBodyRank">Rank:</label>
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
                <label class="control-label" for="pathologistAtScene">Was the pathologist at scene?</label> 
                <div class="controls">
                    <select id="pathologistAtScene" name="pathologistAtScene">                            
                        <option >No</option>
                        <option>Yes</option>
                    </select>
                </div>
            </div> 
            <div id="pathologist_at_scene_details" style="display:none;">
                <div class="control-group">
                    <label class="control-label" for="pathologistBodyName">Name:</label> 
                    <div class="controls">
                        <input type="text" name="pathologistBodyName" id="pathologistBodyName"/> 
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label" for="pathologistBodySurname">Surname:</label>
                    <div class="controls">
                        <input type="text" name="pathologistBodySurname" id="pathologistBodySurname"/> 
                    </div>
                </div>


                <div class="control-group">
                    <label class="control-label" for="pathologistBodyRank">Rank:</label>
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
                <label class="control-label">Body Classification:</label> 
                <div class="controls"><%
                    out.print(t.makeReferenceList("bodypart", "type", ""));
                    %>
                    <%--<select id="BodyClass" name="BodyClass">                            
                        <option>Head</option>
                        <option>Eye</option>
                        <option>Body</option>
                    </select>--%>
                </div>
            </div> 

            <div class="control-group">
                <label class="control-label" for="atSceneBodyName">Name:</label> 
                <div class="controls">
                    <input type="text" name="atSceneBodyName" id="atSceneBodyName"/> 
                </div>



            </div>
            <div class="control-group">
                <label class="control-label" for="atSceneBodySurname">Surname:</label>
                <div class="controls">
                    <input type="text" name="atSceneBodySurname" id="atSceneBodySurname"/> 
                </div>
            </div>

            <div class="control-group">
                <label class="control-label" for="recieve_at_scene_id_type">Identification type:</label>


                <div class="controls">
                    <select id="recieve_at_scene_id_type" name="recieve_at_scene_id_type">
                        <option selected="selected">Select</option>
                        <option>ID</option>
                        <option>Passport</option>
                    </select>
                    <label id="no_id_type" class="error" style="display:none;">Please select an identification type:</label>
                </div>
            </div>

            <div class="control-group">
                <label class="control-label" for="atSceneBodyID">Identification number:</label>
                <div class="controls">
                    <input type="text" name="atSceneBodyID" id="atSceneBodyID"/> 
                    <label id ="invalid_id" class="error" style="display:none;">Invalid ID number:</label>
                    <label id="invalid_passport" class="error" style="display:none;">Invalid passport number:</label>
                </div>
                
            </div>

            <%-- ADDING BODY ADDRESS TABS --%> 
            <div class="control-group">
                <label class="control-label" for="atSceneBodyAddressBuilding">Building:</label>
                <div class="controls">
                    <input type="text" name="atSceneBodyAddressBuilding" id="atSceneBodyAddressBuilding"/> 
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="atSceneBodyAddressStreet">Street:</label>
                <div class="controls">
                    <input type="text" name="atSceneBodyAddressStreet" id="atSceneBodyAddressStreet"/> 
                </div>
            </div>

            <div class="control-group">
                <label class="control-label" for="atSceneBodyAddressSuburb">Suburb:</label>
                <div class="controls">
                    <input type="text" name="atSceneBodyAddressSuburb" id="atSceneBodyAddressSuburb"/> 
                </div>
            </div>

            <div class="control-group">
                <label class="control-label" for="atSceneBodyAddressCity">City:</label>
                <div class="controls">
                    <input type="text" name="atSceneBodyAddressCity" id="atSceneBodyAddressCity"/> 
                </div>
            </div>

            <div class="control-group">
                <label class="control-label" for="atSceneBodyAddressPostalCode">Postal Code:</label>
                <div class="controls">
                    <input type="text" name="atSceneBodyAddressPostalCode" id="atSceneBodyAddressPostalCode"/> 
                </div>
            </div>

            <div class="control-group">
                <label class="control-label" for="province">Province:</label>
                <div class="controls">                                                        
                    <% out.println(t.makeReferenceList("province", "type", ""));%>
                </div>
            </div>

            <div class="control-group">
                <label class="control-label" for="region">Region:</label>
                <div class="controls">
                    <% out.println(t.makeReferenceList("region", "type", ""));%>
                </div>
            </div>

            <div class="control-group">
                <label class="control-label" for="atSceneBodyAddressMagisterialDistrict">Magisterial District:</label>
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
                <label class="control-label">Race:</label> 
                <div class="controls"><%
                    out.print(t.makeReferenceList("race", "type", ""));
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
                <label class="control-label">Gender:</label> 
                <div class="controls"><%
                    out.print(t.makeReferenceList("gender", "type", ""));
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
                <label class="control-label" for="atSceneBodyEstAge">Estimated age:</label>
                <div class="controls">    
                    <table>
                        <tr>
                            <td><select name="atSceneBodyEstAge" id="atSceneBodyEstAge" style="width:100px;" >
                                    <option selected="selected">Age:</option>
                                    <%
                                        for (int i = 1; i < 101; i++) {
                                            out.println("<option>" + i + "</option>");
                                        }
                                    %>
                                </select></td>
                            <td><select name="at_scene_body_estimated_age_type" id="at_scene_body_estimated_age_type" style="width:120px;" >
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
                <label class="control-label" for="bodyFoundDate">Date:</label> 
                <div class="controls" >
                    <input id="bodyFoundDate" name="bodyFoundDate" type="text" readonly style="cursor:pointer;"/>                    
                </div>
            </div>

            <div class="control-group">
                <label class="control-label" for="bodyFoundTime">Time:</label> 
                <div class="controls">
                    <input id="bodyFoundTime" name="bodyFoundTime"  type="text" readonly  style="cursor:pointer;"/>                    
                </div>
            </div>


        </fieldset>

        <fieldset class="fieldset">     
            <legend class="legend"><h4>Alleged date and time of injury:</h4></legend>

            <div class="control-group">
                <label class="control-label" for="allegedInjuryDate">Date:</label> 
                <div class="controls">
                    <input id="inAllegedInjuryDate" name="inAllegedInjuryDate" type="text" readonly style="cursor:pointer;" />                    
                </div>
            </div>

            <div class="control-group">
                <label class="control-label" for="allegedInjuryTime">Time:</label> 
                <div class="controls">
                    <input id="inAllegedInjuryTime" name="inAllegedInjuryTime" type="text" readonly style="cursor:pointer;" />
                </div>
            </div>

        </fieldset>
        <fieldset class="fieldset">     
            <legend class="legend"><h4>Alleged date and time of death:</h4></legend>

            <div class="control-group">
                <label class="control-label" for="allegedDeathDate">Date:</label> 
                <div class="controls">
                    <input id="inAllegedDeathDate" name="inAllegedDeathDate" type="text" readonly style="cursor:pointer;" />                   
                </div>
            </div>

            <div class="control-group">
                <label class="control-label" for="allegedDeathtime">Time:</label> 

                <div class="controls">

                    <input id="inAllegedDeathTime" name="inAllegedDeathTime" type="text" readonly style="cursor:pointer;" />                    
                </div>
            </div>

        </fieldset>

        <fieldset class="fieldset">     
            <legend class="legend"><h4>Date and time of FPS receiving the body at scene:</h4></legend>

            <div class="control-group">
                <label class="control-label" for="FPSbodyReceiveSceneDate">Date:</label> 

                <div class="controls">

                    <input id="ReceivedSceneDate" name="ReceivedSceneDate" type="text" readonly style="cursor:pointer;" />                    

                </div>
            </div>

            <div class="control-group">
                <label class="control-label" for="FPSbodyReceiveSceneTime">Time:</label> 

                <div class="controls">

                    <input id="ReceivedSceneTime" name="ReceivedSceneTime" type="text" readonly style="cursor:pointer;" />

                </div>
            </div>

        </fieldset>

        <fieldset class="fieldset">     
            <legend class="legend"><h4>Date and time of FPS receiving the body at facility:</h4></legend>

            <div class="control-group">
                <label class="control-label" for="FPSbodyReceiveFacilitydate">Date:</label> 

                <div class="controls">
                    <input id="ReceivedFDate" name="ReceivedFacilityDate" type="text" readonly style="cursor:pointer;" />                    
                </div>
            </div>

            <div class="control-group">
                <label class="control-label" for="FPSbodyReceiveFacilityTime">Time:</label> 

                <div class="controls">
                    <input id="ReceivedFTime" name="ReceivedFacilityTime" type="text" readonly style="cursor:pointer;" />                    
                </div>
            </div>


        </fieldset>

        <fieldset class="fieldset">     
            <legend class="legend"><h4>Scene details:</h4></legend>
            <div class="control-group">
                <label class="control-label" for="SceneType">Scene where incident occurred:</label> 
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
                <label class="control-label" for="DeathAddress">Place of death(Address):</label> 
                <div class="controls">
                    <textarea cols="50" rows="3" id="DeathAddress" name="DeathAddress"> </textarea>
                </div>
            </div>

            <div class="control-group">
                <label class="control-label" for="ExternalCircumstance">External cause or circumstance of injury:</label> 
                <div class="controls"><%
                    out.print(t.makeReferenceList("externalcircumstance", "type", ""));
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
                <legend class="legend"><h5>Handed over to SAPS:</h5></legend>
                <div class="control-group">
                    <label class="control-label" for="SAPSpropertyDescr">Description:</label> 
                    <div class="controls">
                        <textarea cols="50" rows="3" id="SAPSpropertyDescr" name="SAPSpropertyDescr"></textarea>
                        <label class="error" id="no_saps_description" style="display:none;">Please complete the description</label>
                    </div>
                </div>

                <div class="control-group">
                    <label class="control-label" for="SAPSpropertyName">SAPS member name:</label> 
                    <div class="controls">
                        <input type="text" name="SAPSpropertyName" id="SAPSpropertyName"/>
                        <label class="error" id="no_saps_name" style="display:none;">Please enter in the SAPS member name</label>
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label" for="SAPSpropertySurname">SAPS member surname:</label> 
                    <div class="controls">
                        <input type="text" name="SAPSpropertySurname" id="SAPSpropertySurname"/> 
                        <label class="error" id="no_saps_surname" style="display:none;">Please enter in the SAPS member surname</label>
                    </div>
                </div>

                <div class="offset2">
                    <input id="saps_property_add" name="saps_property_add"  class="btn"  type="button" value="Add Item" /> 
                    <%--Display save result --%> 
                </div>
                <br/> <br/>
                <table class='tabledisplay' id="SAPSpropertyTable" name="SAPSpropertyTable">
                    <tr class='tablerow'>
                        <th width="80" class='tableheading'>Select</th>
                        <th width="100" class='tableheading'>Description</th>
                        <th class='tableheading'>SAPS Name</th>
                        <th class='tableheading'>SAPS Surname</th>
                    </tr>

                </table>
                <br/>
                <div class="offset2">
                    <input id="saps_property_delete" name="saps_property_delete"   class="btn" type="button" value="Delete" /> 
                    <%--Display save result --%> 
                </div>

            </fieldset>
            <br/> <br/>
            <fieldset class="fieldset offset1">     
                <legend class="legend"><h5>Taken by FPS officer</h5></legend>                    
                <div class="control-group">
                    <label class="control-label" for="atSceneFPSpropertyDescr">Description:</label> 
                    <div class="controls">
                        <textarea cols="50" rows="3" id="atSceneFPSpropertyDescr" name="atSceneFPSpropertyDescr"></textarea>
                        <label class="error" id="no_fps_description" style="display:none;">Please complete the description</label>
                    </div>
                </div>

                <div class="control-group">
                    <label class="control-label" for="atSceneFPSpersal">Persal number:</label> 
                    <div class="controls">
                        <%
                            String list4 = t.makeReferenceList("employee", "personnelNumber", "");
                            list4 = list4.replaceFirst("name='employee'", "name='atSceneFPSpersal'");
                            list4 = list4.replaceFirst("id='employee'", "id='atSceneFPSpersal'");
                            out.println(list4);
                        %>                            
                        <label class="error" id="no_fps_persal" style="display:none;">Please select a persal number</label>                            
                    </div>
                </div>

                <div class="offset2">
                    <input id="at_scene_fps_add" id="at_scene_fps_add"  class="btn"  type="button" value="Add Item" /> 
                    <%--Display save result --%> 
                </div>

                <br/> <br/>
                <table class="tabledisplay" id="atSceneFPSpropertyTable" name="atSceneFPSpropertyTable">
                    <tr >
                        <th width="100" class="tableheading">Select</th>
                        <th width="130" class="tableheading">Description</th>
                        <th width="100" class="tableheading">Persal Number</th>
                    </tr>
                </table>
                <br/>
                <input id="saps_property_counter" name="saps_property_counter" type="hidden" value="0" />
                <input id="fps_property_counter" name="fps_property_counter" type="hidden" value="0" />
                <div class="offset2">
                    <input id="at_scene_fps_delete" name="at_scene_fps_delete"  class="btn"  type="button" value="Delete" /> 
                    <%--Display save result --%> 
                </div>
                <br/><br/>
            </fieldset>

        </fieldset>
             <legend></legend>
        <div class="offset6">
            <input  type="submit"  class="btn" name="recieve_at_scene_save" id="recieve_at_scene_save"   value="Save" /> 
            <%--Display save result --%> 
        </div>                
    </form>  
        
      <%
      if(session.getAttribute("death_register_number")== null){
          out.println("<script type='text/javascript' src='js/RecieveBodyDateTime.js'></script>");
         
      }
      %>

</body>         
</html>
