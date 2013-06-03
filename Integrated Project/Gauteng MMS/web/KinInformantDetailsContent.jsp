<%-- 
    Document   : KinInformantDetailsContent
    Created on : 25 Apr 2013, 9:50:28 AM
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

 <script src="js/KinDetailScript.js"></script>
    
    </head>
    
    <body>
         <%
          if(session.getAttribute("kinDetail")!= null)
           {
                out.print("<input type=hidden class='go_to_deceasedDetails' id='go_to_deceasedDetails' value=" + session.getAttribute("kinDetail") +">");  
                session.removeAttribute("kinDetail");
            } 
        %>
        <legend>Body File> Edit Body File> Body Identification> Kin/Informant Details </legend>
        <form name="Kinform" id="Kinform" method="post" action="SaveKinDetailsServlet">
      
          
                <table>
                    <tr>     
                        <td>Name:  </td> <td><input type="text" name="KinName" id ="kinName"  /></td>  
                    </tr>
                    
                    <tr>
                        <td>Surname:</td> <td> <input type="text" name="KinSurname" value="" id ="kinSurname"  /> </td>
                    </tr> 
                    
                    <tr>     
                        <td>Identification type:  </td> <td> <select name="identificationtype" id="kinIdType">
                        <option>Select</option>
                        <option>ID</option>
                        <option>Passport</option>
                    </select> </td>
                      
                    </tr>
                        
                    <tr>
                         <td> Identification Number:</td>  <td> <input type="text" name="KinIDNumber" value="" id="kinIdNumber" /></td>                       
                     </tr>
                        
                        <tr>
                            <td> Relationship to deceased:</td> <td> <input type="text" name="KinRelationship" value="" id="kinRelationDeceased" /></td>
                        </tr>
                        
                        <tr>
                            <td> Contact number:</td> <td> <input type="text" name="KinContact" value="" id ="kinContactNumber"/></td>
                        </tr>
                        
                            <tr>
                            <td> Residential Address:     </td><td><textarea cols="50" rows="3" name="KinRes" id="kinAddress"> </textarea><br></td>
                            </tr>
                            
                            <tr>
                            <td> Work Address:     </td><td><textarea cols="50" rows="3" name="KinWork" id="kinWorkAddress"> </textarea><br></td>
                            </tr>
                          
                            <tr>
                                <td> <td>  <input type="submit" value="Save" name="bodySave" /><br></td></td>
          
                            </tr>
            </table>
            </form>
    </body
        
</html>