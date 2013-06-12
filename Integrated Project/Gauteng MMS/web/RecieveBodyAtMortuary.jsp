<%-- 
    Document   : RecieveBodtAtMortuary
    Created on : May 28, 2013, 9:35:02 AM
    Author     : Asheen
--%>

<%@page import="servlets.Tools"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript" src="js/RecieveAtMortuary.js"></script>
    </head>

    <legend class="legend"><h3>Receive body at mortuary</h3> </legend> 
    <br/><br/>

    <form id="recieve_body_mort_form" method="post" action="AtMortuaryServlet">
        <input type="hidden" name="at_mort_deathregister" id="at_mort_deathregister"/>
            <input type="hidden" name="at_mort_lognmber" id="at_mort_lognmber"/>
        <div class="control-group">
            <label class="control-label">Employee receiving body:</label> 
            <div class="controls"><%
                Tools t = new Tools();
                out.print(t.makeReferenceList("employee", "personnelNumber", ""));
                %>
            </div>
        </div>
        <div class="control-group">
            <label class="control-label">Employee handing over body:</label> 
            <div class="controls"><%
                String list = t.makeReferenceList("employee", "personnelNumber", "");
                list=list.replaceFirst("name='employee'", "name='employee_handing'");
                list=list.replaceFirst("id='employee'", "id='employee_handing'");
                out.println(list);
                %>
            </div>
        </div>
        <div class="control-group">
            <label class="control-label">Organization handing over body :</label> 
            <div class="controls"><%
                out.print(t.makeReferenceList("organization", "name", ""));
                %>
            </div>
        </div>

        <legend class="legend"><h4></h4></legend>

        <fieldset class="fieldset">     
            <legend class="legend"><h4>Body details</h4></legend>   

            <div class="control-group">
                <label class="control-label">Body Classification</label> 
                <div class="controls"><%
                    out.print(t.makeReferenceList("bodypart", "type", ""));
                    %>
                </div>
            </div> 

            <div class="control-group">
                <label class="control-label" for="atMortBodyName">Name</label> 
                <div class="controls">
                    <input type="text" name="atMortBodyName" id="atMortBodyName"/> 
                </div>



            </div>
            <div class="control-group">
                <label class="control-label" for="atMortBodySurname">Surname</label>
                <div class="controls">
                    <input type="text" name="atMortBodySurname" id="atMortBodySurname"/> 
                </div>
            </div>

            <div class="control-group">
                <label class="control-label" for="recieve_at_scene_id_type">Identification type</label>


                <div class="controls">
                    <select id="recieve_at_mort_id_type" name="recieve_at_mort_id_type">
                        <option selected="selected">Select</option>
                        <option>ID</option>
                        <option>Passport</option>
                    </select>
                    <label id="no_id_type" class="error" style="display:none;">Please select an identification type</label>
                </div>
            </div>
                
            <div class="control-group">
                <label class="control-label" for="atMortBodyID">Identification number</label>
                <div class="controls">
                    <input type="text" name="atMortBodyID" id="atMortBodyID"/> 
                </div>
            </div>


            <div class="control-group">
                <label class="control-label" for="atMortuaryBodyAddressBuilding">Building</label>
                <div class="controls">
                    <input type="text" name="atMortuaryBodyAddressBuilding" id="atMortuaryBodyAddressBuilding"/> 
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="atMortuaryBodyAddressStreet">Street</label>
                <div class="controls">
                    <input type="text" name="atMortuaryBodyAddressStreet" id="atMortuaryBodyAddressStreet"/> 
                </div>
            </div>

            <div class="control-group">
                <label class="control-label" for="atMortuaryBodyAddressSuburb">Suburb</label>
                <div class="controls">
                    <input type="text" name="atMortuaryBodyAddressSuburb" id="atMortuaryBodyAddressSuburb"/> 
                </div>
            </div>

            <div class="control-group">
                <label class="control-label" for="atMortuaryBodyAddressCity">City</label>
                <div class="controls">
                    <input type="text" name="atMortuaryBodyAddressCity" id="atMortuaryBodyAddressCity"/> 
                </div>
            </div>

            <div class="control-group">
                <label class="control-label" for="atMortuaryAddressPostalCode">Postal Code</label>
                <div class="controls">
                    <input type="text" name="atMortuaryAddressPostalCode" id="atMortuaryAddressPostalCode"/> 
                </div>
            </div>

            <div class="control-group">
                <label class="control-label" for="province">Province</label>
                <div class="controls">                                                        
                    <% out.println(t.makeReferenceList("province", "type", ""));%>
                </div>
            </div>

            <div class="control-group">
                <label class="control-label" for="region">Region</label>
                <div class="controls">
                    <% out.println(t.makeReferenceList("region", "type", ""));%>
                </div>
            </div>


            <div class="control-group">
                <label class="control-label">Race</label> 
                <div class="controls"><%
                    out.print(t.makeReferenceList("race", "type", ""));
                    %>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label">Gender</label> 
                <div class="controls"><%
                    out.print(t.makeReferenceList("gender", "type", ""));
                    %>
                </div>
            </div>

            <div class="control-group">
                <label class="control-label" for="atMortuaryBodyEstAge">Estimated age</label>
                <div class="controls">    
                    <table>
                        <tr>
                            <td><select name="atMortuaryBodyEstAge" id="atMortuaryBodyEstAge" style="width:100px;" >
                                    <option selected="selected">Age</option>
                                    <%
                                        for (int i = 1; i < 101; i++) {
                                            out.println("<option>" + i + "</option>");
                                        }
                                    %>
                                </select></td>
                            <td><select name="at_mortuary_body_estimated_age" id="at_mortuary_body_estimated_age" style="width:120px;" >
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
            <legend class="legend"><h4>Property/evidence</h4></legend>                                                        
            <div class="control-group">
                <label class="control-label" for="atMortFPSpropertyDescr">Description</label> 
                <div class="controls">
                    <textarea cols="50" rows="3" id="atMortFPSpropertyDescr" name="atMortFPSpropertyDescr"></textarea>
                     <label class="error" id="no_fps_description_mort" style="display:none;">Please complete the description</label>
                </div>
            </div>

            <div class="control-group">
                <label class="control-label" for="atMortFPSpropertyPersal">Persal number:</label> 
                <div class="controls">
                    <%
                            String list4 = t.makeReferenceList("employee", "personnelNumber", "");
                            list4 = list4.replaceFirst("name='employee'", "name='atMortFPSpropertyPersal'");
                            list4 = list4.replaceFirst("id='employee'", "id='atMortFPSpropertyPersal'");
                            out.println(list4);
                        %>
                        <label class="error" id="no_fps_persal_mort" style="display:none;">Please select a persal number</label>
                </div>
            </div>

            <div class="offset4">
                <input  id="at_mort_fps_add" name="at_mort_fps_add"  class="btn" type="button" value="Add Item" /> 
                <%--Display save result --%> 
            </div>
            <br/> <br/>
            <table class="tabledisplay" id="atMortFPSpropertyTable" name="atMortFPSpropertyTable">
                <tr>
                    <th class="tableheading">Select</th>
                    <th class="tableheading">Description</th>
                    <th class="tableheading">Persal Number</th>
                </tr>

            </table>
            <br/>
            <div class="offset5">
                <input id="at_mort_fps_delete" name="at_mort_fps_delete"  class="btn" onclick=" deleteRow('atMortFPSpropertyTable')" type="button" value="Delete" /> 
                <%--Display save result --%> 
            </div>
            <br/><br/>
            <input  type="hidden" id="fps_property_counter_mort" name ="fps_property_counter_mort" value="0"/>
        </fieldset>

        <div class="offset5">
            <input type="submit"  class="btn"    value="Save" /> 
            <%--Display save result --%> 
        </div>
    </form>
</body>
</html>
