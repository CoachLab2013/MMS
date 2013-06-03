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
      /*      if(session.getAttribute("recipientDetail")!= null)
            {
                out.print("<input type=hidden class='go_to_deceasedDetails' id='go_to_deceasedDetails' value=" + session.getAttribute("recipientDetail") +">");  
                session.removeAttribute("recipientDetail");
            } */
        %>
        
        <legend>Body File> Edit Body File> Body Identification> Release Body </legend>
    
          <td> <td>  <input type="submit" value="Done" name="releasebodydone" action="SaveRecipientDetails" /><br></td></td>
          
                            
        <form name="Releaseform" id="Releaseform" method="post" action="SaveRecipientDetails">
             
        <h4>Selected body for release : </h4>
         <%
            Tools t = new Tools();            
            out.println(t.bodyRelease("opentable"));
            %>
            
            <h4>Linked bodies : </h4>
             <%
            Tools t2 = new Tools();
            out.println(t2.bodyfile("opentable"));
            %>
            
            
                <table>
                    <tr>     
                        <td>Name:  </td> <td><input type="text" name="RecipientName" id ="recipientName"  /></td>  
                    </tr>
                    
                    <tr>
                        <td>Surname:</td> <td> <input type="text" name="RecipientSurname" value="" id ="recipientSurname"  /> </td>
                    </tr> 
                    
                    <tr>     
                        <td>Identification type:  </td> <td> <select name="Recipientidentificationtype" id="recipientidentificationtype">
                        <option>Select</option>
                        <option>ID</option>
                        <option>Passport</option>
                    </select> </td>
                      
                    </tr>
                        
                    <tr>
                         <td> Identification Number:</td>  <td> <input type="text" name="RecipientIDNumber" value="" id="recipientIDNumber" /></td>                       
                     </tr>
                     
                      <tr>
                            <td> Residential Address:     </td><td><textarea cols="50" rows="3" name="RecipientAddres" id="recipientAddres"> </textarea><br></td>
                            </tr>
                        
                        <tr>
                            <td> Contact number:</td> <td> <input type="text" name="RecipientContact" value="" id ="recipientContact"/></td>
                        </tr>
                        
                        <tr>
                            <td>Body Release Type:</td>
                            <td>
                                <select name="releasetype" id="releasetype">
                                    <option>Select</option>
                                    <option>001</option>
                                    <option>002</option>
                                </select>
                            </td>
                        </tr>
                        
                        
                        <tr>
                          <td>Released To:</td>
                          <td>
                              <select name="releaseto" id="releaseto">
                                  <option>Select</option>
                                  <option>Peter</option>
                                  <option>Jacob</option>
                              </select>
                          </td>  
                        </tr>
                          
                           <tr>
                                <td> <td>  <input type="submit" value="Release Body" name="releasebodydone" id="releasebodydone" /><br></td></td>
          
                            </tr>
            </table>
            </form>
</body>
        
</html>
