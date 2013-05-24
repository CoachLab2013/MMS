<%-- 
    Document   : ReleaseBodyContent
    Created on : 23 May 2013, 11:41:53 AM
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
         <script src="js/ReleaseBodyContentScript.js"></script>
    </head>
    <body>
         <%
            Tools t = new Tools();
            //out.println(t.bodyRelease("bodyreleasetable"));
             //out.println(t.makeOpenIncidentsTable("opentable"));
           out.println(t.bodyRelease("opentable"));
            %>
       
          <td> <td>  <input type="submit" value="Done" name="releasebodydone" /><br></td></td>
          
                            
        <form name="Releaseform" id="Releaseform" method="post" action="">
            
            
            
                <table>
                    <tr>     
                        <td>Name:  </td> <td><input type="text" name="RecipientName" id =""  /></td>  
                    </tr>
                    
                    <tr>
                        <td>Surname:</td> <td> <input type="text" name="RecipientSurname" value="" id =""  /> </td>
                    </tr> 
                    
                    <tr>     
                        <td>Identification type:  </td> <td> <select name="Recipientidentificationtype" id="">
                        <option>Select</option>
                        <option>ID</option>
                        <option>Passport</option>
                    </select> </td>
                      
                    </tr>
                        
                    <tr>
                         <td> Identification Number:</td>  <td> <input type="text" name="RecipientIDNumber" value="" id="" /></td>                       
                     </tr>
                     
                      <tr>
                            <td> Residential Address:     </td><td><textarea cols="50" rows="3" name="RecipientRes" id=""> </textarea><br></td>
                            </tr>
                        
                        <tr>
                            <td> Contact number:</td> <td> <input type="text" name="RecipientContact" value="" id =""/></td>
                        </tr>
                        
                        <tr>
                            <td>Body Release Type:</td>
                            <td>
                                <select name="releasetype">
                                    <option>Select</option>
                                    <option></option>
                                    <option></option>
                                </select>
                            </td>
                        </tr>
                        
                        
                        <tr>
                          <td>Released To:</td>
                          <td>
                              <select name="releaseto">
                                  <option>Select</option>
                                  <option></option>
                                  <option></option>
                              </select>
                          </td>  
                        </tr>
                          
                           <tr>
                                <td> <td>  <input type="submit" value="Release Body" name="releasebodydone" /><br></td></td>
          
                            </tr>
            </table>
            </form>
</body>
        
</html>
