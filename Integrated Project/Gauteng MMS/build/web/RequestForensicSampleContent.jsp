<%-- 
    Document   : RequestForensicSampleContent
    Created on : 23 Apr 2013, 1:38:13 PM
    Author     : Lady
--%>

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
<script language="javascript" type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script language="javascript" type="text/javascript" src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.10.0/jquery.validate.min.js"></script>
 <script src="js/RequestForensicSampleScript.js"></script>
    </head>
    <body>
        <legend>Body File> Edit Body File> Post Mortem> Request Forensic Sample</legend>
        <form name="requestform" id="requestform" method="post" action="">
                <table>
                    <tr>     
                        <td>Type of analysis:  </td> <td> <select name="typeofanalysis">
                        <option>Select</option>
                        <option>Lady</option>
                    </select> </td>
                      
                    </tr>
                    
                    <tr>
                        <td>Institution:</td> <td> <select name="institution">
                                <option>Select</option>
                                <option>Lady</option>
                            </select> </td>
                    </tr> 
                        <tr>
                       
                            <td> Seal number:</td>  <td>  <select name="seal">
                                <option>Select</option>
                                <option></option>
                            </select> </td>
                        
                        </tr>
                        
                            <tr>
                            <td> Special instructions:  </td><td><textarea cols="50" rows="3" name="special" value=""> </textarea><br></td>
                     
                            </tr>
                            
                            <tr>
                                <td> Employee name:</td> <td> <br> <input type="text" name="employeename" value="" /></td>
                            </tr>
                            
                            <tr>
                                <td> Employee surname:</td> <td> <br> <input type="text" name="employeesurname" value=""/> </td>
                            </tr>
                            
                            
                            <tr>
                                <td> <td>  <input type="submit" value="Request" name="request forensic sample" /><br></td></td>
          
                            </tr>
            </table>
            </form>
    </body
        
</html>

