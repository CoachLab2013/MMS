<%-- 
    Document   : RegisterForensicSampleContent
    Created on : 23 Apr 2013, 2:17:52 PM
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
<script language="javascript" type="text/javascript" src="js/jquery-1.9.1.js"></script>
        <script language="javascript" type="text/javascript" src="js/jquery.validate.min.js"></script>
 <script src="js/RegisterForensicSampleScript.js"></script>
    </head>
    <body>
        <legend>Body File> Edit Body File> Post Mortem> Register Forensic Sample Content</legend>
        <form name="registerform" id="registerform" method="post" action="">
      
          
                <table>
                    <tr>     
                        <td>Initial Seal number:  </td> <td><input type="text" name="InitialSealnumber" value="" /></td>  
                    </tr>
                    
                    <tr>
                        <td>Death Register number:</td> <td> <input type="text" name="DeathRegisternumber" value="" /> </td>
                    </tr> 
                        <tr>
                       
                            <td> New Seal Number:</td>  <td> <input type="text" name="NewSealNumber" value="" /></td>
                        
                        </tr>
                        <tr>
                            <td> Lab Reference Number::</td> <td> <input type="text" name="LabReferenceNumber" value="" /></td>
                        </tr>
                            <tr>
                            <td> Reason for sample:     </td><td><textarea cols="50" rows="3" name="Reasonseal" id=""> </textarea><br></td>
                     
                            </tr>
                          
                            <tr>
                                <td> <td>  <input type="submit" value="Register" name="register forensic samples" /><br></td></td>
          
                            </tr>
            </table>
            </form>
    </body
        
</html>