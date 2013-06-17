<%-- 
    Document   : EditRecieveBodyAtMortuary
    Created on : 12 Jun 2013, 11:47:29 AM
    Author     : Lady
--%>

<%@page import="servlets.Tools"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript" src="js/EditRecieveAtMortuaryScript.js"></script>
    </head>
    <body>
        <%
            String value = "";
        %>
    <legend class="legend"><h3>Receive body at mortuary</h3> </legend> 
    <br/><br/>

    <form id="edit_recieve_body_mort_form" method="post" action="#">
        <input type="hidden" name="edit_at_mort_deathregister" id="edit_at_mort_deathregister"/>
        <input type="hidden" name="edit_at_mort_lognmber" id="edit_at_mort_lognmber"/>
        <div class="control-group">
            <label class="control-label">Employee receiving body:</label> 
            <div class="controls"><%
                if (session.getAttribute("bIdEmployeeRecieving") != null) {
                    if (!(session.getAttribute("bIdEmployeeRecieving").toString().equals("null"))) {
                        value = session.getAttribute("bIdEmployeeRecieving").toString();
                    } else {
                        value = "";
                    }
                } else {
                    value = "";
                }
                Tools t = new Tools();
                String list = t.makeReferenceList("employee", "personnelNumber", value);
                list = list.replaceFirst("name='employee'", "name='edit_employee'");
                list = list.replaceFirst("id='employee'", "id='edit_employee'");
                out.println(list);
                %>
            </div>
        </div>
        <div class="control-group">
            <label class="control-label">Employee handing over body:</label> 
            <div class="controls"><%
                if (session.getAttribute("bIdEmployeeHandingOver") != null) {
                    if (!(session.getAttribute("bIdEmployeeHandingOver").toString().equals("null"))) {
                        value = session.getAttribute("bIdEmployeeHandingOver").toString();
                    } else {
                        value = "";
                    }
                } else {
                    value = "";
                }
                list = t.makeReferenceList("employee", "personnelNumber", value);
                list = list.replaceFirst("name='edit_employee'", "name='edit_employee_handing'");
                list = list.replaceFirst("id='edit_employee'", "id='edit_employee_handing'");
                out.println(list);
                %>
            </div>
        </div>
        <div class="control-group">
            <label class="control-label">Organization handing over body :</label> 
            <div class="controls"><%
                if (session.getAttribute("bIdOrhanizationhandingOver") != null) {

                    if (!(session.getAttribute("bIdOrhanizationhandingOver").toString().equals("null"))) {
                        value = session.getAttribute("bIdOrhanizationhandingOver").toString();
                    } else {
                        value = "";
                    }
                } else {
                    value = "";
                }
                out.print(t.makeReferenceList("organization", "name", value));
                %>
            </div>
        </div>

        <legend class="legend"><h4></h4></legend>

        <fieldset class="fieldset">     
            <legend class="legend"><h4>Body details</h4></legend>   

            <div class="control-group">
                <label class="control-label">Body Classification</label> 
                <div class="controls"><%
                    if (session.getAttribute("bIdBodytype") != null) {

                        if (!(session.getAttribute("bIdBodytype").toString().equals("null"))) {
                            value = session.getAttribute("bIdBodytype").toString();
                        } else {
                            value = "";
                        }
                    } else {
                        value = "";
                    }
                    list = t.makeReferenceList("bodypart", "type", value);
                    list = list.replaceFirst("name='bodypart'", "name='edit_bodypart'");
                    list = list.replaceFirst("id='bodypart'", "id='edit_bodypart'");
                    out.println(list);
                    %>
                </div>
            </div> 

            <div class="control-group">
                <label class="control-label" for="edit_atMortBodyName">Name</label> 
                <div class="controls">
                    <%
                        if (session.getAttribute("bIdFullName") != null) {
                            if (!(session.getAttribute("bIdFullName").toString().equals("null"))) {
                                value = session.getAttribute("bIdFullName").toString();
                            } else {
                                value = "";
                            }
                        } else {
                            value = "";
                        }
                    %>
                    <input type="text" name="edit_atMortBodyName" id="edit_atMortBodyName" <%out.println("value='" + value + "' ");%> /> 
                </div>



            </div>
            <div class="control-group">
                <label class="control-label" for="edit_atMortBodySurname">Surname</label>
                <div class="controls">
                    <%
                        if (session.getAttribute("bIdSurname") != null) {
                            if (!(session.getAttribute("bIdSurname").toString().equals("null"))) {
                                value = session.getAttribute("bIdSurname").toString();
                            } else {
                                value = "";
                            }
                        } else {
                            value = "";
                        }
                    %>
                    <input type="text" name="edit_atMortBodySurname" id="edit_atMortBodySurname" <%out.println("value='" + value + "' ");%> /> 
                </div>
            </div>

            <div class="control-group">
                <label class="control-label" for="edit_recieve_at_scene_id_type">Identification type</label>


                <div class="controls">

                    <%
                        String identification_type;
                        if ((session.getAttribute("bIdIDNumber") != null) | (session.getAttribute("bIdPassport") != null)) {
                            String id = session.getAttribute("bIdIDNumber").toString();
                            String passport = session.getAttribute("bIdPassport").toString();
                            if ((id.toString().equals("null")) && (passport.toString().equals("null"))) {
                                identification_type = "<select id='edit_recieve_at_mort_id_type' name='edit_recieve_at_mort_id_type'><option selected='selected'>Select</option><option>ID</option><option>Passport</option></select>";
                                value = "";
                            } else if (!(id.toString().equals("null"))) {
                                identification_type = "<select id='edit_recieve_at_mort_id_type' name='edit_recieve_at_mort_id_type'><option>Select</option><option selected='selected'>ID</option><option>Passport</option></select>";
                                value = id;
                            } else {
                                identification_type = "<select id='edit_recieve_at_mort_id_type' name='edit_recieve_at_mort_id_type'><option>Select</option><option>ID</option><option selected='selected'>Passport</option></select>";
                                value = passport;
                            }
                        } else {
                            identification_type = "<select id='edit_recieve_at_mort_id_type' name='edit_recieve_at_mort_id_type'><option selected='selected'>Select</option><option>ID</option><option>Passport</option></select>";
                            value = "";
                        }
                        out.println(identification_type);
                    %>

                    <label id="edit_no_id_type" class="error" style="display:none;">Please select an identification type</label>
                </div>
            </div>

            <div class="control-group">
                <label class="control-label" for="edit_atMortBodyID">Identification number</label>
                <div class="controls">

                    <input type="text" name="edit_atMortBodyID" id="edit_atMortBodyID" <%out.println("value='" + value + "' ");%> /> 
                </div>
            </div>


            <div class="control-group">
                <label class="control-label" for="edit_atMortuaryBodyAddressBuilding">Building</label>
                <div class="controls">
                    <%
                        if (session.getAttribute("bIdBuild") != null) {
                            if (!(session.getAttribute("bIdBuild").toString().equals("null"))) {
                                value = session.getAttribute("bIdBuild").toString();
                            } else {
                                value = "";
                            }
                        } else {
                            value = "";
                        }
                    %>
                    <input type="text" name="edit_atMortuaryBodyAddressBuilding" id="edit_atMortuaryBodyAddressBuilding" <%out.println("value='" + value + "' ");%> /> 
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="edit_atMortuaryBodyAddressStreet">Street</label>
                <div class="controls">
                    <%
                        if (session.getAttribute("bIdStreet") != null) {

                            if (!(session.getAttribute("bIdStreet").toString().equals("null"))) {
                                value = session.getAttribute("bIdStreet").toString();
                            } else {
                                value = "";
                            }
                        } else {
                            value = "";
                        }
                    %>
                    <input type="text" name="edit_atMortuaryBodyAddressStreet" id="edit_atMortuaryBodyAddressStreet" <%out.println("value='" + value + "' ");%> /> 
                </div>
            </div>

            <div class="control-group">
                <label class="control-label" for="edit_atMortuaryBodyAddressSuburb">Suburb</label>
                <div class="controls">
                    <%
                        if (session.getAttribute("bIdSuburb") != null) {
                            if (!(session.getAttribute("bIdSuburb").toString().equals("null"))) {
                                value = session.getAttribute("bIdSuburb").toString();
                            } else {
                                value = "";
                            }
                        } else {
                            value = "";
                        }
                    %>
                    <input type="text" name="edit_atMortuaryBodyAddressSuburb" id="edit_atMortuaryBodyAddressSuburb" <%out.println("value='" + value + "' ");%> /> 
                </div>
            </div>

            <div class="control-group">
                <label class="control-label" for="edit_atMortuaryBodyAddressCity">City</label>
                <div class="controls">
                    <%
                        if (session.getAttribute("bIdCity") != null) {
                            if (!(session.getAttribute("bIdCity").toString().equals("null"))) {
                                value = session.getAttribute("bIdCity").toString();
                            } else {
                                value = "";
                            }
                        } else {
                            value = "";
                        }
                    %>
                    <input type="text" name="edit_atMortuaryBodyAddressCity" id="edit_atMortuaryBodyAddressCity" <%out.println("value='" + value + "' ");%> /> 
                </div>
            </div>

            <div class="control-group">
                <label class="control-label" for="edit_atMortuaryAddressPostalCode">Postal Code</label>
                <div class="controls">
                    <%
                        if (session.getAttribute("bIdPostCode") != null) {
                            if (!(session.getAttribute("bIdPostCode").toString().equals("null"))) {
                                value = session.getAttribute("bIdPostCode").toString();
                            } else {
                                value = "";
                            }
                        } else {
                            value = "";
                        }
                    %>
                    <input type="text" name="edit_atMortuaryAddressPostalCode" id="edit_atMortuaryAddressPostalCode" <%out.println("value='" + value + "' ");%> /> 
                </div>
            </div>

            <div class="control-group">
                <label class="control-label" for="edit_province">Province</label>
                <div class="controls">   
                    <%
                        if (session.getAttribute("bIdProvince") != null) {
                            if (!(session.getAttribute("bIdProvince").toString().equals("null"))) {
                                value = session.getAttribute("bIdProvince").toString();
                            } else {
                                value = "";
                            }
                        } else {
                            value = "";
                        }
                    %>
                    <% out.println(t.makeReferenceList("province", "type", value));%>
                </div>
            </div>

            <div class="control-group">
                <label class="control-label" for="edit_region">Region</label>
                <div class="controls">
                    <%
                        if (session.getAttribute("bIdRegion") != null) {
                            if (!(session.getAttribute("bIdRegion").toString().equals("null"))) {
                                value = session.getAttribute("bIdRegion").toString();
                            } else {
                                value = "";
                            }
                        } else {
                            value = "";
                        }
                    %>
                    <% out.println(t.makeReferenceList("region", "type", value));%>
                </div>
            </div>

            <div class="control-group">
                <label class="control-label" for="edit_atMortBodyAddressMagisterialDistrict">Magisterial District:</label>
                <div class="controls">
                    <%
                        if (session.getAttribute("bIdDistrict") != null) {
                            if (!(session.getAttribute("bIdDistrict").toString().equals("null"))) {
                                value = session.getAttribute("bIdDistrict").toString();
                            } else {
                                value = "";
                            }
                        } else {
                            value = "";
                        }
                    %>
                    <input type="text" name="edit_atMortBodyAddressMagisterialDistrict" id="edit_atMortBodyAddressMagisterialDistrict" <%out.println("value='" + value + "' ");%> /> 
                </div>
            </div>

            <div class="control-group">
                <label class="control-label">Race</label> 
                <div class="controls"><%
                    if (session.getAttribute("bIdRace") != null) {
                        if (!(session.getAttribute("bIdRace").toString().equals("null"))) {
                            value = session.getAttribute("bIdRace").toString();
                        } else {
                            value = "";
                        }
                    } else {
                        value = "";
                    }
                    out.print(t.makeReferenceList("race", "type", value));
                    %>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label">Gender</label> 
                <div class="controls"><%
                    if (session.getAttribute("bIdGender") != null) {
                        if (!(session.getAttribute("bIdGender").toString().equals("null"))) {
                            value = session.getAttribute("bIdGender").toString();
                        } else {
                            value = "";
                        }
                    } else {
                        value = "";
                    }
                    out.print(t.makeReferenceList("gender", "type", value));
                    %>
                </div>
            </div>

            <div class="control-group">
                <label class="control-label" for="edit_atMortuaryBodyEstAge">Estimated age</label>
                <div class="controls">    
                    <table>
                        <tr>
                            <td><select name="edit_atMortuaryBodyEstAge" id="edit_atMortuaryBodyEstAge" style="width:100px;" >


                                    <%
                                        if (session.getAttribute("bIdEstAgeYear") != null) {
                                            out.println("<option>Age</option>");
                                            int est_year = Integer.parseInt(session.getAttribute("bIdEstAgeYear").toString());
                                            value = "Years";
                                            for (int i = 1; i < 101; i++) {
                                                if (i == est_year) {
                                                    out.println("<option selected='selected'>" + i + "</option>");
                                                } else {
                                                    out.println("<option>" + i + "</option>");
                                                }
                                            }
                                        } else if (session.getAttribute("bIdEstAgeMonth") != null) {
                                            out.println("<option>Age</option>");
                                            int est_month = Integer.parseInt(session.getAttribute("bIdEstAgeMonth").toString());
                                            value = "Months";
                                            for (int i = 1; i < 101; i++) {
                                                if (i == est_month) {
                                                    out.println("<option selected='selected'>" + i + "</option>");
                                                } else {
                                                    out.println("<option>" + i + "</option>");
                                                }
                                            }
                                        } else {
                                            out.println("<option selected='selected'>Age</option>");
                                            value = "";
                                            for (int i = 1; i < 101; i++) {
                                                out.println("<option>" + i + "</option>");
                                            }
                                        }
                                    %>
                                </select></td>
                            <td><%
                                if (value == "") {
                                    list = "<select name='edit_at_mortuary_body_estimated_age' id='edit_at_mortuary_body_estimated_age' style='width:120px;' ><option selected='selected'>Years/Months</option><option>Years</option><option>Months</option></select> ";
                                } else if (value == "Years") {
                                    list = "<select name='edit_at_mortuary_body_estimated_age' id='edit_at_mortuary_body_estimated_age' style='width:120px;' ><option>Years/Months</option><option selected='selected'>Years</option><option>Months</option></select> ";
                                } else {
                                    list = "<select name='edit_at_mortuary_body_estimated_age' id='edit_at_mortuary_body_estimated_age' style='width:120px;' ><option>Years/Months</option><option>Years</option><option selected='selected'>Months</option></select> ";
                                }
                                out.println(list);
                                %>
                            </td>
                        </tr>
                    </table>                                                         
                </div>
            </div>

        </fieldset>

        <fieldset class="fieldset">     
            <legend class="legend"><h4>Property/evidence</h4></legend>                                                        
            <div class="control-group">
                <label class="control-label" for="edit_atMortFPSpropertyDescr">Description</label> 
                <div class="controls">
                    <textarea cols="50" rows="3" id="edit_atMortFPSpropertyDescr" name="edit_atMortFPSpropertyDescr"></textarea>
                    <label class="error" id="edit_no_fps_description_mort" style="display:none;">Please complete the description</label>
                </div>
            </div>

            <div class="control-group">
                <label class="control-label" for="edit_atMortFPSpropertyPersal">Persal number:</label> 
                <div class="controls">
                    <%
                        String list4 = t.makeReferenceList("employee", "personnelNumber", "");
                        list4 = list4.replaceFirst("name='employee'", "name='edit_atMortFPSpropertyPersal'");
                        list4 = list4.replaceFirst("id='employee'", "id='edit_atMortFPSpropertyPersal'");
                        out.println(list4);
                    %>
                    <label class="error" id="edit_no_fps_persal_mort" style="display:none;">Please select a persal number</label>
                </div>
            </div>

            <div class="offset4">
                <input  id="edit_at_mort_fps_add" name="edit_at_mort_fps_add"  class="btn" type="button" value="Add Item" /> 
                <%--Display save result --%> 
            </div>
            <br/> <br/>
            <%
                if (session.getAttribute("death_register_number") != null) {
                    if (!(session.getAttribute("death_register_number").toString().equals("null"))) {
                        value = session.getAttribute("death_register_number").toString();
                    } else {
                        value = "";
                    }
                } else {
                    value = "";
                }
                out.println(new Tools().makePropertyTable(value));
            %>
            <br/>
            <div class="offset5">
                <input id="edit_at_mort_fps_delete" name="edit_at_mort_fps_delete"  class="btn" onclick=" deleteRow('atMortFPSpropertyTable')" type="button" value="Delete" /> 
                <%--Display save result --%> 
            </div>
            <br/><br/>
            <input  type="hidden" id="edit_fps_property_counter_mort" name ="fps_property_counter_mort" value="0"/>
        </fieldset>

        <div class="offset5">
            <input type="submit"  class="btn"    value="Save" /> 
            <%--Display save result --%> 
        </div>
    </form>
</body>
</html>
