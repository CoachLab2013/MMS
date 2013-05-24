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
 <script src="js/KinDetailsScript.js"></script>
    </head>
    <body>
        <legend>Body File> Edit Body File> Body Identification> Kin/Informant Details </legend>
        <form name="Kinform" id="Kinform" method="post" action="">
      
          
                <table>
                    <tr>     
                        <td>Name:  </td> <td><input type="text" name="KinName"  /></td>  
                    </tr>
                    
                    <tr>
                        <td>Surname:</td> <td> <input type="text" name="KinSurname" value="" /> </td>
                    </tr> 
                    
                    <tr>     
                        <td>Identification type:  </td> <td> <select name="identificationtype">
                        <option>Select</option>
                        <option>Lady</option>
                    </select> </td>
                      
                    </tr>
                        
                    <tr>
                         <td> Identification Number:</td>  <td> <input type="text" name="KinIDNumber" value="" /></td>                       
                     </tr>
                        
                        <tr>
                            <td> Relationship to deceased:</td> <td> <input type="text" name="KinRelationship" value="" /></td>
                        </tr>
                        
                        <tr>
                            <td> Contact number:</td> <td> <input type="text" name="KinContact" value="" /></td>
                        </tr>
                        
                            <tr>
                            <td> Residential Address:     </td><td><textarea cols="50" rows="3" name="KinRes" id=""> </textarea><br></td>
                            </tr>
                            
                            <tr>
                            <td> Work Address:     </td><td><textarea cols="50" rows="3" name="KinWork" id=""> </textarea><br></td>
                            </tr>
                          
                            <tr>
                                <td> <td>  <input type="submit" value="Save" name="bodySave" /><br></td></td>
          
                            </tr>
            </table>
            </form>
    </body
        
</html>