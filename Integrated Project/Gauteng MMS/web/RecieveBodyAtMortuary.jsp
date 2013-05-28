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
    </head>

                                            <div align="center"><h2>Receive body at mortuary</h2> </div> 
                                            <br/><br/>

                                            <legend class="legend"><h4></h4></legend>

                                            <div class="control-group">
                                                <label class="control-label">Employee receiving body:</label> 
                                                <div class="controls"><%
                                                            Tools t = new Tools();
                                                            out.print(t.makeReferenceList("Employee", "personnelNumber", ""));
                                                            %>
                                                </div>
                                            </div>
                                            <div class="control-group">
                                                <label class="control-label">Employee handing over body:</label> 
                                                <div class="controls"><%
                                                            out.print(t.makeReferenceList("Employee", "personnelNumber", ""));
                                                            %>
                                                </div>
                                            </div>
                                            <div class="control-group">
                                                <label class="control-label">Organisation handing over body :</label> 
                                                <div class="controls"><%
                                                            out.print(t.makeReferenceList("Organization", "name", ""));
                                                            %>
                                                </div>
                                            </div>

                                            <legend class="legend"><h4></h4></legend>

                                            <fieldset class="fieldset">     
                                                <legend class="legend"><h4>Body details</h4></legend>   

                                                <div class="control-group">
                                                    <label class="control-label">Body Classification</label> 
                                                    <div class="controls"><%
                                                            out.print(t.makeReferenceList("BodyPart", "type", ""));
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
                                                    <label class="control-label" for="atMortBodyID">ID number</label>
                                                    <div class="controls">
                                                        <input type="text" name="atMortBodyID" id="atMortBodyID"/> 
                                                    </div>
                                                </div>


                                                <div class="control-group">
                                                    <label class="control-label" for="atMortBodyAddress">Address</label>
                                                    <div class="controls">
                                                        <textarea cols="50" rows="3" id="atMortBodyAddress" name="atMortBodyAddress"> </textarea>  
                                                    </div>
                                                </div>

                                                <div class="control-group">
                                                    <label class="control-label">Race</label> 
                                                    <div class="controls"><%
                                                            out.print(t.makeReferenceList("Race", "type", ""));
                                                            %>
                                                    </div>
                                                </div>
                                                <div class="control-group">
                                                    <label class="control-label">Gender</label> 
                                                    <div class="controls"><%
                                                            out.print(t.makeReferenceList("Gender", "type", ""));
                                                            %>
                                                    </div>
                                                </div>

                                                <div class="control-group">
                                                    <label class="control-label" for="atMortBodyEstAge">Age estimate</label>
                                                    <div class="controls">
                                                        <input type="text" name="atMortBodyEstAge" id="atMortBodyEstAge"/> 
                                                    </div>
                                                </div>

                                            </fieldset>

                                            <fieldset class="fieldset">     
                                                <legend class="legend"><h4>Property/evidence</h4></legend>
                                                <div class="control-group">
                                                    <label class="control-label" for="atMortFPSpropertyDescr">Description</label> 
                                                    <div class="controls">
                                                        <textarea cols="50" rows="3" id="atMortFPSpropertyDescr" name="atMortFPSpropertyDescr"> </textarea>
                                                    </div>
                                                </div>

                                                <div class="control-group">
                                                    <label class="control-label" for="atMortFPSpropertyName">FPS member name:</label> 
                                                    <div class="controls">
                                                        <input type="text" name="atMortFPSpropertyName" id="atMortFPSpropertyName"/> 
                                                    </div>
                                                </div>
                                                <div class="control-group">
                                                    <label class="control-label" for="atMortFPSpropertySurname">FPS member surname:</label> 
                                                    <div class="controls">
                                                        <input type="text" name="atMortFPSpropertySurname" id="atMortFPSpropertySurname"/> 
                                                    </div>
                                                </div>

                                                <div class="offset4">
                                                    <input    class="btn btn-primary" onclick="displayResult('atMortFPSpropertyTable', 'atMortFPSpropertyDescr', 'atMortFPSpropertyName', 'atMortFPSpropertySurname')" type="button" value="Add Item" /> 
                                                    <%--Display save result --%> 
                                                </div>
                                                <br/> <br/>
                                                <table id="atMortFPSpropertyTable" border="1">
                                                    <tr>
                                                        <th width="60"> select </th>
                                                        <th width="150"> Description </th>
                                                        <th width="150">FPS Name </th>
                                                        <th width="150">FPS Surname </th>

                                                    </tr>

                                                </table>
                                                <br/>
                                                <div class="offset5">
                                                    <input    class="btn btn-primary" onclick=" deleteRow('atMortFPSpropertyTable')" type="button" value="Delete" /> 
                                                    <%--Display save result --%> 
                                                </div>
                                                <br/><br/>

                                            </fieldset>

                                            <div class="offset5">
                                                <input type="submit"  class="btn btn-primary"    value="Add Body File" /> 
                                                <%--Display save result --%> 
                                            </div>
    </body>
</html>
