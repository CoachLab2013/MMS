<%-- 
    Document   : CallDetailsContent
    Created on : 18 Apr 2013, 11:14:40 AM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <legend>Incidents> Log Incident> Call Details</legend>
        <form>
      
          
                <table>
                    <tr>     
                        <td>  Time of Call:  </td><td><input type="text" name="time of call" value="" /><br></td>
                      
                    </tr>
                    <tr>
                        <td>  Caller's Phone Number:  </td><td> <input type="text" name="caller's phone number" value="" /><br></td>
                    </tr> 
                        <tr>
                       
                            <td> Name of Caller:   </td><td>       <input type="text" name="name of caller" value="" /><br></td>
                        
                        </tr>
                        <tr>
                            <td> Name of institution: </td><td>    <input type="text" name="Name of institution" value="" /><br></td>
                        </tr>
                            <tr>
                            <td> scene Address:     </td><td>      <input type="text" name="scene Adress" value="" /><br></td>
                     
                            </tr>
                            <tr>
                            <td> Provinces:         </td><td>      <select name="province"><br>
             
              <option></option>
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
                        <td>  Region:</td><td><select name="reagion"><br>
             <option></option>
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
                        <td>  Scene condition: </td><td> <input type="text" name="scene condition" value="" /><br></td>
                            </tr>
                            <tr>
                                <td> <td>  <input type="submit" value="Create Incident" name="create call details" /><br></td></td>
          
                            </tr>
            </table>
    </body
        </form>
</html>
