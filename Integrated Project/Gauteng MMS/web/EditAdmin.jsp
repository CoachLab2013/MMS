<%-- 
    Document   : EditAdmin
    Created on : 21 Apr 2013, 10:03:16 PM
    Author     : Sandile
--%>

 <%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script language="javascript" type="text/javascript" src="js/jquery-1.9.1.js"></script>
        <script language="javascript" type="text/javascript" src="js/jquery.validate.min.js"></script>
        <link type="text/css" rel="stylesheet"  href="bootstrap/css/bootstrap.css">           
        <script src="bootstrap/js/bootstrap-tabs.js"></script>
        <script src="bootstrap/js/bootstrap.min.js"></script>
        <link type="text/css" rel="stylesheet"  href="CSS/Design.css">
        <script src="js/jquery-1.7.1.min.js"></script>
        <script src="js/jquery.validate.min.js"></script>
        <script src="js/script.js"></script>
        <link  type="text/css" href="CSS files/style.css" rel="stylesheet">
        <title>Edit User</title>
    </head>
    <body style="height:650px">
        <%
            //Java code
                 String name = "";
                String surnme = "";
                String email = "";
                String personnel ="";
                int level = 0;
                Boolean active = false;
                String editResult ="";
                String Supervisor = " ";
                String fpsOfficer = " ";
                String Pathologist = " ";
                String Administrator = " ";

                String Afalse = "";
                String Atrue = "";
            try {
                  name = (String) session.getAttribute("name");
                  surnme = (String) session.getAttribute("surname");
                  email = (String) session.getAttribute("email");
                  personnel = (String) session.getAttribute("personnel");
                  level = Integer.parseInt(session.getAttribute("level").toString().trim());
                  active = (Boolean) session.getAttribute("active");
                  editResult = session.getAttribute("Eresult").toString();
                  Supervisor = " ";
                  fpsOfficer = " ";
                  Pathologist = " ";
                  Administrator = " ";

                  Afalse = "";
                  Atrue = "";
                if (level == 1) {
                    Supervisor = "selected";
                } else if (level == 2) {
                    fpsOfficer = "selected";
                } else if (level == 3) {
                    Pathologist = "selected";
                } else if (level == 4) {
                    Administrator = "selected";
                }

                if (active) {
                    Atrue = "selected";
                } else if (!active) {
                    Afalse = "selected";
                }
            } catch (NullPointerException ex) {
                //Log out
                
                 response.sendRedirect("Login.jsp");
            }
        %>

        <div align="center"><h2>Edit User  </h2> </div>  

        <form name="EditUser" id="EditUser" method="post" action="EditUser" class="form-horizontal">

            <div class="offset2 span7 ">
                <input type="text" name="form" value="EditUser" style="visibility: hidden" />
                <fieldset>
                    <legend>User Personal Details</legend>
                    <label   > <% out.println(String.valueOf(editResult));%> </label>
                    <div class="control-group ">

                        <label  class="control-label" for="firstName">Full Name(s):</label> 
                        <div class="controls error">
                            <input type="text" name="firstName" id="firstName" value=<%= name%>  /> 
                        </div>
                    </div>

                    <div class="control-group  ">
                        <label  class="control-label" for="surname">Surname:</label> 
                        <div class="controls error">
                            <input  type="text" name="surname"  id="surname"  value=<%= surnme%> />
                        </div>
                    </div>

                    <div class="control-group  ">
                        <label  class="control-label" for="email" >Email:</label> 
                        <div class="controls error">
                            <input type="text" name="email" value=<%= email%> id="email" />
                        </div>
                    </div>
                </fieldset>

                </br> </br>

                <fieldset>
                    <legend>User Employment Details</legend>
                    <div class="control-group  ">
                        <label  class="control-label" for="personnelNumber">Persal Number:</label>
                        <div class="controls error">
                            <input type="text" maxlength="8" readonly name="personnelNumber" value=<%= personnel%> id="personnelNumber"  />
                        </div>
                    </div>

                    <div class="control-group  ">
                        <label  class="control-label" for="level">Access Level:</label>
                        <%-- Drop down list for occupation --%>
                        <div class="controls error">
                            <select name="level" id="level">
                                <option value=""> <% out.println(String.valueOf("-Please Select-"));%></option>
                                <option <% out.println(String.valueOf(Supervisor));%>  value="1">Supervisor</option>
                                <option <% out.println(String.valueOf(fpsOfficer));%>   value="2">FPS Officer</option>
                                <option <% out.println(String.valueOf(Pathologist));%>   value="3">Pathologist</option>
                                <option <% out.println(String.valueOf(Administrator));%>  value="4">Administrator</option>                               
                                </option>

                            </select>
                        </div>
                    </div>


                    <div class="control-group  ">
                        <label  class="control-label" for="active">Active:</label>
                        <%-- Drop down list for rank --%>
                        <div class="controls error">
                            <select name="active" tabindex="1" id="active">
                                <option value=""> <% out.println(String.valueOf("-Please Select-"));%></option>
                                <option <% out.println(String.valueOf(Afalse));%> value="false">False</option>
                                <option <% out.println(String.valueOf(Atrue));%>value="true">True</option>

                            </select>
                        </div>
                    </div>

                </fieldset>
                <br/> <br/>                                 
                <div class="offset4">
                    <input type="submit"  class="btn btn-primary" type="button" value="Save Changes" /> 

                </div>

                <br/> <br/> 

            </div>
        </form>
    </div> 
</body>
</html>
