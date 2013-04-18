<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<%--
    This file is an entry point for JavaServer Faces application.
--%>
<f:view>
    <html>
        <head>
            <title>Login to MMS</title>
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
         
            <link type="text/css" rel="stylesheet"  href="CSS/Design.css"> 
            <link type="text/css" rel="stylesheet"  href="bootstrap/css/bootstrap.css"> 
        </head>
        <body>
            <h1 align="center">Gauteng Mortuary Management System</h1>
            <div align="center">
                <img src="Images/logo.jpg" width="150" height="150">
            </div>
            
            <form name="login" method="post" action="LogInServlet" class="form-horizontal" >
               
                <div class="offset5  span7 ">
                    <fieldset class="fieldset">
                        <legend class="legend"> Login</legend>
                        <div class="control-group">
                            <label class="control-label" for="personelnumber">Personnel Number</label> 
                            <div class="controls">
                                <input type="text" name="personnelnumber" id="persal"/> 
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" for="password">Password</label>
                            <div class="controls">
                                <input type="password" name="password" id="password"/> 
                            </div>
                        </div>
                        <div class="offset2 ">
                            <input type="submit" class="btn" value="Login" /> <br><br>
                            <%
                                    if(null != session.getAttribute("loginerror")){
                                    out.println(session.getAttribute("loginerror"));
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
