<%-- 
    Document   : DeceasedAddressContent
    Created on : 20 May 2013, 9:22:58 AM
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
 <script src="js/DeceasedAddressContentScript.js"></script>
    </head>
    <body>
        <legend>Body File> Edit Body File> Body Identification> Deceased Address Details </legend>
        <form name="DeceasedAddressform" id="DeceasedAddressform" method="post" action="">
      
          
                <table>
                    <tr>     
                        <td>Building:  </td> <td><input type="text" name="deceasedbuilding"  /></td>  
                    </tr>
                     <tr>     
                        <td>Street:  </td> <td><input type="text" name="deceasedstreet"  /></td>  
                    </tr>
                    <tr>
                        <td>Suburb:</td> <td> <input type="text" name="deceasedsub" value="" /></td>
                    </tr> 
                     <tr>
                        <td>City:</td> <td> <input type="text" name="deceasedcity" value="" /> </td>
                    </tr> 
                     <tr>
                        <td>Postal Code:</td> <td> <input type="text" name="postalcode" value="" /> </td>
                    </tr> 
                    <tr>     
                        <td>Province:  </td> <td> <select name="prov">
                        <option>Select</option>
                        <option>Gauteng</option>
                    </select> </td>
                      
                    </tr>
                     <tr>     
                        <td>Region:  </td> <td> <select name="identificationtype">
                        <option>Select</option>
                        <option>Soweto</option>
                    </select> </td>
                      
                    </tr>
                        <tr>     
                        <td>Magisterial District:  </td> <td><input type="text" name="KinName"  /></td>  
                    </tr> 
                   
                            <tr>
                                <td> <td>  <input type="submit" value="Save" name="bodySave" /><br></td></td>
          
                            </tr>
            </table>
            </form>
</body>
        
</html>