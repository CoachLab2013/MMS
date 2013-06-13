<%-- 
    Document   : RegisteredSamples
    Created on : 23 May 2013, 12:39:52 PM
    Author     : Mubien Nakhooda Coachlab 2013
--%>

<%@page import="servlets.Tools"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style type="text/css">
        label.error { 
            float: none; 
            color: red; 
            padding-left: .5em; 
            vertical-align: top; 
        }
        </style>
        <script language="javascript" type="text/javascript" src="js/jquery-1.9.1.js"></script>
        <script language="javascript" type="text/javascript" src="js/jquery.validate.min.js"></script>
        <link type="text/css" rel="stylesheet"  href="bootstrap/css/tablecss.css"> 
        
            <script src="js/RegisteredSamples.js"></script>
    </head>
    <body>
        <legend>Registered Samples</legend>
        <%
            if (session.getAttribute("_registeredSamples") != null) {
                out.print("<input type=hidden id='_registeredSamples' value=" + session.getAttribute("_registeredSamples") +">"); 
                session.removeAttribute("_registeredSamples");
            }
        %>
        
        <form name="registeredSamplesForm" method="post" action="" class="form-horizontal" >
        <%
            //session.setAttribute("death_register_number", "099888592");
            if(session.getAttribute("death_register_number") != null) {
                out.println(new Tools().makeRegisteredSampleTable(session.getAttribute("death_register_number").toString()));
            }
        %>

        <br>     
        <table>
            <tr>
                <td>
                    <input class="btn" type="button" value="Edit" id="editsamplebutton">
                </td>                
            </tr>


        </table> 
        <br/><br/>
        <div class="alert alert-error" style="display: none;">
            Please Select A Sample
        </div>
    </form>
        
        <form name="editform" id="editform" method="post" action="RegisteredSamples" hidden="true">
                <table>
                    <tr>     
                        <td>Initial Seal Number:  </td> <td><input type="text" name="editInitialSealnumber" value="" readonly="true"/></td>  
                    </tr>
                    
                    <tr>
                        <td>Death Register Number:</td> <td> <input type="text" name="editDeathRegisternumber" value="" /> </td>
                    </tr> 
                        <tr>
                       
                            <td> New Seal Number:</td>  <td> <input type="text" name="editNewSealNumber" value="" /></td>
                        
                        </tr>
                        <tr>
                            <td> Lab Reference Number:</td> 
                            <%--  Foreign Key Constraint with LabRecord table  --%>
                            <td name="editRegisteredSamples"> 
                                <%
                                    out.println(new Tools().makeReferenceList("LabRecord","labNumber",""));
                                %>                                
                            </td>
                        </tr>
                            <tr>
                            <td> Reason for Sample:     </td><td><textarea cols="50" rows="3" name="editReasonseal" id=""> </textarea><br></td>
                     
                            </tr>
                          
                            <tr>

                                <td><input class="btn" type="submit" value="Save" name="edit_forensic_samples" /><br></td>
                                <td><input class="btn" type="button" value="Cancel" id="cancel_forensic_samples" name="cancel_forensic_samples" /><br></td>

                            </tr>
            </table>
            </form>
    </body
        
</html>
