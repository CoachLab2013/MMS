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

        <%
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
 
        %>
        <div class="tabbable">
            <ul class="nav nav-tabs " data-tabs="tabs">
                <li class="active"><a href="#OpenBodyFiles" data-toggle="tab">Open Body Files</a> </li>
                <li><a href="#NewBodyFiles" data-toggle="tab">New Body File</a></li>   
                <li><a href="#EditBodyFiles" data-toggle="tab">Edit Body Files</a></li>
                <li><a href="#LinkBodyFiles" data-toggle="tab">Link Body Files</a></li> 
            </ul>
            <div class="tab-content">
                <div id="OpenBodyFiles" class="tab-pane active">                             
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
                                       <%-- <select id="inncidentNum" name="inncidentNum">   
                                            <option value=""> <% out.println(String.valueOf("-Please Select-"));%></option>

                                            <%
                                                for (int i = 0; i < incidentsList.size(); i++) {
                                            %>
                                            <option><% out.print(incidentsList.get(i).getIncidentLogNumber());%> </option>

                                            <%
                                                }
                                            %>


                                        </select> --%> 
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
                                        <div id="atScene" class="tab-pane active"> 
                                            <div align="center"><h2>Receive body from scene</h2> </div>
                                            <fieldset class="fieldset">
                                                <legend class="legend"><h4>Body received from:</h4></legend>
                                                <div class="control-group">
                                                    <label class="control-label" for="Rname">Name</label> 
                                                    <div class="controls">
                                                        <input type="text" name="Rname" id="Rname"/> 
                                                    </div>
                                                </div>
                                                <div class="control-group">
                                                    <label class="control-label" for="Rsurname">Surname</label>
                                                    <div class="controls">
                                                        <input type="text" name="Rsurname" id="Rsurname"/> 
                                                    </div>
                                                </div>
                                                <div class="control-group">
                                                    <label class="control-label" for="organisation">Institution</label> 
                                                    <div class="controls">
                                                        <select id="organisation" name="organisation">                         
                                                            <option value=""> <% out.println(String.valueOf("-Please Select-"));%></option>

                                                            <%
                                                                for (int i = 0; i < institutionList.size(); i++) {
                                                            %>
                                                            <option><% out.print(institutionList.get(i));%> </option>

                                                            <%
                                                                }
                                                            %>



                                                        </select>
                                                    </div>
                                                </div> 

                                            </fieldset>

                                            <fieldset class="fieldset">
                                                <legend class="legend"><h4>SAPS member handing over the body:</h4></legend>
                                                <div class="control-group error">
                                                    <label class="control-label" for="Sname">Name</label> 
                                                    <div class="controls">
                                                        <input type="text" name="Sname" id="Sname"/> 
                                                    </div>
                                                </div>
                                                <div class="control-group error">
                                                    <label class="control-label" for="Ssurname">Surname</label>
                                                    <div class="controls">
                                                        <input type="text" name="Ssurname" id="Ssurname"/> 
                                                    </div>
                                                </div>
                                                <div class="control-group error">
                                                    <label class="control-label" for="Scell">Cell phone number</label>
                                                    <div class="controls">
                                                        <input type="text" name="Scell" id="Scell"/> 
                                                    </div>
                                                </div>

                                                <div class="control-group error">
                                                    <label class="control-label" for="Srank">Rank</label>
                                                    <div class="controls">
                                                        <input type="text" name="Srank" id="Srank"/> 
                                                    </div>
                                                </div>

                                            </fieldset>

                                            <fieldset class="fieldset">
                                                <legend class="legend"><h4>FPS member receiving body:</h4></legend>
                                                <div class="control-group">
                                                    <label class="control-label" for="Fname">Name</label> 
                                                    <div class="controls">
                                                        <input type="text" name="Fname" id="Fname"/> 
                                                    </div>
                                                </div>
                                                <div class="control-group">
                                                    <label class="control-label" for="Fsurname">Surname</label>
                                                    <div class="controls">
                                                        <input type="text" name="Fsurname" id="Fsurname"/> 
                                                    </div>
                                                </div>
                                                <div class="control-group">
                                                    <label class="control-label" for="Fpersal">Persal number</label>
                                                    <div class="controls">
                                                        <input type="text" name="Fpersal" id="Fpersal"/> 
                                                    </div>
                                                </div>

                                                <div class="control-group">
                                                    <label class="control-label" for="Fcell">Cell phone number</label>
                                                    <div class="controls">
                                                        <input type="text" name="Fcell" id="Fcell"/> 
                                                    </div>
                                                </div>
                                                <div class="control-group">
                                                    <label class="control-label" for="Frank">Rank</label>
                                                    <div class="controls">
                                                        <input type="text" name="Frank" id="Frank"/> 
                                                    </div>
                                                </div>

                                            </fieldset>

                                            <fieldset class="fieldset">
                                                <legend class="legend"><h4>Pathologist at scene:</h4></legend>

                                                <div class="control-group">
                                                    <label class="control-label" for="atScene">Was pathologist at scene</label> 
                                                    <div class="controls">
                                                        <select id="atScene" name="atScene">                            
                                                            <option>Yes</option>
                                                            <option>No</option>
                                                        </select>
                                                    </div>
                                                </div> 
                                                <div class="control-group">
                                                    <label class="control-label" for="Pname">Name</label> 
                                                    <div class="controls">
                                                        <input type="text" name="Pname" id="Pname"/> 
                                                    </div>
                                                </div>
                                                <div class="control-group">
                                                    <label class="control-label" for="Psurname">Surname</label>
                                                    <div class="controls">
                                                        <input type="text" name="Psurname" id="Psurname"/> 
                                                    </div>
                                                </div>


                                                <div class="control-group">
                                                    <label class="control-label" for="Prank">Rank</label>
                                                    <div class="controls">
                                                        <input type="text" name="Prank" id="Prank"/> 
                                                    </div>
                                                </div>

                                            </fieldset>

                                            <fieldset class="fieldset">
                                                <legend class="legend"><h4>Body details:</h4></legend>

                                                <div class="control-group">
                                                    <label class="control-label" for="BodyClass">Body Classification</label> 
                                                    <div class="controls">
                                                        <select id="BodyClass" name="BodyClass">                            
                                                            <option>Head</option>
                                                            <option>Eye</option>
                                                            <option>Body</option>
                                                        </select>
                                                    </div>
                                                </div> 

                                                <div class="control-group">
                                                    <label class="control-label" for="Bname">Name</label> 
                                                    <div class="controls">
                                                        <input type="text" name="Bname" id="Bname"/> 
                                                    </div>



                                                </div>
                                                <div class="control-group">
                                                    <label class="control-label" for="Bsurname">Surname</label>
                                                    <div class="controls">
                                                        <input type="text" name="Bsurname" id="Bsurname"/> 
                                                    </div>
                                                </div>


                                                <div class="control-group">
                                                    <label class="control-label" for="Bid">ID number</label>
                                                    <div class="controls">
                                                        <input type="text" name="Bid" id="Bid"/> 
                                                    </div>
                                                </div>


                                                <div class="control-group">
                                                    <label class="control-label" for="Baddress">Address</label>
                                                    <div class="controls">

                                                        <textarea cols="50" rows="3" id="Baddress" name="Baddress"> </textarea>

                                                    </div>
                                                </div>

                                                <div class="control-group">
                                                    <label class="control-label" for="Brace">Race</label> 
                                                    <div class="controls">
                                                        <select id="Brace" name="Brace">                            
                                                            <option value=""> <% out.println(String.valueOf("-Please Select-"));%></option>
                                                            <%
                                                                for (int i = 0; i < raceList.size(); i++) {
                                                            %>
                                                            <option><% out.print(raceList.get(i));%> </option>

                                                            <%
                                                                }
                                                            %>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="control-group">
                                                    <label class="control-label" for="Bgender">Gender</label> 
                                                    <div class="controls">
                                                        <select id="Bgender" name="Bgender">                            
                                                            <option value=""> <% out.println(String.valueOf("-Please Select-"));%></option>
                                                            <%
                                                                for (int i = 0; i < genderList.size(); i++) {
                                                            %>
                                                            <option><% out.print(genderList.get(i));%> </option>

                                                            <%
                                                                }
                                                            %>

                                                        </select>
                                                    </div>
                                                </div>

                                                <div class="control-group">
                                                    <label class="control-label" for="Bage">Age estimate</label>
                                                    <div class="controls">
                                                        <input type="text" name="Bage" id="Bage"/> 
                                                    </div>
                                                </div>

                                            </fieldset>

                                            <fieldset class="fieldset">     
                                                <legend class="legend"><h4>Date and time body found:</h4></legend>

                                                <div class="control-group error">
                                                    <label class="control-label" for="Fdate">Date</label> 

                                                    <div class="input-append date " id="datepicker" name="Fdate" >

                                                        <input size="16" id="FoundDate" name="FoundDate" data-format="yyyy-MM-dd" type="text" value="" readonly>
                                                        <span class="add-on"><i class="icon-calendar"></i></span> 

                                                    </div>
                                                </div>

                                                <div class="control-group error">
                                                    <label class="control-label" for="Ftime">Time  </label> 

                                                    <div class="input-append date " id="timepicker" name="Ftime" >

                                                        <input size="16" id="FoundTime" name="FoundTime" data-format="hh:mm" type="text" value="" readonly>
                                                        <span class="add-on"><i class="icon-time"></i></span> 

                                                    </div>
                                                </div>


                                            </fieldset>

                                            <fieldset class="fieldset">     
                                                <legend class="legend"><h4>Alleged date and time of injury:</h4></legend>

                                                <div class="control-group">
                                                    <label class="control-label" for="Idate">Date</label> 

                                                    <div class="input-append date " id="datepicker2" name="Idate" >

                                                        <input size="16" id="InjuryDate" name="InjuryDate" data-format="yyyy-MM-dd" type="text" value="" readonly>
                                                        <span class="add-on"><i class="icon-calendar"></i></span> 

                                                    </div>
                                                </div>

                                                <div class="control-group">
                                                    <label class="control-label" for="Ltime">Time</label> 

                                                    <div class="input-append date " id="timepicker2" name="Ltime">

                                                        <input size="16" id="InjuryTime" name="InjuryTime" data-format="hh:mm" type="text" value="" readonly>
                                                        <span class="add-on"><i class="icon-time"></i></span> 

                                                    </div>
                                                </div>

                                            </fieldset>
                                            <fieldset class="fieldset">     
                                                <legend class="legend"><h4>Alleged date and time of death:</h4></legend>

                                                <div class="control-group">
                                                    <label class="control-label" for="Ddate">Date</label> 

                                                    <div class="input-append date " id="datepicker3" name="Ddate" >

                                                        <input size="16" id="DeathDate" name="DeathDate" data-format="yyyy-MM-dd" type="text" value="" readonly>
                                                        <span class="add-on"><i class="icon-calendar"></i></span> 

                                                    </div>
                                                </div>

                                                <div class="control-group">
                                                    <label class="control-label" for="Dtime">Time  </label> 

                                                    <div class="input-append date " id="timepicker3" name="Dtime" >

                                                        <input size="16" id="DeathTime" name="DeathTime" data-format="hh:mm" type="text" value="" readonly>
                                                        <span class="add-on"><i class="icon-time"></i></span> 

                                                    </div>
                                                </div>

                                            </fieldset>

                                            <fieldset class="fieldset">     
                                                <legend class="legend"><h4>Date and time of FPS receiving the body at scene:</h4></legend>

                                                <div class="control-group error">
                                                    <label class="control-label" for="Rdate">Date  </label> 

                                                    <div class="input-append date " id="datepicker4" name="Rdate" >

                                                        <input size="16" id="ReceivedSDate" name="ReceivedSDate data-format="yyyy-MM-dd" type="text" value="" readonly>
                                                               <span class="add-on"><i class="icon-calendar"></i></span> 

                                                    </div>
                                                </div>

                                                <div class="control-group error">
                                                    <label class="control-label" for="Rtime">Time  </label> 

                                                    <div class="input-append date " id="timepicker4" name="Rtime" >

                                                        <input size="16"  id="ReceivedSTime" name="ReceivedSTime" data-format="hh:mm" type="text" value="" readonly>
                                                        <span class="add-on"><i class="icon-time"></i></span> 

                                                    </div>
                                                </div>

                                            </fieldset>

                                            <fieldset class="fieldset">     
                                                <legend class="legend"><h4>Date and time of FPS receiving the body at facility:</h4></legend>

                                                <div class="control-group error">
                                                    <label class="control-label" for="Facidate">Date  </label> 

                                                    <div class="input-append date " id="datepicker5" name="Facidate" >

                                                        <input size="16" id="ReceivedFDate" name="ReceivedFDate" data-format="yyyy-MM-dd" type="text" value="" readonly>
                                                        <span class="add-on"><i class="icon-calendar"></i></span> 

                                                    </div>
                                                </div>

                                                <div class="control-group error">
                                                    <label class="control-label" for="Facitime">Time  </label> 

                                                    <div class="input-append date " id="timepicker5" name="Facitime" >

                                                        <input size="16" id="ReceivedFTime" name="ReceivedFTime"  data-format="hh:mm" type="text" value="" readonly>
                                                        <span class="add-on"><i class="icon-time"></i></span> 

                                                    </div>
                                                </div>


                                            </fieldset>

                                            <fieldset class="fieldset">     
                                                <legend class="legend"><h4>Scene details:</h4></legend>
                                                <div class="control-group">
                                                    <label class="control-label" for="SceneO">Scene where incident occured:</label> 
                                                    <div class="controls">
                                                        <select id="SceneO" name="SceneO">                            
                                                            <option>home</option>
                                                            <option>park</option>
                                                            <option>flat</option>
                                                        </select>
                                                    </div>
                                                </div> 

                                                <div class="control-group">
                                                    <label class="control-label" for="DeathAddress">Place of death(Address)</label> 
                                                    <div class="controls">
                                                        <textarea cols="50" rows="3" id="DeathAddress" name="DeathAddress"> </textarea>
                                                    </div>
                                                </div>

                                                <div class="control-group">
                                                    <label class="control-label" for="Cause">External cause or circumstance of injury:</label> 
                                                    <div class="controls">
                                                        <select id="Cause" name="Cause">                            
                                                            <option>Shot</option>
                                                            <option>Fell</option>
                                                            <option>Coding</option>
                                                        </select>
                                                    </div>
                                                </div>

                                            </fieldset>

                                            <fieldset class="fieldset">     
                                                <legend class="legend"><h4>Property/Evidence:</h4></legend>

                                                <fieldset class="fieldset offset1">     
                                                    <legend class="legend"><h5>Taken/ handed over by SAPS:</h5></legend>
                                                    <div class="control-group">
                                                        <label class="control-label" for="SAPSdescr">Description</label> 
                                                        <div class="controls">
                                                            <textarea cols="50" rows="3" id="SAPSdescr" name="SAPSdescr"> </textarea>
                                                        </div>
                                                    </div>

                                                    <div class="control-group">
                                                        <label class="control-label" for="SAPSname">SAPS member name:</label> 
                                                        <div class="controls">
                                                            <input type="text" name="SAPSname" id="SAPSname"/> 
                                                        </div>
                                                    </div>
                                                    <div class="control-group">
                                                        <label class="control-label" for="SAPSsurname">SAPS member surname:</label> 
                                                        <div class="controls">
                                                            <input type="text" name="SAPSsurname" id="SAPSsurname"/> 
                                                        </div>
                                                    </div>

                                                    <div class="offset4">
                                                        <input   class="btn btn-primary" onclick="displayResult('sapsTable', 'SAPSdescr', 'SAPSname', 'SAPSsurname')" type="button" value="Add Item" /> 
                                                        <%--Display save result --%> 
                                                    </div>
                                                    <br/> <br/>
                                                    <table id="sapsTable" border="1">
                                                        <tr>
                                                            <th width="60">select</th>
                                                            <th width="150"> Description </th>
                                                            <th width="150">SAPS Name </th>
                                                            <th width="150">SAPS Surname </th>

                                                        </tr>

                                                    </table>
                                                    <br/>
                                                    <div class="offset5">
                                                        <input   class="btn btn-primary" onclick=" deleteRow('sapsTable')" type="button" value="Delete" /> 
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
                                                                        if (null != chkbox && true == chkbox.checked) {
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
                                                    <legend class="legend"><h5>Taken/ handed over by FPS officer</h5></legend>
                                                    <div class="control-group">
                                                        <label class="control-label" for="FPSdescr">Description</label> 
                                                        <div class="controls">
                                                            <textarea cols="50" rows="3" id="FPSdescr" name="FPSdescr"> </textarea>
                                                        </div>
                                                    </div>

                                                    <div class="control-group">
                                                        <label class="control-label" for="FPSname">FPS member name:</label> 
                                                        <div class="controls">
                                                            <input type="text" name="FPSname" id="FPSname"/> 
                                                        </div>
                                                    </div>
                                                    <div class="control-group">
                                                        <label class="control-label" for="FPSsurname">FPS member surname:</label> 
                                                        <div class="controls">
                                                            <input type="text" name="FPSsurname" id="FPSsurname"/> 
                                                        </div>
                                                    </div>

                                                    <div class="offset4">
                                                        <input   class="btn btn-primary" onclick="displayResult('FPSTable', 'FPSdescr', 'FPSname', 'FPSsurname')" type="button" value="Add Item" /> 
                                                        <%--Display save result --%> 
                                                    </div>
                                                    <br/> <br/>
                                                    <table id="FPSTable" border="1">
                                                        <tr>
                                                            <th width="60"> select </th>
                                                            <th width="150"> Description </th>
                                                            <th width="150">FPS Name </th>
                                                            <th width="150">FPS Surname </th>
                                                        </tr>

                                                    </table>
                                                    <br/>
                                                    <div class="offset5">
                                                        <input    class="btn btn-primary" onclick=" deleteRow('FPSTable')" type="button" value="Delete" /> 
                                                        <%--Display save result --%> 
                                                    </div>
                                                    <br/><br/>
                                                </fieldset>

                                            </fieldset>

                                            <div class="offset5">
                                                <input  type="button"  onclick= "move()" class="btn btn-primary" name="BodyFileNext" id="BodyFileNext"   value="Next" /> 
                                                <%--Display save result --%> 
                                            </div>
                                        </div>


                                        <div id="atMortuary" class="tab-pane "> 

                                            <div align="center"><h2>Receive body at mortuary</h2> </div> 
                                            <br/><br/>

                                            <legend class="legend"><h4></h4></legend>

                                            <div class="control-group">
                                                <label class="control-label" for="EmpR">Employee receiving body:</label> 
                                                <div class="controls">
                                                    <select id="EmpR" name="EmpR">                            
                                                        <option>69696969</option>
                                                        <option>123456</option> 
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="control-group">
                                                <label class="control-label" for="EmpH">Employee handing over body:</label> 
                                                <div class="controls">
                                                    <select id="EmpH" name="EmpH">                            
                                                        <option>69696969</option>
                                                        <option>123456</option> 
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="control-group">
                                                <label class="control-label" for="OrgH">Organisation handing over body :</label> 
                                                <div class="controls">
                                                    <select id="OrgH" name="OrgH">                            
                                                        <option>Eskom</option>
                                                        <option>SAPS</option> 
                                                    </select>
                                                </div>
                                            </div>

                                            <legend class="legend"><h4></h4></legend>

                                            <fieldset class="fieldset">     
                                                <legend class="legend"><h4>Body details</h4></legend>   

                                                <div class="control-group">
                                                    <label class="control-label" for="atMort">Body Classification</label> 
                                                    <div class="controls">
                                                        <select id="atMort" name="atMort">                            
                                                            <option>Head</option>
                                                            <option>Eye</option>
                                                            <option>Body</option>
                                                        </select>
                                                    </div>
                                                </div> 

                                                <div class="control-group">
                                                    <label class="control-label" for="BMname">Name</label> 
                                                    <div class="controls">
                                                        <input type="text" name="BMname" id="BMname"/> 
                                                    </div>



                                                </div>
                                                <div class="control-group">
                                                    <label class="control-label" for="BMsurname">Surname</label>
                                                    <div class="controls">
                                                        <input type="text" name="BMsurname" id="BMsurname"/> 
                                                    </div>
                                                </div>


                                                <div class="control-group">
                                                    <label class="control-label" for="BMid">ID number</label>
                                                    <div class="controls">
                                                        <input type="text" name="BMid" id="BMid"/> 
                                                    </div>
                                                </div>


                                                <div class="control-group">
                                                    <label class="control-label" for="BMaddress">Address</label>
                                                    <div class="controls">
                                                        <textarea cols="50" rows="3" id="BMaddress" name="BMaddress"> </textarea>  
                                                    </div>
                                                </div>

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

                                                <div class="control-group">
                                                    <label class="control-label" for="BMage">Age estimate</label>
                                                    <div class="controls">
                                                        <input type="text" name="BMage" id="BMage"/> 
                                                    </div>
                                                </div>

                                            </fieldset>

                                            <fieldset class="fieldset">     
                                                <legend class="legend"><h4>Property/evidence</h4></legend>
                                                <div class="control-group">
                                                    <label class="control-label" for="MFPSdescr">Description</label> 
                                                    <div class="controls">
                                                        <textarea cols="50" rows="3" id="MFPSdescr" name="MFPSdescr"> </textarea>
                                                    </div>
                                                </div>

                                                <div class="control-group">
                                                    <label class="control-label" for="MFPSname">FPS member name:</label> 
                                                    <div class="controls">
                                                        <input type="text" name="MFPSname" id="MFPSname"/> 
                                                    </div>
                                                </div>
                                                <div class="control-group">
                                                    <label class="control-label" for="MFPSsurname">FPS member surname:</label> 
                                                    <div class="controls">
                                                        <input type="text" name="MFPSsurname" id="MFPSsurname"/> 
                                                    </div>
                                                </div>

                                                <div class="offset4">
                                                    <input    class="btn btn-primary" onclick="displayResult('MFPSTable', 'MFPSdescr', 'MFPSname', 'MFPSsurname')" type="button" value="Add Item" /> 
                                                    <%--Display save result --%> 
                                                </div>
                                                <br/> <br/>
                                                <table id="MFPSTable" border="1">
                                                    <tr>
                                                        <th width="60"> select </th>
                                                        <th width="150"> Description </th>
                                                        <th width="150">FPS Name </th>
                                                        <th width="150">FPS Surname </th>

                                                    </tr>

                                                </table>
                                                <br/>
                                                <div class="offset5">
                                                    <input    class="btn btn-primary" onclick=" deleteRow('MFPSTable')" type="button" value="Delete" /> 
                                                    <%--Display save result --%> 
                                                </div>
                                                <br/><br/>

                                            </fieldset>

                                            <div class="offset5">
                                                <input type="submit"  class="btn btn-primary"    value="Add Body File" /> 
                                                <%--Display save result --%> 
                                            </div>

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
