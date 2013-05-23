<%-- 
    Document   : RequestForensicSampleContent
    Created on : 23 Apr 2013, 1:38:13 PM
    Author     : Lady
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
 <script src="js/RequestForensicSampleScript.js"></script>
    </head>
    <body>
                
        <legend>Body File> Edit Body File> Post Mortem> Request Forensic Sample</legend>
        <form name="requestform" id="requestform" method="post" action="">
                <table>
                    <tr>     
                        <td>Type of analysis:  </td> 
                        <td> 
                            
                            <%
                                out.println(new Tools().makeReferenceList("analysis","type",""));
                            %>
                             
                        </td>
                      
                    </tr>
                    
                    <tr>
                        <td>Institution:</td> 
                        <td> 
                            
                            <%
                                out.println(new Tools().makeReferenceList("institution","type",""));
                            %>
                            
                        </td>
                    </tr> 
                        <tr>
                       
                            <td> Seal Number:</td>  <td>  <select name="seal">
                                <option>Select</option>
                                <option></option>
                            </select> </td>
                        
                        </tr>
                        
                            <tr>
                            <td> Special Instructions:  </td><td><textarea cols="50" rows="3" name="special" value=""> </textarea><br></td>
                     
                            </tr>
                            
                            <tr>
                                <td> Employee Name:</td> <td> <br> <input type="text" name="employeename" value="" /></td>
                            </tr>
                            
                            <tr>
                                <td> Employee Surname:</td> <td> <br> <input type="text" name="employeesurname" value=""/> </td>
                            </tr>
                            
                            
                            <tr>
                                <td> <td>  <input type="submit" value="Request" name="request forensic sample" /><br></td></td>
          
                            </tr>
            </table>
            </form>
    </body
        
</html>

