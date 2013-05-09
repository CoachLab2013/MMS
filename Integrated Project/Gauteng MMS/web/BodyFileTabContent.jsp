<%-- 
    Document   : newjsp
    Created on : 22 Apr 2013, 9:57:47 AM
    Author     : Lady
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <link type="text/css" rel="stylesheet"  href="bootstrap/css/bootstrap.css">
        <link type="text/css" rel="stylesheet"  href="CSS files/datetimepicker.css">
        <link type="text/css" rel="stylesheet"  href="bootstrap/css/bootstrap-datetimepicker.min.css">  

        <script type="text/javascript"  src="js/jquery-1.9.1.js" charset="UTF-8"></script>
        <script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="bootstrap/js/bootstrap-datetimepicker.js" charset="UTF-8"></script>
        <script type="text/javascript" src="bootstrap/js/bootstrap-datetimepicker.min.js" charset="UTF-8"></script>

        <script  src="bootstrap/js/bootstrap-tabs.js"></script>



        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>

    <body>
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
                    <div align="center"><h2>New Body File </h2> </div>
                    <div class="offset1  span8 form-horizontal"  >

                        <div class="control-group">
                            <label class="control-label" for="inncidentNum">Incident Number</label> 
                            <div class="controls">
                                <select id="inncidentNum" name="inncidentNum">                            
                                    <option>12332</option>
                                    <option>22222</option>
                                </select>
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
                                <li class="active"><a href="#atScene" data-toggle="tab">Receive body from scene</a> </li>
                                <li><a href="#atMortuary" data-toggle="tab">Receive body at mortuary</a></li>   

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
                                            <label class="control-label" for="organisation">Organisation</label> 
                                            <div class="controls">
                                                <select id="organisation" name="organisation">                            
                                                    <option>12332</option>
                                                    <option>22222</option>
                                                </select>
                                            </div>
                                        </div> 

                                    </fieldset>

                                    <fieldset class="fieldset">
                                        <legend class="legend"><h4>SAPS member handing over the body:</h4></legend>
                                        <div class="control-group">
                                            <label class="control-label" for="Sname">Name</label> 
                                            <div class="controls">
                                                <input type="text" name="Sname" id="Sname"/> 
                                            </div>
                                        </div>
                                        <div class="control-group">
                                            <label class="control-label" for="Ssurname">Surname</label>
                                            <div class="controls">
                                                <input type="text" name="Ssurname" id="Ssurname"/> 
                                            </div>
                                        </div>
                                        <div class="control-group">
                                            <label class="control-label" for="Scell">Cell phone number</label>
                                            <div class="controls">
                                                <input type="text" name="Scell" id="Scell"/> 
                                            </div>
                                        </div>

                                        <div class="control-group">
                                            <label class="control-label" for="Scell">Cell phone number</label>
                                            <div class="controls">
                                                <input type="text" name="Scell" id="Scell"/> 
                                            </div>
                                        </div>
                                        <div class="control-group">
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
                                            <label class="control-label" for="Scell">Cell phone number</label>
                                            <div class="controls">
                                                <input type="text" name="Scell" id="Scell"/> 
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
                                            <label class="control-label" for="atScene">Body Classification</label> 
                                            <div class="controls">
                                                <select id="atScene" name="atScene">                            
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
                                                <input type="text" name="Baddress" id="Baddress"/> 
                                            </div>
                                        </div>

                                        <div class="control-group">
                                            <label class="control-label" for="Brace">Race</label> 
                                            <div class="controls">
                                                <select id="Brace" name="Brace">                            
                                                    <option>Black</option>

                                                </select>
                                            </div>
                                        </div>
                                        <div class="control-group">
                                            <label class="control-label" for="Bgender">Gender</label> 
                                            <div class="controls">
                                                <select id="Bgender" name="Bgender">                            
                                                    <option>Male</option>

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

                                        <div class="control-group">
                                            <label class="control-label" for="Fdate">Date  </label> 

                                            <div class="input-append date " id="datepicker" name="Fdate" >

                                                <input size="16" data-format="yyyy-MM-dd" type="text" value="" readonly>
                                                <span class="add-on"><i class="icon-calendar"></i></span> 

                                            </div>
                                        </div>

                                        <div class="control-group">
                                            <label class="control-label" for="Ftime">Time  </label> 

                                            <div class="input-append date " id="timepicker" name="Ftime" >

                                                <input size="16" data-format="hh:mm" type="text" value="" readonly>
                                                <span class="add-on"><i class="icon-time"></i></span> 

                                            </div>
                                        </div>

                                        <script type="text/javascript">
                                            $('#datepicker').datetimepicker({
                                                pickTime: false,
                                                autoclose: true
                                            });

                                            $('#timepicker').datetimepicker({
                                                pickDate: false,
                                                autoclose: true,
                                                pickSeconds: false

                                            });
                                        </script>
                                    </fieldset>

                                    <fieldset class="fieldset">     
                                        <legend class="legend"><h4>Alleged date and time of injury:</h4></legend>

                                        <div class="control-group">
                                            <label class="control-label" for="Idate">Date</label> 

                                            <div class="input-append date " id="datepicker" name="Idate" >

                                                <input size="16" data-format="yyyy-MM-dd" type="text" value="" readonly>
                                                <span class="add-on"><i class="icon-calendar"></i></span> 

                                            </div>
                                        </div>

                                        <div class="control-group">
                                            <label class="control-label" for="Ltime">Time</label> 

                                            <div class="input-append date " id="timepicker" name="Ltime">

                                                <input size="16" data-format="hh:mm" type="text" value="" readonly>
                                                <span class="add-on"><i class="icon-time"></i></span> 

                                            </div>
                                        </div>

                                        <script type="text/javascript">
                                            $('#datepicker').datetimepicker({
                                                pickTime: false,
                                                autoclose: true
                                            });

                                            $('#timepicker').datetimepicker({
                                                pickDate: false,
                                                autoclose: true,
                                                pickSeconds: false

                                            });
                                        </script>
                                    </fieldset>
                                    <fieldset class="fieldset">     
                                        <legend class="legend"><h4>Alleged date and time of death:</h4></legend>

                                        <div class="control-group">
                                            <label class="control-label" for="Ddate">Date  </label> 

                                            <div class="input-append date " id="datepicker" name="Ddate" >

                                                <input size="16" data-format="yyyy-MM-dd" type="text" value="" readonly>
                                                <span class="add-on"><i class="icon-calendar"></i></span> 

                                            </div>
                                        </div>

                                        <div class="control-group">
                                            <label class="control-label" for="Dtime">Time  </label> 

                                            <div class="input-append date " id="timepicker" name="Dtime" >

                                                <input size="16" data-format="hh:mm" type="text" value="" readonly>
                                                <span class="add-on"><i class="icon-time"></i></span> 

                                            </div>
                                        </div>

                                        <script type="text/javascript">
                                            $('#datepicker').datetimepicker({
                                                pickTime: false,
                                                autoclose: true
                                            });

                                            $('#timepicker').datetimepicker({
                                                pickDate: false,
                                                autoclose: true,
                                                pickSeconds: false

                                            });
                                        </script>
                                    </fieldset>

                                    <fieldset class="fieldset">     
                                        <legend class="legend"><h4>Date and time of FPS receiving the body at scene:</h4></legend>

                                        <div class="control-group">
                                            <label class="control-label" for="Rdate">Date  </label> 

                                            <div class="input-append date " id="datepicker" name="Rdate" >

                                                <input size="16" data-format="yyyy-MM-dd" type="text" value="" readonly>
                                                <span class="add-on"><i class="icon-calendar"></i></span> 

                                            </div>
                                        </div>

                                        <div class="control-group">
                                            <label class="control-label" for="Rtime">Time  </label> 

                                            <div class="input-append date " id="timepicker" name="Rtime" >

                                                <input size="16" data-format="hh:mm" type="text" value="" readonly>
                                                <span class="add-on"><i class="icon-time"></i></span> 

                                            </div>
                                        </div>

                                        <script type="text/javascript">
                                            $('#datepicker').datetimepicker({
                                                pickTime: false,
                                                autoclose: true
                                            });

                                            $('#timepicker').datetimepicker({
                                                pickDate: false,
                                                autoclose: true,
                                                pickSeconds: false

                                            });
                                        </script>
                                    </fieldset>

                                    <fieldset class="fieldset">     
                                        <legend class="legend"><h4>Date and time of FPS receiving the body at facility:</h4></legend>

                                        <div class="control-group">
                                            <label class="control-label" for="Facidate">Date  </label> 

                                            <div class="input-append date " id="datepicker" name="Facidate" >

                                                <input size="16" data-format="yyyy-MM-dd" type="text" value="" readonly>
                                                <span class="add-on"><i class="icon-calendar"></i></span> 

                                            </div>
                                        </div>

                                        <div class="control-group">
                                            <label class="control-label" for="Facitime">Time  </label> 

                                            <div class="input-append date " id="timepicker" name="Facitime" >

                                                <input size="16" data-format="hh:mm" type="text" value="" readonly>
                                                <span class="add-on"><i class="icon-time"></i></span> 

                                            </div>
                                        </div>

                                        <script type="text/javascript">
                                            $('#datepicker').datetimepicker({
                                                pickTime: false,
                                                autoclose: true
                                            });

                                            $('#timepicker').datetimepicker({
                                                pickDate: false,
                                                autoclose: true,
                                                pickSeconds: false

                                            });
                                        </script>
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
                                                <select id="atScene" name="Cause">                            
                                                    <option>Shot</option>
                                                    <option>Fell</option>
                                                    <option>Coding</option>
                                                </select>
                                            </div>
                                        </div>

                                    </fieldset>

                                    <fieldset class="fieldset  ">     
                                        <legend class="legend"><h4>Property/Evidence:</h4></legend>

                                        <fieldset class="fieldset offset1  ">     
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
                                                <input type="submit"  class="btn btn-primary" onclick="displayResult('sapsTable', 'SAPSdescr', 'SAPSname', 'SAPSsurname')" type="button" value="Add Item" /> 
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
                                                <input type="submit"  class="btn btn-primary" onclick=" deleteRow('sapsTable')" type="button" value="Delete" /> 
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

                                            </script>
                                        </fieldset>
                                        <br/> <br/>
                                        <fieldset class="fieldse offset1">     
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
                                                <input type="submit"  class="btn btn-primary" onclick="displayResult('FPSTable', 'FPSdescr', 'FPSname', 'FPSsurname')" type="button" value="Add Item" /> 
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
                                                <input type="submit"  class="btn btn-primary" onclick=" deleteRow('FPSTable')" type="button" value="Delete" /> 
                                                <%--Display save result --%> 
                                            </div>

                                        </fieldset>

                                    </fieldset>
                                </div>

                                <div id="atMortuary" class="tab-pane ">
                                    <div align="center"><h2>Receive body at mortuary</h2> </div>
                                </div>   

                            </div>
                        </div>                       
                    </div>



                </div>   

                <div id="EditBodyFiles" class="tab-pane "> 
                    <jsp:include page="EditBodyFileTabContent.jsp"/>
                </div>

                <div id="LinkBodyFiles" class="tab-pane ">    
                </div>

            </div>
        </div>



    </body>

</html>
