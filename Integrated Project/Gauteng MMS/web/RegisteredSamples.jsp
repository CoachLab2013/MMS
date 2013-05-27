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
        <legend>Body File> Edit Body File> Post Mortem> Registered Samples</legend>
        <%
            if (session.getAttribute("_registeredSamples") != null) {
                out.print("<input type=hidden id='_registeredSamples' value=" + session.getAttribute("_registeredSamples") +">"); 
                session.removeAttribute("_registeredSamples");
            }
        %>
        <form name="registeredSamplesForm" method="post" action="" class="form-horizontal" >
        <%--
            out.println(new Tools().makeRegisteredSampleTable("sampletable"));
        --%>

        <br>        


        <table>
            <tr>
                <td>
                    <input type="button" value="Edit" id="editincidentbutton">
                </td>                
            </tr>


        </table> 
        <br>
        <br>
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
                                <td> <td>  <input type="submit" value="Save" name="edit forensic samples" /><br></td></td>
          
                            </tr>
            </table>
            </form>
    </body
        
</html>
