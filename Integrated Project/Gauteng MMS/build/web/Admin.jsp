<%--
    Document   : Admin
    Created on : 12 Apr 2013, 12:19:36 PM
    Author     : Sandile
 
--%>

<%@page import="database.ICD10CodeLevel1DB"%>
<%@page import="AssistiveClasses.SetDbDetail"%>
<%@page import="servlets.Tools"%>
<%@page import="database.EmployeeDb"%>
<%@page import="java.util.ArrayList"%>
<%@page import="database.Employee"%>
<%@page import="database.DbDetail"%>
<%@page import="database.ReferenceListDb"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>        
        <%

            response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
            response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
            response.setDateHeader("Expires", 0); // Proxies. 
           
                if (session.getAttribute("loggedin") == null) {
                    response.sendRedirect("/Gauteng_MMS/");
                }
                
           
%>

        <link  type="text/css" href="CSS files/style.css" rel="stylesheet">
        <script language="javascript" type="text/javascript" src="js/jquery-1.9.1.js"></script>
        <script language="javascript" type="text/javascript" src="js/jquery.validate.min.js"></script>
        <link type="text/css" rel="stylesheet"  href="bootstrap/css/bootstrap.css">           
        <script src="bootstrap/js/bootstrap-tabs.js"></script>
        <script src="bootstrap/js/bootstrap.min.js"></script>
        <link type="text/css" rel="stylesheet"  href="CSS/Design.css">
        <script src="js/jquery-1.7.1.min.js"></script>
        <script src="js/jquery.validate.min.js"></script>
        <script src="js/script.js"></script>
        <link type="text/css" rel="stylesheet" href="bootstrap/css/tablecss.css"> 
        <script src="js/EditReferenceList.js"></script>
        <script src="js/RegionScript.js"></script>



        <title>Gauteng Mortuary Management System</title>

    </head>
    <body>  
        <title style="color:white">Gauteng Mortuary Management System</title>
        <div class="head"><img class="img-rounded" style=" width:100%" src="Images/logo10.jpg"></div>

        <div class="menutab">

            <span style="float: right;margin-right: 10px; margin-top: 5px; font-family: Helvetica, Arial, sans-serif"><a href="LogOutServlet">Logout</a></span>

        </div>

        <%

            //variables to store results
            String userResult = "";
            String instiResult = "";
            String analysisResult = "";
            String propertyResult = "";
            String vehicleResult = "";
            String rankResult = "";
            String genderResult = "";
            String occupationResult = "";
            String raceResult = "";
            String maritalResult = "";
            String provinceResult = "";
            String regionResult = ""; 
            String mannerResult = "";
            String sampleResult = "";
            String statusResult = "";
            String relationshipResult = "";
            String bodyPartResult = "";
            String specialCurResult = "";
            String exCauseResult = "";
            String slTypeResult = "";

            String main1 = "";
            String addUserTab = "";
            String currentUserTab = "";

            //checks which tab to open
            if (null != session.getAttribute("result")) {
                userResult = session.getAttribute("result").toString();
                if (null != session.getAttribute("tab")) {
                    if (session.getAttribute("tab").toString().equals("Adduser")) {
                        addUserTab = "active";
                        currentUserTab = "";
                    }

                }
            } else {
                addUserTab = "";
                currentUserTab = "active";
            }

            //Veriables to determine which tab to open
            String main2 = "";
            String inst = "";
            String analysis = "";
            String relationship = "";
            String bodyPart = "";
            String status = "";
            String sample = "";
            String manner = "";
            String province = "";
            String region = "";
            String marital = "";
            String race = "";
            String occu = "";
            String gender = "";
            String rank = "";
            String vehi = "";
            String property = "";
            String specialCur = "";
            String exCause = "";
            String slType = "";



            //Determine which tab must be open
            try {
                if (session.getAttribute("main").equals("ref")) {

                    main2 = "active";

                    if (session.getAttribute("tab").equals("insti")) {
                        inst = "active";
                        instiResult = session.getAttribute("insti").toString();

                    } else if (session.getAttribute("tab").equals("analysis")) {
                        analysis = "active";
                        analysisResult = session.getAttribute("analysisResult").toString();

                    } else if (session.getAttribute("tab").equals("property")) {
                        propertyResult = session.getAttribute("propertyResult").toString();
                        property = "active";
                    } else if (session.getAttribute("tab").equals("vehi")) {
                        vehicleResult = session.getAttribute("vehicleResult").toString();
                        vehi = "active";
                    } else if (session.getAttribute("tab").equals("rank")) {
                        rankResult = session.getAttribute("rankResult").toString();
                        rank = "active";
                    } else if (session.getAttribute("tab").equals("gender")) {
                        genderResult = session.getAttribute("genderResult").toString();
                        gender = "active";
                    } else if (session.getAttribute("tab").equals("occu")) {
                        occupationResult = session.getAttribute("occupationResult").toString();
                        occu = "active";
                    } else if (session.getAttribute("tab").equals("race")) {
                        raceResult = session.getAttribute("raceResult").toString();
                        race = "active";
                    } else if (session.getAttribute("tab").equals("marital")) {
                        maritalResult = session.getAttribute("maritalResult").toString();
                        marital = "active";
                    } else if (session.getAttribute("tab").equals("province")) {
                        provinceResult = session.getAttribute("provinceResult").toString();
                        province = "active";

                    } else if (session.getAttribute("tab").equals("region")) {
                        regionResult = session.getAttribute("regionResult").toString();
                        region = "active";

                    }  else if (session.getAttribute("tab").equals("manner")) {
                        mannerResult = session.getAttribute("mannerResult").toString();
                        manner = "active";
                    } else if (session.getAttribute("tab").equals("sample")) {

                        sampleResult = session.getAttribute("sampleResult").toString();
                        sample = "active";

                    } else if (session.getAttribute("tab").equals("status")) {
                        statusResult = session.getAttribute("statusResult").toString();
                        status = "active";
                    } else if (session.getAttribute("tab").equals("relationship")) {
                        relationshipResult = session.getAttribute("relationshipResult").toString();
                        relationship = "active";
                    } else if (session.getAttribute("tab").equals("bodyPart")) {
                        bodyPart = "active";
                        bodyPartResult = session.getAttribute("bodyPartResult").toString();
                    } else if (session.getAttribute("tab").equals("specialCur")) {
                        specialCur = "active";
                        specialCurResult = session.getAttribute("specialCurResult").toString();
                    } else if (session.getAttribute("tab").equals("Adduser")) {
                        addUserTab = "active";
                        userResult = session.getAttribute("relationshipResult").toString();
                    } else if (session.getAttribute("tab").equals("exCause")) {
                        exCause = "active";
                        exCauseResult = session.getAttribute("externalCauseResults").toString();
                    } else if (session.getAttribute("tab").equals("sceneType")) {
                        slType = "active";
                        slTypeResult = session.getAttribute("sealTypeResults").toString();
                    }


                } else {
                    userResult = "";
                    instiResult = "";
                    analysisResult = "";
                    propertyResult = "";
                    vehicleResult = "";
                    rankResult = "";
                    genderResult = "";
                    occupationResult = "";
                    raceResult = "";
                    maritalResult = "";

                    provinceResult = "";
                    regionResult = "";
                    mannerResult = "";
                    sampleResult = "";
                    statusResult = "";
                    relationshipResult = "";
                    specialCurResult = "";
                    bodyPartResult = "";
                    exCauseResult = "";
                    slTypeResult = "";
                    main1 = "active";

                    currentUserTab = "active";


                }
            } catch (Exception ex) {
                currentUserTab = "active";
                main1 = "active";
            }
            SetDbDetail dbset = new SetDbDetail();

            //Code to fill users table
            EmployeeDb emplo = new EmployeeDb(dbset.getDbdetail());
            emplo.init();
            ArrayList<Employee> employeeList = emplo.employeeList();

            //Code to populate list boxes in tabs

            //For institution list box
            ReferenceListDb emp = new ReferenceListDb("institution", "e", "type", "e", dbset.getDbdetail());
            emp.init();
            ArrayList<String> institutionList = emp.referenceList();

            //For analysis list box
            emp = new ReferenceListDb("analysis", "e", "type", "e", dbset.getDbdetail());
            emp.init();
            ArrayList<String> analysisList = emp.referenceList();

            //For property list box
            emp = new ReferenceListDb("propertytype", "e", "type", "e", dbset.getDbdetail());
            emp.init();
            ArrayList<String> PropertyList = emp.referenceList();

            //For Vehicles list box
            emp = new ReferenceListDb("vehicle", "e", "registrationNumber", "e", dbset.getDbdetail());
            emp.init();
            ArrayList<String> vehicleList = emp.referenceList();

            //For rank list box
            emp = new ReferenceListDb("rank", "e", "type", "e", dbset.getDbdetail());
            emp.init();
            ArrayList<String> rankList = emp.referenceList();

            //For gender list box
            emp = new ReferenceListDb("gender", "e", "type", "e", dbset.getDbdetail());
            emp.init();
            ArrayList<String> genderList = emp.referenceList();

            //For occupation list box
            emp = new ReferenceListDb("occupation", "e", "type", "e", dbset.getDbdetail());
            emp.init();
            ArrayList<String> occupationList = emp.referenceList();

            //For race list box
            emp = new ReferenceListDb("race", "e", "type", "e", dbset.getDbdetail());
            emp.init();
            ArrayList<String> raceList = emp.referenceList();

            //For maritalstatus list box
            emp = new ReferenceListDb("maritalstatus", "e", "type", "e", dbset.getDbdetail());
            emp.init();
            ArrayList<String> maritalstatusList = emp.referenceList();

            //For province list box
            emp = new ReferenceListDb("province", "e", "type", "e", dbset.getDbdetail());
            emp.init();
            ArrayList<String> provinceList = emp.referenceList();

            //For region list box
            emp = new ReferenceListDb("region", "e", "type", "e", dbset.getDbdetail());
            emp.init();
            ArrayList<String> regionList = emp.referenceListReg(provinceList.get(0));
            
 
            //For mannerofdeath list box
            emp = new ReferenceListDb("mannerofdeath", "e", "type", "e", dbset.getDbdetail());
            emp.init();
            ArrayList<String> mannerofdeathList = emp.referenceList();

            //For sample list box
            emp = new ReferenceListDb("sample", "e", "type", "e", dbset.getDbdetail());
            emp.init();
            ArrayList<String> sampleList = emp.referenceList();

            //For bodystatus list box
            emp = new ReferenceListDb("bodystatus", "e", "state", "e", dbset.getDbdetail());
            emp.init();
            ArrayList<String> bodystatusList = emp.referenceList();

            //For relationship list box
            emp = new ReferenceListDb("relationship", "e", "type", "e", dbset.getDbdetail());
            emp.init();
            ArrayList<String> relationshipList = emp.referenceList();

            //For special Body class list box
            emp = new ReferenceListDb("bodypart", "e", "type", "e", dbset.getDbdetail());
            emp.init();
            ArrayList<String> bodyPartList = emp.referenceList();

            //For special circumstance list box
            emp = new ReferenceListDb("specialcircumstance", "e", "type", "e", dbset.getDbdetail());
            emp.init();
            ArrayList<String> specialCurList = emp.referenceList();

             //For external circumstance list box
            emp = new ReferenceListDb("externalcircumstance", "e", "type", "e", dbset.getDbdetail());
            emp.init();
            ArrayList<String> exCauseList = emp.referenceList();

             //For scene type list box
            emp = new ReferenceListDb("scenetype", "e", "type", "e", dbset.getDbdetail());
            emp.init();
            ArrayList<String> slTypeList = emp.referenceList();
            
        %>




        <%-- starting of main tabs --%>
        <div class="bodycontent">  

            <ul class="nav nav-tabs " data-tabs="tabs">
                <li class="<%out.println(String.valueOf(main1));%>"><a href="#User" data-toggle="tab">Users</a> </li>
                <li class="<%out.println(String.valueOf(main2));%>"><a href="#RefList" data-toggle="tab">Reference Lists</a></li>       
            </ul>
            <%-- contents of main tabs --%>
            <div class="tab-content" >
                <div id="User" class="tab-pane <%out.println(String.valueOf(main1));%> ">  

                    <%-- Users tab content --%>
                    <div class="tabbable">
                        <%-- Users tab has 2 tabs, and they are the following --%>
                        <ul class="nav nav-tabs " data-tabs="tabs">
                            <li class="<%out.println(String.valueOf(currentUserTab));%>"><a href="#cUser" data-toggle="tab">Current Users</a> </li>
                            <li class="<%out.println(String.valueOf(addUserTab));%> "><a href="#aUser" data-toggle="tab">Add User</a></li>       
                        </ul>

                        <div class="tab-content" >
                            <div id="cUser" class="tab-pane <%out.println(String.valueOf(currentUserTab));%>">  
                                <legend>Users</legend>
                                <%--  Current user content --%>
                                <table >
                                    <tr>
                                        <th width="150"><H4>Name</H4></th>
                                    <th width="150"><H4>Surname</H4></th>
                                    <th width="150"><H4>Persal number</H4></th>
                                    <th width="150"><H4>Email Address <H4></th>
                                            <th width="150"><H4>Active<H4></th>
                                                    </tr>

                                                    <%
                                                        for (int i = 0; i < employeeList.size(); i++) {
                                                    %>
                                                    <TR>


                                                    <input type="hidden" name="userPersonnel" value="<%= employeeList.get(i).getName().trim()%> ">

                                                    <TD><a href=<%= "EditUser?Id=" + employeeList.get(i).getPersonnelNumber().trim()%> target="_blank"><%= employeeList.get(i).getName().trim()%></a></TD>
                                                    <TD><a href=<%= "EditUser?Id=" + employeeList.get(i).getPersonnelNumber().trim()%> target="_blank"><%= employeeList.get(i).getSurname().trim()%></a></TD>
                                                    <TD><a href=<%= "EditUser?Id=" + employeeList.get(i).getPersonnelNumber().trim()%> target="_blank"><%= employeeList.get(i).getPersonnelNumber().trim()%></a></TD>
                                                    <TD><a href=<%= "EditUser?Id=" + employeeList.get(i).getPersonnelNumber().trim()%> target="_blank"><%= employeeList.get(i).getEmail().trim()%></a></TD>
                                                    <TD><a href=<%= "EditUser?Id=" + employeeList.get(i).getPersonnelNumber().trim()%> target="_blank"><%= employeeList.get(i).isActive()%></a></TD>

                                                    </TR>
                                                    <%
                                                        }
                                                    %>
                                                    </table>

                                                    <br/>



                                                    </div>
                                                    <div id="aUser" class="tab-pane <%out.println(String.valueOf(addUserTab));%> ">  
                                                        <%--  Add user content --%>
                                                        <legend>Add User</legend>

                                                        <form name="AddUser" id="AddUser" method="post" action="ReferenceListServlet" class="form-horizontal">

                                                            <div class="offset2 span7 ">
                                                                <input type="text" name="form" value="AddUser" style="visibility: hidden" />
                                                                <fieldset>
                                                                    <legend>User Personal Details</legend>
                                                                    <label  > <% out.println(String.valueOf(userResult));%> </label>
                                                                    <div class="control-group   error">

                                                                        <label  class="control-label"   for="firstName">Full Name(s):</label> 
                                                                        <div class="controls">
                                                                            <input type="text"  name="firstName"  id="firstName"  /> 
                                                                        </div>
                                                                    </div>

                                                                    <div class="control-group error ">
                                                                        <label  class="control-label"  for="surname">Surname:</label> 
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

                                                                <br/> <br/>

                                                                <fieldset>
                                                                    <legend>User Employment Details</legend>


                                                                    <div class="control-group error ">
                                                                        <label  class="control-label" for="personnelNumber">Persal Number:</label>
                                                                        <div class="controls">
                                                                            <input type="text" name="personnelNumber" maxlength="8" id="personnelNumber"  />
                                                                        </div>
                                                                    </div>

                                                                    <div class="control-group error ">
                                                                        <label  class="control-label" for="level">Access Level:</label>
                                                                        <%-- Drop down list for occupation --%>
                                                                        <div class="controls">
                                                                            <select name="level" id="level">
                                                                                <option value=""> <% out.println(String.valueOf("-Please Select-"));%></option>
                                                                                <option value="1">Supervisor</option>
                                                                                <option value="2">FPS Officer</option>
                                                                                <option value="3">Pathologist</option>
                                                                                <option value="4">Administrator</option>

                                                                            </select>
                                                                        </div>
                                                                    </div>


                                                                    <div class="control-group error ">
                                                                        <label  class="control-label" for="active">Active:</label>
                                                                        <%-- Drop down list for rank --%>
                                                                        <div class="controls">
                                                                            <select name="active" tabindex="1" id="active">
                                                                                <option value=""> <% out.println(String.valueOf("-Please Select-"));%></option>
                                                                                <option value="False">False</option>
                                                                                <option value="True">True</option>
                                                                            </select>
                                                                        </div>
                                                                    </div>

                                                                </fieldset>
                                                                <br/> <br/>                                 
                                                                <div class="offset4">
                                                                    <input type="submit"  class="btn btn-primary" type="button" value="Add User" /> 
                                                                    <%--Display save result --%> 
                                                                </div>

                                                                <br/> <br/> 

                                                            </div>
                                                        </form>
                                                    </div>           
                                                    </div>

                                                    </div>       
                                                    </div>
                                                    <div id="RefList" class="tab-pane <%out.println(String.valueOf(main2));%> "> 
                                                        <%-- Content of reference list tab --%>
                                                        <legend>References Lists</legend>
                                                        <div class="tabbable">
                                                            <div class="span3 bs-docs-sidebar">
                                                                <%-- reference list  tab has 20 tabs, and they are the following --%>
                                                                <ul class="nav nav-tabs nav-stacked " data-tabs="tabs">

                                                                    <li class="<%out.println(String.valueOf(inst));%>"><a href="#inst" data-toggle="tab">Institution</a> </li>
                                                                    <li class="<%out.println(String.valueOf(analysis));%>"><a href="#anlysis" data-toggle="tab">Type of Analysis</a></li>
                                                                    <li class="<%out.println(String.valueOf(property));%>"><a href="#prop" data-toggle="tab">Property</a></li>
                                                                    <li class="<%out.println(String.valueOf(vehi));%>"><a href="#vehicles" data-toggle="tab">Vehicles</a></li>
                                                                    <li class="<%out.println(String.valueOf(rank));%>"><a href="#rank" data-toggle="tab">Rank</a></li>
                                                                    <li class="<%out.println(String.valueOf(gender));%>"><a href="#gender" data-toggle="tab">Gender</a></li>
                                                                    <li class="<%out.println(String.valueOf(occu));%>"><a href="#occupation" data-toggle="tab">Occupation</a></li>
                                                                    <li class="<%out.println(String.valueOf(race));%>"><a href="#race" data-toggle="tab">Race</a></li>
                                                                    <li class="<%out.println(String.valueOf(marital));%>"><a href="#mStatus" data-toggle="tab">Marital Status</a></li> 
                                                                    <li class="<%out.println(String.valueOf(province));%>"><a href="#province" data-toggle="tab">Province</a></li>
                                                                    <li class="<%out.println(String.valueOf(region));%>"><a href="#region" data-toggle="tab">Region</a></li>
                                                                    <li class="<%out.println(String.valueOf(manner));%>"><a href="#mDeath" data-toggle="tab">Manner of Death</a></li>
                                                                    <li class="<%out.println(String.valueOf(sample));%>"><a href="#sType" data-toggle="tab">Sample Type</a></li>
                                                                    <li class="<%out.println(String.valueOf(status));%>"><a href="#status" data-toggle="tab">Body Status</a></li>
                                                                    <li class="<%out.println(String.valueOf(relationship));%>"><a href="#relationship" data-toggle="tab">Relationship</a></li>
                                                                    <li class="<%out.println(String.valueOf(bodyPart));%>"><a href="#bodyPart" data-toggle="tab">Body Part</a></li>
                                                                    <li class="<%out.println(String.valueOf(specialCur));%>"><a href="#specialCur" data-toggle="tab">Special Circumstance</a></li>
                                                                    <li class="<%out.println(String.valueOf(exCause));%>"><a href="#externalCause" data-toggle="tab">External Cause</a></li>
                                                                    <li class="<%out.println(String.valueOf(slType));%>"><a href="#sealType" data-toggle="tab">Seal Type</a></li>

                                                                </ul>
                                                            </div>
                                                            <div class="tab-content" >
                                                                <div id="inst" class="tab-pane <%out.println(String.valueOf(inst));%>" >  
                                                                    <div align="center"><h2>Institution </h2> </div>

                                                                    <div class="offset2 ">
                                                                        <form name="AddInsitution" id="AddInsitution" method="post" action="ReferenceListServlet"  >
                                                                            <input type="text" name="form" value="AddInsitution" style="visibility: hidden" />
                                                                            <div class="control-group form-horizontal">
                                                                                <label class="control-label" for="txtInsitution">Institution Name:</label>
                                                                                <div class="controls">
                                                                                    <input type="text" id="txtInsitution" name="txtInsitution"   />
                                                                                    <input type="submit" value="Add Institution" name="cmdInsitution" />
                                                                                </div>

                                                                                <br/>  </div>
                                                                        </form>
                                                                        <div class="controls offset2" >
                                                                            <label class="control-label" for="InsitutionList">Current Institutions:</label>

                                                                            <select id="InsitutionList" name="InsitutionList" size="5">
                                                                                <%
                                                                                    for (int i = 0; i < institutionList.size(); i++) {
                                                                                %>
                                                                                <option><% out.print(institutionList.get(i));%> </option>

                                                                                <%
                                                                                    }
                                                                                %>
                                                                            </select>
                                                                            <br/>

                                                                            <input type="button" onclick="editReferenceList('Insitution', 'InsitutionList')" value="Edit Institution" id="cmdEditInsitutions" name="cmdEditInsitution" />
                                                                            <input type="button" onclick="deleteReferenceList('Insitution', 'InsitutionList')" value="Delete Institution" id="cmdDeleteInsitutions" name="cmdDeleteInsitutions" />

                                                                        </div>
                                                                    </div>     
                                                                    <div  class="offset3">
                                                                        <label  > <% out.println(String.valueOf(instiResult));%></label>
                                                                    </div>   <br/>
                                                                    <br/>
                                                                </div>
                                                                <div id="anlysis" class="tab-pane <%out.println(String.valueOf(analysis));%>"> 
                                                                    <div align="center"><h2>Type of Analysis </h2> </div> 
                                                                    <div class="offset2 ">
                                                                        <form name="AddAnalysis" id="AddAnalysis" method="post" action="ReferenceListServlet"  >
                                                                            <input type="text" name="form" value="AddAnalysis" style="visibility: hidden" />
                                                                            <div class="control-group form-horizontal">
                                                                                <label class="control-label" for="txtAnalysis">Analysis Type Name:</label>
                                                                                <div class="controls">
                                                                                    <input type="text" id="txtAnalysis" name="txtAnalysis"   />
                                                                                    <input type="submit" value="Add Analysis" name="cmdAnalysis" />
                                                                                </div>

                                                                                <br/>  </div>
                                                                        </form>
                                                                        <div class="controls offset2" >
                                                                            <label class="control-label" for="AnalysisList">Current Type of Analysis:</label>

                                                                            <select id="AnalysisList" name="AnalysisList" size="5">
                                                                                <%
                                                                                    for (int i = 0; i < analysisList.size(); i++) {
                                                                                %>
                                                                                <option><% out.print(analysisList.get(i));%> </option>

                                                                                <%
                                                                                    }
                                                                                %>

                                                                            </select>
                                                                            <br/>
                                                                            <input type="button" onclick="editReferenceList('analysis', 'AnalysisList')" value="Edit analysis type" id="cmdEditAnalysis" name="cmdEditAnalysis" />
                                                                            <input type="button" onclick="deleteReferenceList('analysis', 'AnalysisList')" value="Delete analysis type" id="cmdDeleteAnalysis" name="cmdDeleteAnalysis" />

                                                                        </div>
                                                                    </div> 
                                                                    <%--Display save result --%> 
                                                                    <div  class="offset3">
                                                                        <label  > <% out.println(String.valueOf(analysisResult));%></label>
                                                                    </div>
                                                                    <br/>
                                                                    <br/>
                                                                </div>

                                                                <div id="prop" class="tab-pane <%out.println(String.valueOf(property));%> "> 
                                                                    <div align="center"><h2>Property</h2> </div>        
                                                                    <div class="offset2 ">
                                                                        <form name="AddProperty" id="AddProperty" method="post" action="ReferenceListServlet">
                                                                            <input type="text" name="form" value="AddProperty" style="visibility: hidden" />
                                                                            <div class="control-group form-horizontal">
                                                                                <label class="control-label" for="txtProperty">Property type name:</label>
                                                                                <div class="controls">
                                                                                    <input type="text" id="txtProperty" name="txtProperty"   />
                                                                                    <input type="submit" value="Add Property Type" name="cmdProperty" />
                                                                                </div>

                                                                                <br/>  </div>
                                                                        </form>
                                                                        <div class="controls offset2" >
                                                                            <label class="control-label" for="PropertyList">Current Property Type(s):</label>

                                                                            <select id="PropertyList" name="PropertyList" size="5">
                                                                                <%
                                                                                    for (int i = 0; i < PropertyList.size(); i++) {
                                                                                %>
                                                                                <option><% out.print(PropertyList.get(i));%> </option>

                                                                                <%
                                                                                    }
                                                                                %>


                                                                            </select>
                                                                            <br/>
                                                                            <input type="button" onclick="editReferenceList('propertytype', 'PropertyList')" value="Edit property type" id="cmdEditProperty" name="cmdEditProperty" />
                                                                            <input type="button" onclick="deleteReferenceList('propertytype', 'PropertyList')" value="Delete property type" id="cmdDeleteProperty" name="cmdDeleteProperty" />

                                                                        </div>
                                                                    </div>
                                                                    <%--Display save result --%> 
                                                                    <div  class="offset3">
                                                                        <label  > <% out.println(String.valueOf(propertyResult));%></label>
                                                                    </div>
                                                                </div>

                                                                <div id="vehicles" class="tab-pane <%out.println(String.valueOf(vehi));%> "> 
                                                                    <div align="center"><h2>Vehicles</h2> </div> 
                                                                    <div class="offset2 ">
                                                                        <form name="AddVehicle" id="AddVehicle" method="post" action="ReferenceListServlet"  >
                                                                            <input type="text" name="form" value="AddVehicle" style="visibility: hidden" />
                                                                            <div class="control-group form-horizontal">
                                                                                <label class="control-label" for="txtVehicle">Vehicle Registration Number:</label>
                                                                                <div class="controls">
                                                                                    <input type="text" id="txtVehicle" name="txtVehicle"   />
                                                                                    <input type="submit" value="Add Vehicle" name="cmdVehicle" />
                                                                                </div>

                                                                                <br/>  </div>
                                                                        </form>
                                                                        <div class="controls offset2" >
                                                                            <label class="control-label" for="VehicleList">Current Vehicle(s)</label>

                                                                            <select id="VehicleList" name="VehicleList" size="5">
                                                                                <%
                                                                                    for (int i = 0; i < vehicleList.size(); i++) {
                                                                                %>
                                                                                <option><% out.print(vehicleList.get(i));%> </option>

                                                                                <%
                                                                                    }
                                                                                %>
                                                                            </select>
                                                                            <br/>
                                                                            <input type="button" onclick="editReferenceList('vehicle', 'VehicleList')" value="Edit Vehicle number" id="cmdEditVehicle" name="cmdEditVehicle" />
                                                                            <input type="button" onclick="deleteReferenceList('vehicle', 'VehicleList')" value="Delete Vehicle number" id="cmdDeleteVehicle" name="cmdDeleteVehicle" />

                                                                        </div>
                                                                    </div> 
                                                                    <%--Display save result --%> 
                                                                    <div  class="offset3">
                                                                        <label  > <% out.println(String.valueOf(vehicleResult));%></label>
                                                                    </div>
                                                                </div>

                                                                <div id="rank" class="tab-pane <%out.println(String.valueOf(rank));%>"> 
                                                                    <div align="center"><h2>Rank</h2> </div>
                                                                    <div class="offset2 ">
                                                                        <form name="AddRank" id="AddRank" method="post" action="ReferenceListServlet"  >
                                                                            <input type="text" name="form" value="AddRank" style="visibility: hidden" />
                                                                            <div class="control-group form-horizontal">
                                                                                <label class="control-label" for="txtRank">Rank Name:</label>
                                                                                <div class="controls">
                                                                                    <input type="text" id="txtRank" name="txtRank"   />
                                                                                    <input type="submit" value="Add Rank" name="cmdRank" />
                                                                                </div>

                                                                                <br/>  </div>
                                                                        </form>
                                                                        <div class="controls offset2" >
                                                                            <label class="control-label" for="RankList">Current Ranks:</label>

                                                                            <select id="RankList" name="RankList" size="5">
                                                                                <%
                                                                                    for (int i = 0; i < rankList.size(); i++) {
                                                                                %>
                                                                                <option><% out.print(rankList.get(i));%> </option>

                                                                                <%
                                                                                    }
                                                                                %>
                                                                            </select>
                                                                            <br/>
                                                                            <input type="button" onclick="editReferenceList('rank', 'RankList')" value="Edit Rank" id="cmdEditRank" name="cmdEditRank" />
                                                                            <input type="button" onclick="deleteReferenceList('rank', 'RankList')" value="Delete Rank" id="cmdDeleteRank" name="cmdDeleteRank" />

                                                                        </div>
                                                                    </div> 
                                                                    <%--Display save result --%> 
                                                                    <div  class="offset3">
                                                                        <label  > <% out.println(String.valueOf(rankResult));%></label>
                                                                    </div>
                                                                    <br/>
                                                                    <br/>
                                                                </div>


                                                                <div id="gender" class="tab-pane <%out.println(String.valueOf(gender));%> "> 
                                                                    <div align="center"><h2>Gender</h2> </div>       
                                                                    <div class="offset2 ">
                                                                        <form name="AddGender" id="AddGender" method="post" action="ReferenceListServlet"  >
                                                                            <input type="text" name="form" value="AddGender" style="visibility: hidden" />
                                                                            <div class="control-group form-horizontal">
                                                                                <label class="control-label" for="txtGender">Gender Type:</label>
                                                                                <div class="controls">
                                                                                    <input type="text" id="txtGender" name="txtGender"   />
                                                                                    <input type="submit" value="Add Gender" name="cmdGender" />
                                                                                </div>

                                                                                <br/>  </div>
                                                                        </form>
                                                                        <div class="controls offset2" >
                                                                            <label class="control-label" for="GenderList">Current Gender Types:</label>

                                                                            <select id="GenderList" name="GenderList" size="5">
                                                                                <%
                                                                                    for (int i = 0; i < genderList.size(); i++) {
                                                                                %>
                                                                                <option><% out.print(genderList.get(i));%> </option>

                                                                                <%
                                                                                    }
                                                                                %>
                                                                            </select>
                                                                            <br/>
                                                                            <input type="button" onclick="editReferenceList('gender', 'GenderList')" value="Edit Gender" id="cmdEditGender" name="cmdEditGender" />
                                                                            <input type="button" onclick="deleteReferenceList('gender', 'GenderList')" value="Delete Gender" id="cmdDeleteGender" name="cmdDeleteGender" />

                                                                        </div>
                                                                    </div> 
                                                                    <%--Display save result --%> 
                                                                    <div  class="offset3">
                                                                        <label  > <% out.println(String.valueOf(genderResult));%></label>
                                                                    </div>
                                                                    <br/>
                                                                    <br/>
                                                                </div>

                                                                <div id="occupation" class="tab-pane <%out.println(String.valueOf(occu));%> "> 
                                                                    <div align="center"><h2>Occupation</h2> </div> 
                                                                    <div class="offset2 ">
                                                                        <form name="AddOccu" id="AddOccu" method="post" action="ReferenceListServlet"  >
                                                                            <input type="text" name="form" value="AddOccu" style="visibility: hidden" />
                                                                            <div class="control-group form-horizontal">
                                                                                <label class="control-label" for="txtOccu">Occupation Type:</label>
                                                                                <div class="controls">
                                                                                    <input type="text" id="txtOccu" name="txtOccu"   />
                                                                                    <input type="submit" value="Add Occupation" name="cmdOccu" />
                                                                                </div>

                                                                                <br/>  </div>
                                                                        </form>
                                                                        <div class="controls offset2" >
                                                                            <label class="control-label" for="OccuList">Current Occupation Types:</label>

                                                                            <select id="OccuList" name="OccuList" size="5">
                                                                                <%
                                                                                    for (int i = 0; i < occupationList.size(); i++) {
                                                                                %>
                                                                                <option><% out.print(occupationList.get(i));%> </option>

                                                                                <%
                                                                                    }
                                                                                %>
                                                                            </select>
                                                                            <br/>
                                                                            <input type="button" onclick="editReferenceList('occupation', 'OccuList')" value="Edit Occupation type" id="cmdEditOccupation" name="cmdEditOccupation" />
                                                                            <input type="button" onclick="deleteReferenceList('occupation', 'OccuList')" value="Delete Occupation type" id="cmdDeleteOccupation" name="cmdDeleteOccupation" />

                                                                        </div>
                                                                    </div> 
                                                                    <%--Display save result --%> 
                                                                    <div  class="offset3">
                                                                        <label  > <% out.println(String.valueOf(occupationResult));%></label>
                                                                    </div>
                                                                    <br/>
                                                                    <br/>
                                                                </div>

                                                                <div id="race" class="tab-pane <%out.println(String.valueOf(race));%> "> 
                                                                    <div align="center"><h2>Race </h2> </div>      
                                                                    <%--content for race reference list--%>
                                                                    <div class="offset2 ">
                                                                        <form name="AddRace" id="AddRace" method="post" action="ReferenceListServlet"  >
                                                                            <input type="text" name="form" value="AddRace" style="visibility: hidden" />
                                                                            <div class="control-group form-horizontal">
                                                                                <label class="control-label" for="txtRace">Race Type:</label>
                                                                                <div class="controls">
                                                                                    <input type="text" id="txtRace" name="txtRace"   />
                                                                                    <input type="submit" value="Add Race" name="cmdRace" />
                                                                                </div>

                                                                                <br/>  </div>
                                                                        </form>
                                                                        <div class="controls offset2" >
                                                                            <label class="control-label" for="RaceList">Current Race Types:</label>

                                                                            <select id="RaceList" name="RaceList" size="5">
                                                                                <%
                                                                                    for (int i = 0; i < raceList.size(); i++) {
                                                                                %>
                                                                                <option><% out.print(raceList.get(i));%> </option>

                                                                                <%
                                                                                    }
                                                                                %>
                                                                            </select>
                                                                            <br/>
                                                                            <input type="button" onclick="editReferenceList('race', 'RaceList')" value="Edit Race type" id="cmdEditRace" name="cmdEditRace" />
                                                                            <input type="button" onclick="deleteReferenceList('race', 'RaceList')" value="Delete Race type" id="cmdDeleteRace" name="cmdDeleteRace" />

                                                                        </div>
                                                                    </div> 
                                                                    <%--Display save result --%> 
                                                                    <div  class="offset3">
                                                                        <label  > <% out.println(String.valueOf(raceResult));%></label>
                                                                    </div>
                                                                    <br/>
                                                                    <br/>
                                                                </div>

                                                                <div id="mStatus" class="tab-pane <%out.println(String.valueOf(marital));%> "> 
                                                                    <div align="center"><h2>Marital Status </h2> </div> 
                                                                    <%--content for Marital Status reference list--%>
                                                                    <div class="offset2 ">
                                                                        <form name="AddMarital" id="AddMarital" method="post" action="ReferenceListServlet"  >
                                                                            <input type="text" name="form" value="AddMarital" style="visibility: hidden" />
                                                                            <div class="control-group form-horizontal">
                                                                                <label class="control-label" for="txtMarital">Marital Status Type:</label>
                                                                                <div class="controls">
                                                                                    <input type="text" id="txtMarital" name="txtMarital"   />
                                                                                    <input type="submit" value="Add Marital Status" name="cmdMarital" />
                                                                                </div>

                                                                                <br/>  </div>
                                                                        </form>
                                                                        <div class="controls offset2" >
                                                                            <label class="control-label" for="MaritalList">Current Marital Status Types:</label>

                                                                            <select id="MaritalList" name="MaritalList" size="5">
                                                                                <%
                                                                                    for (int i = 0; i < maritalstatusList.size(); i++) {
                                                                                %>
                                                                                <option><% out.print(maritalstatusList.get(i));%> </option>

                                                                                <%
                                                                                    }
                                                                                %>
                                                                            </select>
                                                                            <br/>
                                                                            <input type="button" onclick="editReferenceList('maritalstatus', 'MaritalList')" value="Edit Marital Status type" id="cmdEditMarital" name="cmdEditMarital" />
                                                                            <input type="button" onclick="deleteReferenceList('maritalstatus', 'MaritalList')" value="Delete Marital Status type" id="cmdDeleteMarital" name="cmdDeleteMarital" />

                                                                        </div>
                                                                    </div> 
                                                                    <%--Display save result --%> 
                                                                    <div  class="offset3">
                                                                        <label  > <% out.println(String.valueOf(maritalResult));%></label>
                                                                    </div>
                                                                    <br/>
                                                                    <br/>
                                                                </div>

                                                                <div  id="province" class="tab-pane <%out.println(String.valueOf(province));%>"> 
                                                                    <div align="center"><h2> Province </h2> </div>
                                                                    <%--content for Province reference list--%>
                                                                    <div class="offset2 ">
                                                                        <form name="AddProvince" id="AddProvince" method="post" action="ReferenceListServlet"  >
                                                                            <input type="text" name="form" value="AddProvince" style="visibility: hidden" />
                                                                            <div class="control-group form-horizontal">
                                                                                <label class="control-label" for="txtProvince">Province:</label>
                                                                                <div class="controls">
                                                                                    <input type="text" id="txtProvince" name="txtProvince"   />
                                                                                    <input type="submit" value="Add Province" name="cmdProvince" />
                                                                                </div>

                                                                                <br/>  </div>
                                                                        </form>
                                                                        <div class="controls offset2" >
                                                                            <label class="control-label" for="ProvinceList">Current Provinces:</label>

                                                                            <select id="ProvinceList" name="ProvinceList" size="5">
                                                                                <%
                                                                                    for (int i = 0; i < provinceList.size(); i++) {
                                                                                %>
                                                                                <option><% out.print(provinceList.get(i));%> </option>

                                                                                <%
                                                                                    }
                                                                                %>
                                                                            </select>
                                                                            <br/>
                                                                            <input type="button" onclick="editReferenceList('province', 'ProvinceList')" value="Edit Province" id="cmdEditProvince" name="cmdEditProvince" />
                                                                            <input type="button" onclick="deleteReferenceList('province', 'ProvinceList')" value="Delete Province" id="cmdDeleteProvince" name="cmdDeleteProvince" />

                                                                        </div>
                                                                    </div> 
                                                                    <%--Display save result --%> 
                                                                    <div  class="offset3">
                                                                        <label  > <% out.println(String.valueOf(provinceResult));%></label>
                                                                    </div>
                                                                    <br/>
                                                                    <br/>
                                                                </div>

                                                                <div  id="region" class="tab-pane <%out.println(String.valueOf(region));%>"> 
                                                                    <div align="center"><h2> Region </h2> </div>    
                                                                    <%--content for Region reference list--%>
                                                                    <div class="offset2 ">
                                                                        <form name="AddRegion" id="AddRegion" method="post" action="ReferenceListServlet"  >
                                                                            <input type="text" name="form" value="AddRegion" style="visibility: hidden" />
                                                                            <div class="control-group form-horizontal">
                                                                                <label class="control-label" for="ProvRegionList">Province</label>
                                                                                <div class="controls">

                                                                                    <select id="ProvRegionList" name="ProvRegionList" onload="SelectProvince()" onchange='SelectProvince()'>
                                                                                        <%
                                                                                            for (int i = 0; i < provinceList.size(); i++) {
                                                                                        %>
                                                                                        <option value="<% out.print(provinceList.get(i));%>"><% out.print(provinceList.get(i));%> </option>

                                                                                        <%
                                                                                            }
                                                                                        %>
                                                                                    </select>
                                                                                </div>

                                                                                <br/>  
                                                                            </div>
                                                                            <div class="control-group form-horizontal">
                                                                                <label class="control-label" for="txtRegion">Region</label>
                                                                                <div class="controls">
                                                                                    <input type="text" id="txtRegion" name="txtRegion"   />
                                                                                    <input type="submit" value="Add Region" name="cmdRegion" />
                                                                                </div>

                                                                                <br/>  
                                                                            </div>
                                                                        </form>
                                                                        <div class="controls offset2" >
                                                                            <label class="control-label" for="RegionList">Current Regions:</label>

                                                                            <select id="RegionList" name="RegionList" size="5">
                                                                                <%
                                                                                    for (int i = 0; i < regionList.size(); i++) {
                                                                                %>
                                                                                <option><% out.print(regionList.get(i));%> </option>

                                                                                <%
                                                                                    }
                                                                                %>
                                                                            </select>
                                                                            <br/>
                                                                            <input type="button" onclick="editReferenceListReg('region', 'RegionList', 'ProvRegionList')" value="Edit Province" id="cmdEditRegion" name="cmdEditRegion" />
                                                                            <input type="button" onclick="deleteReferenceListReg('region', 'RegionList', 'ProvRegionList')" value="Delete Province" id="cmdDeleteRegion" name="cmdEditRegion" />

                                                                        </div>
                                                                    </div> 
                                                                    <%--Display save result --%> 
                                                                    <div  class="offset3">
                                                                        <label  > <% out.println(String.valueOf(regionResult));%></label>
                                                                    </div>
                                                                    <br/>
                                                                    <br/>
                                                                </div>


                                                                <div id="mDeath" class="tab-pane <%out.println(String.valueOf(manner));%> "> 
                                                                    <div align="center"><h2> Manner of Death</h2> </div>  
                                                                    <%--content for Manner of Death reference list--%>
                                                                    <div class="offset2 ">
                                                                        <form name="AddManner" id="AddManner" method="post" action="ReferenceListServlet"  >
                                                                            <input type="text" name="form" value="AddManner" style="visibility: hidden" />
                                                                            <div class="control-group form-horizontal">
                                                                                <label class="control-label" for="txtManner">Manner of Death:</label>
                                                                                <div class="controls">
                                                                                    <input type="text" id="txtManner" name="txtManner"   />
                                                                                    <input type="submit" value="Add Manner of Death" name="cmdManner" />
                                                                                </div>

                                                                                <br/>  </div>
                                                                        </form>
                                                                        <div class="controls offset2" >
                                                                            <label class="control-label" for="MannerList">Current Manner of Death(s):</label>

                                                                            <select id="MannerList" name="MannerList" size="5">
                                                                                <%
                                                                                    for (int i = 0; i < mannerofdeathList.size(); i++) {
                                                                                %>
                                                                                <option><% out.print(mannerofdeathList.get(i));%> </option>

                                                                                <%
                                                                                    }
                                                                                %>
                                                                            </select>
                                                                            <br/>
                                                                            <input type="button" onclick="editReferenceList('mannerofdeath', 'MannerList')" value="Edit Manner of Death" id="cmdEditManner" name="cmdEditManner" />
                                                                            <input type="button" onclick="deleteReferenceList('mannerofdeath', 'MannerList')" value="Delete Manner of Death" id="cmdDeleteManner" name="cmdDeleteManner" />

                                                                        </div>
                                                                    </div> 
                                                                    <%--Display save result --%> 
                                                                    <div  class="offset3">
                                                                        <label  > <% out.println(String.valueOf(mannerResult));%></label>
                                                                    </div>
                                                                    <br/>
                                                                    <br/>
                                                                </div>

                                                                <div id="sType" class="tab-pane <%out.println(String.valueOf(sample));%> "> 
                                                                    <div align="center"><h2>Sample Type</h2> </div>   
                                                                    <%--content for Sample Type reference list--%>
                                                                    <div class="offset2 ">
                                                                        <form name="AddSample" id="AddSample" method="post" action="ReferenceListServlet"  >
                                                                            <input type="text" name="form" value="AddSample" style="visibility: hidden" />
                                                                            <div class="control-group form-horizontal">
                                                                                <label class="control-label" for="txtSample">Sample Type:</label>
                                                                                <div class="controls">
                                                                                    <input type="text" id="txtSample" name="txtSample"   />
                                                                                    <input type="submit" value="Add Sample Type" name="cmdSample" />
                                                                                </div>

                                                                                <br/>  </div>
                                                                        </form>
                                                                        <div class="controls offset2" >
                                                                            <label class="control-label" for="SampleList">Current Sample Types:</label>

                                                                            <select id="SampleList" name="SampleList" size="5">
                                                                                <%
                                                                                    for (int i = 0; i < sampleList.size(); i++) {
                                                                                %>
                                                                                <option><% out.print(sampleList.get(i));%> </option>

                                                                                <%
                                                                                    }
                                                                                %>
                                                                            </select>
                                                                            <br/>
                                                                            <input type="button" onclick="editReferenceList('sample', 'SampleList')" value="Edit Sample type" id="cmdEditSample" name="cmdEditSample" />
                                                                            <input type="button" onclick="deleteReferenceList('sample', 'SampleList')" value="Delete Sample type" id="cmdDeleteSample" name="cmdDeleteSample" />

                                                                        </div>
                                                                    </div> 
                                                                    <%--Display save result --%> 
                                                                    <div  class="offset3">
                                                                        <label  > <% out.println(String.valueOf(sampleResult));%></label>
                                                                    </div>
                                                                    <br/>
                                                                    <br/>
                                                                </div>

                                                                <div id="status" class="tab-pane <%out.println(String.valueOf(status));%> "> 
                                                                    <div align="center"><h2>Body Status</h2> </div>     
                                                                    <%--content for Body Status reference list--%>
                                                                    <div class="offset2 ">
                                                                        <form name="AddStatus" id="AddStatus" method="post" action="ReferenceListServlet"  >
                                                                            <input type="text" name="form" value="AddStatus" style="visibility: hidden" />
                                                                            <div class="control-group form-horizontal">
                                                                                <label class="control-label" for="txtStatus">Body Status :</label>
                                                                                <div class="controls">
                                                                                    <input type="text" id="txtStatus" name="txtStatus"   />
                                                                                    <input type="submit" value="Add Body Status Type" name="cmdStatus" />
                                                                                </div>

                                                                                <br/>  </div>
                                                                        </form>
                                                                        <div class="controls offset2" >
                                                                            <label class="control-label" for="StatusList">Current Body Status Categories:</label>

                                                                            <select id="StatusList" name="StatusList" size="5">
                                                                                <%
                                                                                    for (int i = 0; i < bodystatusList.size(); i++) {
                                                                                %>
                                                                                <option><% out.print(bodystatusList.get(i));%> </option>

                                                                                <%
                                                                                    }
                                                                                %>
                                                                            </select>
                                                                            <br/>
                                                                            <input type="button" onclick="editReferenceList('bodystatus', 'StatusList')" value="Edit Body Status" id="cmdEditBodystatus" name="cmdEditBodystatus" />
                                                                            <input type="button" onclick="deleteReferenceList('bodystatus', 'StatusList')" value="Delete Body Status" id="cmdDeleteBodystatus" name="cmdDeleteBodystatus" />

                                                                        </div>
                                                                    </div> 
                                                                    <%--Display save result --%> 
                                                                    <div  class="offset3">
                                                                        <label  > <% out.println(String.valueOf(statusResult));%></label>
                                                                    </div>
                                                                    <br/>
                                                                    <br/>
                                                                </div>

                                                                <div id="relationship" class="tab-pane <%out.println(String.valueOf(relationship));%> "> 
                                                                    <div align="center"><h2>Relationship</h2> </div>   
                                                                    <%--content for Relationship reference list--%>
                                                                    <div class="offset2 ">
                                                                        <form name="AddRelationship" id="AddRelationship" method="post" action="ReferenceListServlet"  >
                                                                            <input type="text" name="form" value="AddRelationship" style="visibility: hidden" />
                                                                            <div class="control-group form-horizontal">
                                                                                <label class="control-label" for="txtRelationship">Relationship Type:</label>
                                                                                <div class="controls">
                                                                                    <input type="text" id="txtRelationship" name="txtRelationship"   />
                                                                                    <input type="submit" value="Add Relationship Type" name="cmdRelationship" />
                                                                                </div>

                                                                                <br/>  </div>
                                                                        </form>
                                                                        <div class="controls offset2" >
                                                                            <label class="control-label" for="RelationshipList">Current Relationship Type(s):</label>

                                                                            <select id="RelationshipList" name="RelationshipList" size="5">
                                                                                <%
                                                                                    for (int i = 0; i < relationshipList.size(); i++) {
                                                                                %>
                                                                                <option><% out.print(relationshipList.get(i));%> </option>

                                                                                <%
                                                                                    }
                                                                                %>
                                                                            </select>
                                                                            <br/>
                                                                            <input type="button" onclick="editReferenceList('relationship', 'RelationshipList')" value="Edit Relationship type" id="cmdEditRelationship" name="cmdEditRelationship" />
                                                                            <input type="button" onclick="deleteReferenceList('relationship', 'RelationshipList')" value="Delete Relationship type" id="cmdDeleteRelationship" name="cmdDeleteRelationship" />

                                                                        </div>
                                                                    </div> 
                                                                    <%--Display save result --%> 
                                                                    <div  class="offset3">
                                                                        <label  > <% out.println(String.valueOf(relationshipResult));%></label>
                                                                    </div>
                                                                    <br/>
                                                                    <br/>
                                                                </div>

                                                                <div id="bodyPart" class="tab-pane <%out.println(String.valueOf(bodyPart));%> "> 
                                                                    <div align="center"><h2>Body Part </h2> </div>   
                                                                    <%--content for Body Part reference list--%>
                                                                    <div class="offset2 ">
                                                                        <form name="AddBodyPart" id="AddBodyPart" method="post" action="ReferenceListServlet"  >
                                                                            <input type="text" name="form" value="AddBodyPart" style="visibility: hidden" />
                                                                            <div class="control-group form-horizontal">
                                                                                <label class="control-label" for="txtBodyPart">Body Part Type:</label>
                                                                                <div class="controls">
                                                                                    <input type="text" id="txtBodyPart" name="txtBodyPart"   />
                                                                                    <input type="submit" value="Add Blody Part Type" name="cmdBodyPart" />
                                                                                </div>

                                                                                <br/>  </div>
                                                                        </form>
                                                                        <div class="controls offset2" >
                                                                            <label class="control-label" for="BodyClassList">Current Body Part Type(s):</label>

                                                                            <select id="BodyClassList" name="BodyClassList" size="5">
                                                                                <%
                                                                                    for (int i = 0; i < bodyPartList.size(); i++) {
                                                                                %>
                                                                                <option><% out.print(bodyPartList.get(i));%> </option>

                                                                                <%
                                                                                    }
                                                                                %>
                                                                            </select>
                                                                            <br/>
                                                                            <input type="button" onclick="editReferenceList('bodypart', 'BodyClassList')" value="Edit Body Part type" id="cmdEditBodyPart" name="cmdEditBodyPart" />
                                                                            <input type="button" onclick="deleteReferenceList('bodypart', 'BodyClassList')" value="Delete Body Part type" id="cmdDeleteBodyPart" name="cmdDeleteBodyPart" />

                                                                        </div>
                                                                    </div> 
                                                                    <%--Display save result --%> 
                                                                    <div  class="offset3">
                                                                        <label  > <% out.println(String.valueOf(bodyPartResult));%></label>
                                                                    </div>
                                                                    <br/>
                                                                    <br/>
                                                                </div>
                                                                <div id="specialCur" class="tab-pane <%out.println(String.valueOf(specialCur));%> "> 
                                                                    <div align="center"><h2>Special Circumstances</h2> </div>   
                                                                    <%--content for Special Circumstance reference list--%>
                                                                    <div class="offset2 ">
                                                                        <form name="AddSpecialCur" id="AddSpecialCur" method="post" action="ReferenceListServlet"  >
                                                                            <input type="text" name="form" value="AddSpecialCur" style="visibility: hidden" />
                                                                            <div class="control-group form-horizontal">
                                                                                <label class="control-label" for="txtSpecialCur">Special Circumstance Type:</label>
                                                                                <div class="controls">
                                                                                    <input type="text" id="txtSpecialCur" name="txtSpecialCur"   />
                                                                                    <input type="submit" value="Add Special Circumstance Type" name="cmdSpecialCur" />
                                                                                </div>

                                                                                <br/>  </div>
                                                                        </form>
                                                                        <div class="controls offset2" >
                                                                            <label class="control-label" for="SpecialCurList">Special Circumstance Type(s):</label>

                                                                            <select id="SpecialCurList" name="SpecialCurList" size="5">
                                                                                <%
                                                                                    for (int i = 0; i < specialCurList.size(); i++) {
                                                                                %>
                                                                                <option><% out.print(specialCurList.get(i));%> </option>

                                                                                <%
                                                                                    }
                                                                                %>
                                                                            </select>
                                                                            <br/>
                                                                            <input type="button" onclick="editReferenceList('specialcircumstance', 'SpecialCurList')" value="Edit Special Circumstance" id="cmdEditSpecialCur" name="cmdEditSpecialCur" />
                                                                            <input type="button" onclick="deleteReferenceList('specialcircumstance', 'SpecialCurList')" value="Delete Special Circumstance" id="cmdDeleteSpecialCur" name="cmdDeleteSpecialCur" />

                                                                        </div>
                                                                    </div> 
                                                                    <%--Display save result --%> 
                                                                    <div  class="offset3">
                                                                        <label  > <% out.println(String.valueOf(specialCurResult));%></label>
                                                                    </div>
                                                                    <br/>
                                                                    <br/>
                                                                </div>

                                                                <div id="externalCause" class="tab-pane <%out.println(String.valueOf(exCause));%> "> 
                                                                    <div align="center"><h2>External Cause</h2> </div>   
                                                                    <%--content for Special Circumstance reference list--%>
                                                                    <div class="offset2 ">
                                                                        <form name="AddExternalCause" id="AddExternalCause" method="post" action="ReferenceListServlet"  >
                                                                            <input type="text" name="form" value="AddExternalCause" style="visibility: hidden" />
                                                                            <div class="control-group form-horizontal">
                                                                                <label class="control-label" for="txtExternalCause">External Cause Type:</label>
                                                                                <div class="controls">
                                                                                    <input type="text" id="txtExternalCause" name="txtExternalCause"   />
                                                                                    <input type="submit" value="Add External Cause Type" name="cmdExternalCause" />
                                                                                </div>

                                                                                <br/>  
                                                                            </div>
                                                                        </form>
                                                                        <div class="controls offset2" >
                                                                            <label class="control-label" for="ExternalCauseList">External Cause Type(s):</label>

                                                                            <select id="ExternalCauseList" name="ExternalCauseList" size="5">
                                                                                <%
                                                                                    for (int i = 0; i < exCauseList.size(); i++) {
                                                                                %>
                                                                                <option><% out.print(exCauseList.get(i));%> </option>

                                                                                <%
                                                                                    }
                                                                                %>
                                                                            </select>
                                                                            <br/>
                                                                            <input type="button" onclick="editReferenceList('externalcircumstance', 'ExternalCauseList')" value="Edit External Cause" id="cmdEditExternalCause" name="cmdEditExternalCause" />
                                                                            <input type="button" onclick="deleteReferenceList('externalcircumstance', 'ExternalCauseList')" value="Delete External Cause" id="cmdDeleteExternalCause" name="cmdDeleteExternalCause" />

                                                                        </div>
                                                                    </div> 
                                                                    <%--Display save result --%> 
                                                                    <div  class="offset3">
                                                                        <label  > <% out.println(String.valueOf(exCauseResult));%></label>
                                                                    </div>
                                                                    <br/>
                                                                    <br/>
                                                                </div>

                                                                <div id="sealType" class=" tab-pane <%out.println(String.valueOf(slType));%> "> 
                                                                    <div align="center"><h2>Seal Type</h2> </div>   
                                                                    <%--content for seal type reference list--%>
                                                                    <div class="offset2 ">
                                                                        <form name="AddSealType" id="AddSealType" method="post" action="ReferenceListServlet"  >
                                                                            <input type="text" name="form" value="AddSealType" style="visibility: hidden" />
                                                                            <div class="control-group form-horizontal">
                                                                                <label class="control-label" for="txtSealType">Seal Type:</label>
                                                                                <div class="controls">
                                                                                    <input type="text" id="txtSealType" name="txtSealType"   />
                                                                                    <input type="submit" value="Add Seal Type" name="cmdSealType" />
                                                                                </div>

                                                                                <br/>  </div>
                                                                        </form>
                                                                        <div class="controls offset2" >
                                                                            <label class="control-label" for="SealTypeList">Seal Type(s):</label>

                                                                            <select id="SealTypeList" name="SealTypeList" size="5">
                                                                                <%
                                                                                    for (int i = 0; i < slTypeList.size(); i++) {
                                                                                %>
                                                                                <option><% out.print(slTypeList.get(i));%> </option>


                                                                                <%
                                                                                    }
                                                                                %>
                                                                            </select>
                                                                            <br/>
                                                                            <input type="button" onclick="editReferenceList('scenetype', 'SealTypeList')" value="Edit Seal Type" id="cmdEditSealType" name="cmdEditSealType" />
                                                                            <input type="button" onclick="deleteReferenceList('scenetype', 'SealTypeList')" value="Delete Seal Type  " id="cmdDeleteSealType" name="cmdDeleteSealType" />

 
                                                                        </div>
                                                                    </div> 
                                                                    <%--Display save result --%> 
                                                                    <div  class="offset3">
                                                                        <label> <% out.println (String.valueOf(slTypeResult));%> </label>
                                                                    </div>
                                                                    <br/>
                                                                    <br/>
                                                                </div>
                                                            </div> 
                                                        </div>           
                                                    </div>


                                                    </div>



                                                    <form name="formname" action="EditReferenceListServlet" method="post">

                                                        <input type="hidden" id="item" name="item">
                                                        <input type="hidden" id="Olditem" name="Olditem">
                                                        <input type="hidden" id="table" name="table">
                                                        <input type="hidden" id="editProv" name="editProv">
                                                    </form>

                                                    <form name="formdelete" action="DeleteReferenceListServlet" method="post">
                                                        <input type="hidden" id="item1" name="item1">
                                                        <input type="hidden" id="table1" name="table1">
                                                        <input type="hidden" id="editProv1" name="editProv1">
                                                    </form>
                                                    <form name="LoadICD10Form" action="LoadICD10Table" method="post">

                                                        <input type="hidden" id="ICD10table" name="ICD10table">
                                                    </form>


                                                    </div>                                       

                                                    </body>

                                                    </html>
