<%-- 
    Document   : Admin
    Created on : 12 Apr 2013, 12:19:36 PM
    Author     : Sandile
 
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <title>MMS Administration</title>
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.4/jquery.min.js"></script>
        <link type="text/css" rel="stylesheet"  href="bootstrap/css/bootstrap.css">           
        <script src="bootstrap/js/bootstrap-tabs.js"></script>
        <script src="bootstrap/js/bootstrap.min.js"></script>
        <link type="text/css" rel="stylesheet"  href="CSS/Design.css">
        <script src="js/jquery-1.7.1.min.js"></script>
        <script src="js/jquery.validate.min.js"></script>
       <script src="js/script.js"></script>
         <link  type="text/css" href="CSS files/style.css" rel="stylesheet">
    </head>
    <body>  
      

        <%
            String userResult = "";
            String addUserTab = "";
            String currentUserTab = "";
            if (null != session.getAttribute("result")) {
               userResult= session.getAttribute("result").toString();
                  if (null != session.getAttribute("tab")) {
               addUserTab= session.getAttribute("tab").toString();                 
               currentUserTab="";
             }
            }else{
             addUserTab= "";
             currentUserTab="active";
            }
            
             
            
            
        %>
    
        <p>
            <span style="float: left">Welcome Mrs Admin </span>
            <span style="float: right">Logout  .</span>
        </p>
        <div align="center"><h1><img src="Images/logo.jpg" width="75" height="75"> Gauteng MMS Administration</h1></div>

        <%-- starting of main tabs --%>
        <div class="tabbable">
            <ul class="nav nav-tabs " data-tabs="tabs">
                <li class="active"><a href="#User" data-toggle="tab">Users</a> </li>
                <li><a href="#RefList" data-toggle="tab">Reference Lists</a></li>       
            </ul>
            <%-- contents of main tabs --%>
            <div class="tab-content" >
                <div id="User" class="tab-pane active">  
                    <div align="center"><h2>Users </h2> </div>
                    <%-- Users tab content --%>
                    <div class="tabbable">
                        <%-- Users tab has 2 tabs, and they are the following --%>
                        <ul class="nav nav-tabs " data-tabs="tabs">
                            <li class="<%out.println( String.valueOf(currentUserTab));%>"><a href="#cUser" data-toggle="tab">Current Users</a> </li>
                            <li class="<%out.println( String.valueOf(addUserTab));%> "><a href="#aUser" data-toggle="tab">Add User</a></li>       
                        </ul>
                        
                        <div class="tab-content" >
                            <div id="cUser" class="tab-pane <%out.println( String.valueOf(currentUserTab));%>">  
                                <div align="center"><h2>Users </h2> </div>
                                <%--  Current user content --%>
                                <table border="1" class="bordered-table">
                                    <tr>
                                        <td width="150"><H4>Name</H4></td>
                                        <td width="150"><H4>Surname</H4></td>
                                        <td width="150"><H4>Personnel number</H4></td>
                                        <td width="150"><H4>Rank/Position<H4></td>
                                                    <td width="150"><H4>Email Address<H4></td>

                                                                </tr>
                                                                <tr>
                                                                    <td width="100" height="30"><H4></H4></td>
                                                                    <td width="100" height="30"><H4></H4></td>
                                                                    <td width="100" height="30"><H4></H4></td>
                                                                    <td width="100" height="30"><H4></H4></td>
                                                                    <td width="100" height="30"><H4></H4></td>

                                                                </tr>
                                                                <tr>
                                                                    <td width="100" height="30"><H4></H4></td>
                                                                    <td width="100" height="30"><H4></H4></td>
                                                                    <td width="100" height="30"><H4></H4></td>
                                                                    <td width="100" height="30"><H4></td>
                                                                    <td width="100"height="30"><H4></td>
                                                                </tr>
                                                                <tr>
                                                                    <td width="100" height="30"><H4></H4></td>
                                                                    <td width="100" height="30"><H4></H4></td>
                                                                    <td width="100" height="30"><H4></H4></td>
                                                                    <td width="100" height="30"><H4></td>
                                                                    <td width="100"height="30"><H4></td>
                                                                </tr>
                                                                <tr>
                                                                    <td width="100" height="30"><H4></H4></td>
                                                                    <td width="100" height="30"><H4></H4></td>
                                                                    <td width="100" height="30"><H4></H4></td>
                                                                    <td width="100" height="30"><H4></td>
                                                                    <td width="100"height="30"><H4></td>
                                                                </tr>
                                                                </table>

                                                                <br>

                                                                <input type="button" value="Deactivate" onClick="Edit()">
                                                                <input type="button" value="Edit" onClick="Edit()">


                                                                </div>
                                                                <div id="aUser" class="tab-pane <%out.println( String.valueOf( addUserTab));%> ">  
                                                                    <%--  Add user content --%>
                                                                    <div align="center"><h2>Add User </h2> </div>  

                                                                    <form name="AddUser" id="AddUser" method="post" action="ReferenceListServlet" class="form-horizontal">

                                                                        <div class="offset2 span7 ">
                                                                            <input type="text" name="form" value="AddUser" style="visibility: hidden" />
                                                                            <fieldset>
                                                                                <legend>User Personal Details</legend>
                                                                                <div class="control-group   error">
                                                                                                                                
                                                                                    <label  class="control-label  " id="firstName"   for="firstName">Full Name(s):</label> 
                                                                                    <div class="controls">
                                                                                        <input type="text" name="firstName"  id="firstName"  /> 
                                                                                    </div>
                                                                                </div>

                                                                                <div class="control-group error ">
                                                                                    <label  class="control-label" id="surname" for="surname">Surname:</label> 
                                                                                    <div class="controls">
                                                                                        <input  type="text" name="surname"  id="surname" />
                                                                                    </div>
                                                                                </div>

                                                                                <div class="control-group error ">
                                                                                    <label  class="control-label" for="email">Email:</label> 
                                                                                    <div class="controls">
                                                                                        <input type="text" name="email"  id="email" />
                                                                                    </div>
                                                                                </div>
                                                                            </fieldset>

                                                                            </br> </br>

                                                                            <fieldset>
                                                                                <legend>User Employment Details</legend>
                                                                                <div class="control-group error ">
                                                                                    <label  class="control-label" for="personnelNumber">Personnel Number:</label>
                                                                                    <div class="controls">
                                                                                        <input type="text" name="personnelNumber"  id="personnelNumber"  />
                                                                                    </div>
                                                                                </div>

                                                                                <div class="control-group error ">
                                                                                    <label  class="control-label" for="level">Access Level:</label>
                                                                                    <%-- Drop down list for occupation --%>
                                                                                    <div class="controls">
                                                                                        <select name="level" id="Level">
                                                                                            <option value=""> <% out.println( String.valueOf("-Please Select-")); %></option>
                                                                                            <option value="1">Supervisor</option>
                                                                                            <option value="2">FPS Officer</option>
                                                                                            <option value="3">Pathologist</option>
                                                                                            <option value="4">Administrator</option>

                                                                                        </select>
                                                                                    </div>
                                                                                </div>

                  
                                                                                <div class="control-group error ">
                                                                                    <label  class="control-label" for="Active">Active:</label>
                                                                                    <%-- Drop down list for rank --%>
                                                                                    <div class="controls">
                                                                                        <select name="Active" tabindex="1" id="Active">
                                                                                             <option value=""> <% out.println( String.valueOf("-Please Select-")); %></option>
                                                                                            <option value="0">False</option>
                                                                                            <option value="1">True</option>
                                                                                        </select>
                                                                                    </div>
                                                                                </div>

                                                                            </fieldset>
                                                                            <br/> <br/>                                 
                                                                            <div class="offset4">
                                                                                <input type="submit"  class="btn btn-primary" type="button" value="Add User" /> 
                                                                               <label  class="control-label " > <% out.println( String.valueOf( userResult)); %></label>
                                                                                   
                                                                            </div>

                                                                            <br/> <br/> 

                                                                        </div>
                                                                    </form>
                                                                </div>           
                                                                </div>

                                                                </div>       
                                                                </div>
                                                                <div id="RefList" class="tab-pane "> 
                                                                    <%-- Content of reference list tab --%>
                                                                    <div align="center"><h2>Reference Lists </h2> </div> 
                                                                    <div class="tabbable">
                                                                        <%-- reference list  tab has 20 tabs, and they are the following --%>
                                                                        <ul class="nav nav-tabs " data-tabs="tabs">

                                                                            <li class="active"><a href="#inst" data-toggle="tab">Institution</a> </li>
                                                                            <li><a href="#anlysis" data-toggle="tab">Type of Analysis</a></li>
                                                                            <li><a href="#prop" data-toggle="tab">Property</a></li>
                                                                            <li><a href="#vehicles" data-toggle="tab">Vehicles</a></li>
                                                                            <li><a href="#rank" data-toggle="tab">Rank</a></li>
                                                                            <li><a href="#gender" data-toggle="tab">Gender</a></li>
                                                                            <li><a href="#occupation" data-toggle="tab">Occupation</a></li>
                                                                            <li><a href="#race" data-toggle="tab">Race</a></li>
                                                                            <li><a href="#mStatus" data-toggle="tab">Marital Status</a></li>
                                                                            <li><a href="#org" data-toggle="tab">Organisation</a></li>
                                                                            <li><a href="#province" data-toggle="tab">Province</a></li>
                                                                            <li><a href="#icd10Codes" data-toggle="tab">ICD10 Codes</a></li>
                                                                            <li><a href="#mDeath" data-toggle="tab">Manner of Death</a></li>
                                                                            <li><a href="#sType" data-toggle="tab">Sample Type</a></li>
                                                                            <li><a href="#status" data-toggle="tab">Status</a></li>
                                                                            <li><a href="#relationship" data-toggle="tab">Relationship</a></li>

                                                                        </ul>
                                                                        <div class="tab-content" >
                                                                            <div id="inst" class="tab-pane active">  
                                                                                <div align="center"><h2>Institution </h2> </div>
                                                                            </div>
                                                                            <div id="anlysis" class="tab-pane "> 
                                                                                <div align="center"><h2>Type of Analysis </h2> </div>                   
                                                                            </div>

                                                                            <div id="prop" class="tab-pane "> 
                                                                                <div align="center"><h2>Property</h2> </div>                   
                                                                            </div>

                                                                            <div id="vehicles" class="tab-pane "> 
                                                                                <div align="center"><h2>Vehicles</h2> </div>                   
                                                                            </div>

                                                                            <div id="rank" class="tab-pane "> 
                                                                                <div align="center"><h2>Rank</h2> </div>                   
                                                                            </div>

                                                                            <div id="gender" class="tab-pane "> 
                                                                                <div align="center"><h2>Gender</h2> </div>                   
                                                                            </div>

                                                                            <div id="occupation" class="tab-pane "> 
                                                                                <div align="center"><h2>Occupation</h2> </div>                   
                                                                            </div>

                                                                            <div id="race" class="tab-pane "> 
                                                                                <div align="center"><h2>Race </h2> </div>                   
                                                                            </div>

                                                                            <div id="mStatus" class="tab-pane "> 
                                                                                <div align="center"><h2>Marital Status </h2> </div>                   
                                                                            </div>

                                                                            <div id="org" class="tab-pane "> 
                                                                                <div align="center"><h2> Organisation </h2> </div>                   
                                                                            </div>

                                                                            <div id="province" class="tab-pane "> 
                                                                                <div align="center"><h2> Province </h2> </div>                   
                                                                            </div>

                                                                            <div id="icd10Codes" class="tab-pane "> 
                                                                                <div align="center"><h2>ICD10 Codes </h2> </div>                   
                                                                            </div>

                                                                            <div id="mDeath" class="tab-pane "> 
                                                                                <div align="center"><h2> Manner of Death</h2> </div>                   
                                                                            </div>

                                                                            <div id="sType" class="tab-pane "> 
                                                                                <div align="center"><h2>Sample Type</h2> </div>                   
                                                                            </div>

                                                                            <div id="status" class="tab-pane "> 
                                                                                <div align="center"><h2>Status</h2> </div>                   
                                                                            </div>

                                                                            <div id="relationship" class="tab-pane "> 
                                                                                <div align="center"><h2>Relationship</h2> </div>                   
                                                                            </div>
                                                                        </div>

                                                                    </div> 
                                                                </div>           
                                                                </div>

                                                                </div>
      
                                                                </body>
                                                                </html>