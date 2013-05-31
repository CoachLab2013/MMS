<%-- 
    Document   : ForgotPassword
    Created on : May 27, 2013, 1:23:42 PM
    Author     : Asheen
--%>

<%@page import="servlets.Tools"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
    <html>
        <head>
                            <%  
             
            response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
response.setDateHeader("Expires", 0); // Proxies. 
        %>
            <title>MMS Login</title>
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <style type="text/css">
                label.error { 
                    float: none; 
                    color: red; 
                    padding-left: .5em; 
                    vertical-align: top; 
                }
                label.success { 
                    float: none; 
                    color: green; 
                    padding-left: .5em; 
                    vertical-align: top; 
                }
            </style>
            <script language="javascript" src="js/jquery-1.9.1.js"></script>
            <script language="javascript" src="js/jquery.validate.min.js"></script>
            <script src="js/ForgotPasswordScript.js"></script>
            
            <script src="bootstrap/js/bootstrap-tabs.js"></script>
            <script src="bootstrap/js/validate.js"></script>
            <script src="bootstrap/js/bootstrap.min.js"></script>
            <link type="text/css" rel="stylesheet"  href="CSS/Design.css"> 
            <link type="text/css" rel="stylesheet"  href="bootstrap/css/bootstrap.css"> 
             <div class="head"><img src="Images/logo2.jpg">
                 <% Tools t = new Tools();
            out.println(t.makeIcon());
        %>
        </head>
        
        <body style=" height:600px">           
            
            <form name="reset_password_form" method="post" action="ForgotPasswordServlet" class="form-horizontal" id="reset_password_form" >
               
                <div class="offset3  span7 ">
                    <fieldset class="fieldset">
                        <legend class="legend"> Reset Password</legend>
                        <div class="control-group">
                            <label class="control-label" for="personelnumber">Persal Number</label> 
                            <div class="controls">
                                <input type="text" name="personnelnumber_forgot" id="personnelnumber_forgot"/> 
                            </div>
                        </div>
                        <div class="offset2 ">
                            <input type="submit" class="btn" value="Reset Password" /> <br/><br/>
                        </div>
                        <div class="offset2">
                            <% 
                                if(session.getAttribute("error_reset") !=null){
                                    out.println("<label class=error>"+session.getAttribute("error_reset")+"</label>");
                                    session.removeAttribute("error_reset");
                                }
                                if(session.getAttribute("password_reset") !=null){
                                    out.println("<label class=success>"+session.getAttribute("password_reset")+"</label>");                                    
                                    out.println("<a href='LogOutServlet'>Login with new password</a>");
                                    session.removeAttribute("passsword_reset");
                                }
                            %>
                        </div>
                    </fieldset>
                </div>
            </form>
        </body>
    </html>
