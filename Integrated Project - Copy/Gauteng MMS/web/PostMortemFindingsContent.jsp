<%-- 
    Document   : PostMortemFindingsContent
    Created on : 23 Apr 2013, 2:39:06 PM
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
 <script src="js/PostMortemFindingsContentScript.js"></script>
    </head>
    <body>
        <form name="Findingsform" id="Findingsform" method="post" action="">
      
          
                <table>
                    <tr>
                    <td> Cause of Death:     </td><td><textarea cols="50" rows="3" name="findingsdeath" id="findingsdeath"> </textarea><br></td>
                     </tr>
                    <tr>
                        <td> DHA 1663 Number:  </td><td> <input type="text" name="findingsnumber" id="findingsnumber"/><br></td>
                    </tr> 
                            <tr>
                            <td> Chief post mortem:     </td><td><textarea cols="50" rows="3" name="findingsmortem" id="findingsmortem"> </textarea><br></td>
                     
                            </tr>
                            <tr>
                        <td>  ICD codes:</td><td><select name="ICDcode" id="ICDcode"><br>
             <option selected="selected">Select</option
             <option></option>
             <option></option>
             <option></option>
             <option></option>
             <option></option>
             <option></option>
             <option></option>
             <option></option>
         </select><br>
                            </tr>
                            <tr>
                                <td> <td>  <input type="submit" value="Done" name="postfindingsdone" /><br></td></td>
          
                            </tr>
            </table>
            </form>
    </body
        
</html>