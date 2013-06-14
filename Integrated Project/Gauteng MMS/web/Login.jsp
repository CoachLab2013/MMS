
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="servlets.Tools"%>
<%--<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%> --%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<%--
    This file is an entry point for JavaServer Faces application.
--%>
<f:view>
    <html>
        <head>
            <title>MMS Login</title>
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <style type="text/css">
                label.error { 
                    float: none; 
                    color: red; 
                    padding-left: .5em; 
                    vertical-align: top; 
                }
            </style>
            <script language="javascript" src="js/jquery-1.9.1.js"></script>
            <script language="javascript" src="js/jquery.validate.min.js"></script>
            <script src="js/LoginScript.js"></script>
            
            <script src="bootstrap/js/bootstrap-tabs.js"></script>
            <script src="bootstrap/js/validate.js"></script>
            <script src="bootstrap/js/bootstrap.min.js"></script>
            <link type="text/css" rel="stylesheet"  href="CSS/Design.css"> 
            <link type="text/css" rel="stylesheet"  href="bootstrap/css/bootstrap.css"> 
             <div class="head"><img class="img-rounded" style=" width:100%" src="Images/logo10.jpg"></div>
             <% Tools t = new Tools();
           //  t.adduser();
            out.println(t.makeIcon());
        %>
        </head>
        
        <body style=" height:600px">           
            
            <form name="loginform" method="post" action="LogInServlet" class="form-horizontal" id="loginform" >
               
                <div class="offset3  span7 ">
                    <fieldset class="fieldset">
                        <legend class="legend"> Login</legend>
                        <div class="control-group">
                            <label class="control-label" for="personelnumber">Persal Number</label> 
                            <div class="controls">
                                <input type="text" name="personnelnumber" id="persnnlnum"/> 
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" for="password">Password</label>
                            <div class="controls">
                                <input type="password" name="password" id="password"/><span style="float: right"><a href="ForgotPassword.jsp">Forgot password?</a></span>
                                
                            </div>
                        </div>
                        <div class="offset2 ">
                            <input type="submit" class="btn" value="Login" /> <br/><br/>
                            <%
                                    if(null != session.getAttribute("loginerror")){
                                    out.println("<label class='alert alert-error'>"+session.getAttribute("loginerror")+"</label>");
                                    session.removeAttribute("loginerror");
                                    }
                            %>
                        </div>
                    </fieldset>
                </div>
            </form>
        </body>
    </html>
</f:view>
