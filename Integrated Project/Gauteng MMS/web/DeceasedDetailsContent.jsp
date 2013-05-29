<%-- 
    Document   : DeceasedDetails
    Created on : 25 Apr 2013, 11:56:20 AM
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
 <script src="js/DeceasedDetailsContentScript.js"></script>
    </head>
    <body>
        <legend>Body File> Edit Body File> Body Identification> Deceased Details Contents </legend>
        <form name="Deceasedform" id="Deceasedform" method="post" action="">
      
          
                <table>
                    <tr>     
                        <td>Full Name(s):  </td> <td><input type="text" name="DeceasedName"  /><input type="submit" value="Confirm" /></td>  
                    </tr>
                     <tr>     
                        <td>Maiden Name:  </td> <td><input type="text" name="DeceasedMaidenName"  /></td>  
                    </tr>
                    <tr>
                        <td>Surname:</td> <td> <input type="text" name="DeceasedSurname" value="" /><input type="submit" value="Confirm" /> </td>
                    </tr> 
                    
                    <tr>     
                        <td>Identification type:  </td> <td> <select name="deceasedidentificationtype">
                        <option>Select</option>
                        <option>Passport</option>
                    </select> </td>
                      
                    </tr>
                        <tr>     
                        <td>Identification Number:  </td> <td><input type="text" name="DeceasedNumber"  /><input type="submit" value="Confirm" /></td>  
                    </tr> 
                        
                        <tr>
                            <td> Place of Birth:</td> <td> <input type="text" name="PlaceBirth" value="" /></td>
                        </tr>
                         <tr>     
                             <td>Date of Birth: </td> <td> <input type="text" name="DateBirth" value="" /></td> 
                    </tr>
                     <tr>     
                        <td>Age on the date found:  </td> <td><input type="text" name="deceasedage"  /></td>  
                    </tr>
                     <tr>     
                        <td>Gender:  </td> <td> <select name="gender">
                        <option>Female</option>
                        <option>Male</option>
                    </select><input type="submit" value="Confirm" /> </td>
                     <tr>     
                        <td>Marital Status:  </td> <td> <select name="Martitalstatus">
                        <option>Select</option>
                        <option>Single</option>
                    </select> </td>
                     <tr>     
                        <td>Race:  </td> <td> <select name="identificationtype">
                        <option>Select</option>
                        <option>Black</option>
                    </select><input type="submit" value="Confirm" /> </td>
                     <tr>     
                        <td>Occupation:  </td> <td> <select name="identificationtype">
                        <option>Select</option>
                        <option>Lady</option>
                    </select> </td>
                        <tr>
                            <td> Citizenship:</td> <td> <input type="text" name="KinContact" value="" /></td>
                        </tr>
                        
                            <tr>
                            <td> Body Status:     </td><td><textarea cols="50" rows="3" name="KinRes" id=""> </textarea><br></td>
                            </tr>
                              <tr>     
                        <td>Assigned FPS Officer:  </td> <td> <select name="identificationtype">
                        <option>Select</option>
                        <option>Lady</option>
                    </select> </td>
                            <tr>
                            <td> Body Identified Date:     </td><td><textarea cols="50" rows="3" name="BodyDate" id=""> </textarea><br></td>
                            </tr>
                           <tr>
                            <td> Body Identified Time:     </td><td><textarea cols="50" rows="3" name="BodyTime" id=""> </textarea><br></td>
                            </tr>
                            <tr>
                                <td> <td>  <input type="submit" value="Save" name="bodySave" /><br></td></td>
          
                            </tr>
            </table>
            </form>
</body>
        
</html>
