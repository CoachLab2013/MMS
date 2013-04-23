<%-- 
    Document   : EditCallDetailsContent
    Created on : 19 Apr 2013, 12:32:17 PM
    Author     : Administrator
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
 <script src="js/CallDetailsScript.js"></script>
    </head>
    <body>
        <legend>Incidents> Log Incident> Call Details</legend>
        <form name="callform" id="callform" method="post" action="">
      
          
                <table>
                    <tr>     
                        <td>  Time of Call:  </td><td><jsp:include page="Time.jsp" /><br></td>
                      
                    </tr>
                    <tr>
                        <td>  Caller's Phone Number:  </td><td> <input type="text" name="phonenumber" id="phonenumber"/><br></td>
                    </tr> 
                        <tr>
                       
                            <td> Name of Caller:   </td><td>       <input type="text" name="name" id="name"/><br></td>
                        
                        </tr>
                        <tr>
                            <td> Name of institution: </td><td>    <input type="text" name="institution" id="institution" /><br></td>
                        </tr>
                            <tr>
                            <td> Scene Address:     </td><td><textarea cols="50" rows="3" name="address" id="address"> </textarea><br></td>
                     
                            </tr>
                            <tr>
                            <td> Provinces:         </td><td>      <select name="province" id="province"><br>
             
              <option slected="selected">Select</option>
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
                        <td>  Region:</td><td><select name="region" id="region"><br>
             <option selected="selected">Select</option>
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
                        <td>  Scene condition: </td><td><textarea cols="50" rows="3" name="condition" id="condition"> </textarea><br></td>
                            </tr>
                            <tr>
                                <td> <td>  <input type="submit" value="Create Incident" name="create call details" /><br></td></td>
          
                            </tr>
            </table>
            </form>
    </body
        
</html>
