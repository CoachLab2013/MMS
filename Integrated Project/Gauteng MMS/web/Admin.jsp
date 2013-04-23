<%-- 
    Document   : Admin
    Created on : 12 Apr 2013, 12:19:36 PM
    Author     : Sandile
 
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="database.DbDetail"%>
<%@page import="database.ReferenceListDb"%>

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
            String oraganisationResult = "";
            String provinceResult = "";
            String iCD10Result = "";
            String mannerResult = "";
            String sampleResult = "";
            String statusResult = "";
            String relationshipResult = "";

            String main1 = "";
            String addUserTab = "";
            String currentUserTab = "";
<<<<<<< HEAD
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
=======
            String main2 = "";

            String inst = "";
            String analysis = "";
            String relationship = "";
            String status = "";
            String sample = "";
            String manner = "";
            String icd10 = "";
            String province = "";
            String organisation = "";
            String marital = "";
            String race = "";
            String occu = "";
            String gender = "";
            String rank = "";
            String vehi = "";
            String property = "";

            //Determine which tab must be open
            try {
                if (session.getAttribute("main").equals("ref")) {

                    main2 = "active";

                    if (session.getAttribute("tab").equals("insti")) {
                        inst = "active";
                        instiResult = session.getAttribute("result").toString();

                    } else if (session.getAttribute("tab").equals("analysis")) {
                        analysis = "active";
                        analysisResult = session.getAttribute("result").toString();

                    } else if (session.getAttribute("tab").equals("property")) {
                        propertyResult = session.getAttribute("result").toString();
                        property = "active";
                    } else if (session.getAttribute("tab").equals("vehi")) {
                        vehicleResult = session.getAttribute("result").toString();
                        vehi = "active";
                    } else if (session.getAttribute("tab").equals("rank")) {
                        rankResult = session.getAttribute("result").toString();
                        rank = "active";
                    } else if (session.getAttribute("tab").equals("gender")) {
                        genderResult = session.getAttribute("result").toString();
                        gender = "active";
                    } else if (session.getAttribute("tab").equals("occu")) {
                        occupationResult = session.getAttribute("result").toString();
                        occu = "active";
                    } else if (session.getAttribute("tab").equals("race")) {
                        raceResult = session.getAttribute("result").toString();
                        race = "active";
                    } else if (session.getAttribute("tab").equals("marital")) {
                        maritalResult = session.getAttribute("result").toString();
                        marital = "active";
                    } else if (session.getAttribute("tab").equals("organisation")) {
                        oraganisationResult = session.getAttribute("result").toString();
                        organisation = "active";
                    } else if (session.getAttribute("tab").equals("province")) {
                        provinceResult = session.getAttribute("result").toString();
                        province = "active";
                    } else if (session.getAttribute("tab").equals("icd10")) {
                        iCD10Result = session.getAttribute("result").toString();
                        icd10 = "active";
                    } else if (session.getAttribute("tab").equals("manner")) {
                        mannerResult = session.getAttribute("result").toString();
                        manner = "active";
                    } else if (session.getAttribute("tab").equals("sample")) {

                        sampleResult = session.getAttribute("result").toString();
                        sample = "active";

                    } else if (session.getAttribute("tab").equals("status")) {
                        statusResult = session.getAttribute("result").toString();
                        status = "active";
                    } else if (session.getAttribute("tab").equals("relationship")) {
                        relationshipResult = session.getAttribute("result").toString();
                        relationship = "active";
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
                    oraganisationResult = "";
                    provinceResult = "";
                    iCD10Result = "";
                    mannerResult = "";
                    sampleResult = "";
                    statusResult = "";
                    relationshipResult = "";

                    main1 = "active";

                    if (session.getAttribute("tab").equals("CurrUser")) {

                        userResult = session.getAttribute("result").toString();
                        if (session.getAttribute("tab").equals("Adduser")) {
                            addUserTab = "active";
                        }
                    } else {

                        currentUserTab = "active";
                    }

                }
            } catch (Exception ex) {
                currentUserTab = "active";
                main1 = "active";
            } 
            
        
            //Code to populate list boxes in tabs
            DbDetail dbDetail = new DbDetail("localhost", "/mydb", "root", "msandas777");
            //For institution list box
           
            ReferenceListDb emp = new ReferenceListDb("institution", "e", "type", "e", dbDetail);
            emp.init();
            ArrayList<String> institutionList = emp.referenceList();
            
             //For analysis list box
              emp = new ReferenceListDb("analysis", "e", "type", "e", dbDetail);
              emp.init();
              ArrayList<String> analysisList = emp.referenceList();
            
             //For rank list box
              emp = new ReferenceListDb("rank", "e", "type", "e", dbDetail);
              emp.init();
              ArrayList<String> rankList = emp.referenceList();
            
             //For gender list box
              emp = new ReferenceListDb("gender", "e", "type", "e", dbDetail);
              emp.init();
              ArrayList<String> genderList = emp.referenceList();
            
             //For occupation list box
              emp = new ReferenceListDb("occupation", "e", "type", "e", dbDetail);
              emp.init();
              ArrayList<String> occupationList = emp.referenceList();
            
             //For race list box
              emp = new ReferenceListDb("race", "e", "type", "e", dbDetail);
              emp.init();
              ArrayList<String> raceList = emp.referenceList();
            
             //For maritalstatus list box
              emp = new ReferenceListDb("maritalstatus", "e", "type", "e", dbDetail);
              emp.init();
              ArrayList<String> maritalstatusList = emp.referenceList();
            
             //For province list box
              emp = new ReferenceListDb("province", "e", "type", "e", dbDetail);
            emp.init();
            ArrayList<String> provinceList = emp.referenceList();
            
             //For icd10 list box
              emp = new ReferenceListDb("icd10", "e", "code", "e", dbDetail);
             emp.init();
             ArrayList<String> icd10List = emp.referenceList();
            
             //For mannerofdeath list box
              emp = new ReferenceListDb("mannerofdeath", "e", "type", "e", dbDetail);
            emp.init();
            ArrayList<String> mannerofdeathList = emp.referenceList();
            
             //For sample list box
              emp = new ReferenceListDb("sample", "e", "type", "e", dbDetail);
            emp.init();
            ArrayList<String> sampleList = emp.referenceList();
            
             //For bodystatus list box
              emp = new ReferenceListDb("bodystatus", "e", "state", "e", dbDetail);
            emp.init();
            ArrayList<String> bodystatusList = emp.referenceList();
            
             //For relationship list box
              emp = new ReferenceListDb("relationship", "e", "type", "e", dbDetail);
            emp.init();
            ArrayList<String> relationshipList = emp.referenceList();
           
            /*
             //For institution list box
            ReferenceListDb emp = new ReferenceListDb("institution", "e", "type", "e", dbDetail);
            emp.init();
            ArrayList<String> institutionList = emp.referenceList();
            
             //For institution list box
            ReferenceListDb emp = new ReferenceListDb("institution", "e", "type", "e", dbDetail);
            emp.init();
            ArrayList<String> institutionList = emp.referenceList();
            
             //For institution list box
            ReferenceListDb emp = new ReferenceListDb("institution", "e", "type", "e", dbDetail);
            emp.init();
            ArrayList<String> institutionList = emp.referenceList();
            
             //For institution list box
            ReferenceListDb emp = new ReferenceListDb("institution", "e", "type", "e", dbDetail);
            emp.init();
            ArrayList<String> institutionList = emp.referenceList();
            */

>>>>>>> origin/master
        %>

        <p>
            <span style="float: left">Welcome Mrs Admin </span>
            <span style="float: right">Logout  .</span>
        </p>
        <div align="center"><h1><img src="Images/logo.jpg" width="75" height="75"> Gauteng MMS Administration</h1></div>

        <%-- starting of main tabs --%>
        <div class="tabbable">
            <ul class="nav nav-tabs " data-tabs="tabs">
                <li class="<%out.println(String.valueOf(main1));%>"><a href="#User" data-toggle="tab">Users</a> </li>
                <li class="<%out.println(String.valueOf(main2));%>"><a href="#RefList" data-toggle="tab">Reference Lists</a></li>       
            </ul>
            <%-- contents of main tabs --%>
            <div class="tab-content" >
                <div id="User" class="tab-pane <%out.println(String.valueOf(main1));%> ">  
                    <div align="center"><h2>Users </h2> </div>
                    <%-- Users tab content --%>
                    <div class="tabbable">
                        <%-- Users tab has 2 tabs, and they are the following --%>
                        <ul class="nav nav-tabs " data-tabs="tabs">
                            <li class="<%out.println(String.valueOf(currentUserTab));%>"><a href="#cUser" data-toggle="tab">Current Users</a> </li>
                            <li class="<%out.println(String.valueOf(addUserTab));%> "><a href="#aUser" data-toggle="tab">Add User</a></li>       
                        </ul>

                        <div class="tab-content" >
                            <div id="cUser" class="tab-pane <%out.println(String.valueOf(currentUserTab));%>">  
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
                                                                <div id="aUser" class="tab-pane <%out.println(String.valueOf(addUserTab));%> ">  
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
                                                                                            <option value=""> <% out.println(String.valueOf("-Please Select-"));%></option>
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
                                                                                <label  > <% out.println(String.valueOf(userResult));%></label>

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
                                                                    <div align="center"><h2>Reference Lists </h2> </div> 
                                                                    <div class="tabbable">
                                                                        <%-- reference list  tab has 20 tabs, and they are the following --%>
                                                                        <ul class="nav nav-tabs " data-tabs="tabs">

                                                                            <li class="<%out.println(String.valueOf(inst));%>"><a href="#inst" data-toggle="tab">Institution</a> </li>
                                                                            <li class="<%out.println(String.valueOf(analysis));%>"><a href="#anlysis" data-toggle="tab">Type of Analysis</a></li>
                                                                            <li class="<%out.println(String.valueOf(property));%>"><a href="#prop" data-toggle="tab">Property</a></li>
                                                                            <li class="<%out.println(String.valueOf(vehi));%>"><a href="#vehicles" data-toggle="tab">Vehicles</a></li>
                                                                            <li class="<%out.println(String.valueOf(rank));%>"><a href="#rank" data-toggle="tab">Rank</a></li>
                                                                            <li class="<%out.println(String.valueOf(gender));%>"><a href="#gender" data-toggle="tab">Gender</a></li>
                                                                            <li class="<%out.println(String.valueOf(occu));%>"><a href="#occupation" data-toggle="tab">Occupation</a></li>
                                                                            <li class="<%out.println(String.valueOf(race));%>"><a href="#race" data-toggle="tab">Race</a></li>
                                                                            <li class="<%out.println(String.valueOf(marital));%>"><a href="#mStatus" data-toggle="tab">Marital Status</a></li>
                                                                            <li class="<%out.println(String.valueOf(organisation));%>"><a href="#org" data-toggle="tab">Organisation</a></li>
                                                                            <li class="<%out.println(String.valueOf(province));%>"><a href="#province" data-toggle="tab">Province</a></li>
                                                                            <li class="<%out.println(String.valueOf(icd10));%>"><a href="#icd10Codes" data-toggle="tab">ICD10 Codes</a></li>
                                                                            <li class="<%out.println(String.valueOf(manner));%>"><a href="#mDeath" data-toggle="tab">Manner of Death</a></li>
                                                                            <li class="<%out.println(String.valueOf(sample));%>"><a href="#sType" data-toggle="tab">Sample Type</a></li>
                                                                            <li class="<%out.println(String.valueOf(status));%>"><a href="#status" data-toggle="tab">Status</a></li>
                                                                            <li class="<%out.println(String.valueOf(relationship));%>"><a href="#relationship" data-toggle="tab">Relationship</a></li>

                                                                        </ul>
                                                                        <div class="tab-content" >
                                                                            <div id="inst" class="tab-pane <%out.println(String.valueOf(inst));%>">  
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
                                                                                            <option><% out.print(institutionList.get(i)); %> </option>
                                                                                             
                                                                                            <%
                                                                                                }
                                                                                            %>
                                                                                            
                                                                                             
                                                                                        </select>
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
                                                                                            <option><% out.print(analysisList.get(i)); %> </option>
                                                                                             
                                                                                            <%
                                                                                                }
                                                                                            %>
                                                                                            
                                                                                        </select>
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
                                                                            </div>

                                                                            <div id="vehicles" class="tab-pane <%out.println(String.valueOf(vehi));%> "> 
                                                                                <div align="center"><h2>Vehicles</h2> </div>                   
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
                                                                                            <option><% out.print(rankList.get(i)); %> </option>
                                                                                             
                                                                                            <%
                                                                                                }
                                                                                            %>
                                                                                        </select>
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
                                                                                            <option><% out.print(genderList.get(i)); %> </option>
                                                                                             
                                                                                            <%
                                                                                                }
                                                                                            %>
                                                                                        </select>
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
                                                                                            <option><% out.print(occupationList.get(i)); %> </option>
                                                                                             
                                                                                            <%
                                                                                                }
                                                                                            %>
                                                                                        </select>
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
                                                                                            <option><% out.print(raceList.get(i)); %> </option>
                                                                                             
                                                                                            <%
                                                                                                }
                                                                                            %>
                                                                                        </select>
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
                                                                                            <option><% out.print(maritalstatusList.get(i)); %> </option>
                                                                                             
                                                                                            <%
                                                                                                }
                                                                                            %>
                                                                                        </select>
                                                                                    </div>
                                                                                </div> 
                                                                                <%--Display save result --%> 
                                                                                <div  class="offset3">
                                                                                    <label  > <% out.println(String.valueOf(maritalResult));%></label>
                                                                                </div>
                                                                                <br/>
                                                                                <br/>
                                                                            </div>

                                                                            <div id="org" class="tab-pane <%out.println(String.valueOf(organisation));%> "> 
                                                                                <div align="center"><h2> Organisation </h2> </div>

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
                                                                                            <option><% out.print(provinceList.get(i)); %> </option>
                                                                                             
                                                                                            <%
                                                                                                }
                                                                                            %>
                                                                                        </select>
                                                                                    </div>
                                                                                </div> 
                                                                                <%--Display save result --%> 
                                                                                <div  class="offset3">
                                                                                    <label  > <% out.println(String.valueOf(provinceResult));%></label>
                                                                                </div>
                                                                                <br/>
                                                                                <br/>
                                                                            </div>

                                                                            <div id="icd10Codes" class="tab-pane <%out.println(String.valueOf(icd10));%> "> 
                                                                                <div align="center"><h2>ICD10 Codes </h2> </div>      
                                                                                <%--content for ICD10 code reference list--%>
                                                                                <div class="offset2 ">
                                                                                    <form name="AddICD10" id="AddICD10" method="post" action="ReferenceListServlet"  >
                                                                                        <input type="text" name="form" value="AddICD10" style="visibility: hidden" />
                                                                                        <div class="control-group form-horizontal">
                                                                                            <label class="control-label" for="txtICD10">ICD10 code:</label>
                                                                                            <div class="controls">
                                                                                                <input type="text" id="txtICD10" name="txtICD10"   />
                                                                                                <input type="submit" value="Add ICD10 Code" name="cmdICD10" />
                                                                                            </div>

                                                                                            <br/>  </div>
                                                                                    </form>
                                                                                    <div class="controls offset2" >
                                                                                        <label class="control-label" for="ICD10List">Current ICD10 Code(s):</label>

                                                                                        <select id="ICD10List" name="ICD10List" size="5">
                                                                                               <%
                                                                                                for (int i = 0; i < icd10List.size(); i++) {
                                                                                            %>
                                                                                            <option><% out.print(icd10List.get(i)); %> </option>
                                                                                             
                                                                                            <%
                                                                                                }
                                                                                            %>
                                                                                        </select>
                                                                                    </div>
                                                                                </div> 
                                                                                <%--Display save result --%> 
                                                                                <div  class="offset3">
                                                                                    <label  > <% out.println(String.valueOf(iCD10Result));%></label>
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
                                                                                            <option><% out.print(mannerofdeathList.get(i)); %> </option>
                                                                                             
                                                                                            <%
                                                                                                }
                                                                                            %>
                                                                                        </select>
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
                                                                                            <option><% out.print(sampleList.get(i)); %> </option>
                                                                                             
                                                                                            <%
                                                                                                }
                                                                                            %>
                                                                                        </select>
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
                                                                                <div align="center"><h2>Status</h2> </div>     
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

                                                                                        <select id="StatusList  " name="StatusList" size="5">
                                                                                               <%
                                                                                                for (int i = 0; i < bodystatusList.size(); i++) {
                                                                                            %>
                                                                                            <option><% out.print(bodystatusList.get(i)); %> </option>
                                                                                             
                                                                                            <%
                                                                                                }
                                                                                            %>
                                                                                        </select>
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
                                                                                            <option><% out.print(relationshipList.get(i)); %> </option>
                                                                                             
                                                                                            <%
                                                                                                }
                                                                                            %>
                                                                                        </select>
                                                                                    </div>
                                                                                </div> 
                                                                                <%--Display save result --%> 
                                                                                <div  class="offset3">
                                                                                    <label  > <% out.println(String.valueOf(userResult));%></label>
                                                                                </div>
                                                                                <br/>
                                                                                <br/>
                                                                            </div>
                                                                        </div>

                                                                    </div> 
                                                                </div>           
                                                                </div>

                                                                </div>

                                                                </body>
                                                                </html>
