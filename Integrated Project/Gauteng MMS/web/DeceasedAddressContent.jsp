<%-- 
    Document   : DeceasedAddressContent
    Created on : 20 May 2013, 9:22:58 AM
    Author     : Lady
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="servlets.Tools"%>
<%@page import="database.BodyAtMortuary"%>
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
 <script src="js/DeceasedDetailsScript.js"></script>
    </head>
    <body>
        <legend>Body File> Edit Body File> Body Identification> Deceased Address Details </legend>
        <form name="DeceasedAddressform" id="DeceasedAddressform" method="post" action="">
      
          
                <table>
                    <tr>     
                        <td>Building:  </td> <td><input type="text" name="deceasedbuilding" <% Tools t = new Tools();
                    BodyAtMortuary body = t.getBody("099888592");
                    out.print("value =" + body.getBodyAddress().getBuilding());%> /></td>  
                    </tr>
                     <tr>     
                        <td>Street:  </td> <td><input type="text" name="deceaesedstreet" <%out.print("value =" + body.getBodyAddress().getStreet());%> /></td>  
                    </tr>
                    <tr>
                        <td>Suburb:</td> <td> <input type="text" name="deceasedsub" <%out.print("value =" + body.getBodyAddress().getSuburb());%>  /></td>
                    </tr> 
                     <tr>
                        <td>City:</td> <td> <input type="text" name="deceasedcity" <%out.print("value =" + body.getBodyAddress().getCity());%>  /> </td>
                    </tr> 
                     <tr>
                        <td>Postal Code:</td> <td> <input type="text" name="postalcode" <%out.print("value =" + body.getBodyAddress().getPostCode());%>  /> </td>
                    </tr> 
                    <tr>     
                        <td>Province:  </td> <td> <select name="province">
                        <option><%out.print(body.getBodyAddress().getProvince());%></option>
                        <%
                            ArrayList<String> list = new Tools().getReferenceList("province", "type");
                            for (int i = 0; i < list.size(); i++) {
                                String item = list.get(i);
                                if (!item.equals(body.getBodyAddress().getProvince())) {
                                    
                                    if(item != null)
                                    out.print("<option>" + item + "</option>");
                                }
                            }
                        %>
                    </select> </td>
                      
                    </tr>
                     <tr>     
                        <td>Region:  </td> <td> <select name="region">
                        <option><%out.print(body.getBodyAddress().getRegion());%></option>
                         <%
                            list = new Tools().getReferenceList("region", "type");
                            for (int i = 0; i < list.size(); i++) {
                                String item = list.get(i);
                                if (!item.equals(body.getBodyAddress().getRegion())) {
                                    
                                    if(item != null)
                                    out.print("<option>" + item + "</option>");
                                }
                            }
                        %>
                    </select> </td>
                      
                    </tr>
                        <tr>     
                        <td>Magisterial District:  </td> <td><input type="text" name="MagisterialD" <%out.print("value =" + body.getBodyAddress().getMagisterialDistrict());%>   /></td>  
                    </tr> 
                            <tr>
                                <td> <td>  <input type="submit" value="Save" name="bodySave" /><br></td></td>
          
                            </tr>
            </table>
            </form>
</body>
        
</html>