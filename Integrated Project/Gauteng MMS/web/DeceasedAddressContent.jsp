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
 <script src="js/DeceasedAddressContentScript.js"></script>
    </head>
    <body>
        <legend>Body File> Edit Body File> Body Identification> Deceased Address Details </legend>
        <form name="DeceasedAddressform" id="DeceasedAddressform" method="post" action="DeceasedAddressServlet">
      
          
                <table>
                    <tr> 
                        <% Tools t = new Tools(); BodyAtMortuary body = t.getBody("GP/DK//00002/2013");%>
                        <input type="hidden" name="deceasedDeathRegisterNr2" <%out.print("value=" + body.getDeathRegisterNumber());%> />
                        <td>Building:  </td> <td><input type="text" name="deceasedbuilding" <% 
                    if(body.getBodyAddress().getBuilding()!=null)
                    out.print("value =" + body.getBodyAddress().getBuilding());%> /></td>  
                    </tr>
                     <tr>     
                        <td>Street:  </td> <td><input type="text" name="deceaesedstreet" <%
                    if(body.getBodyAddress().getStreet()!=null)
                    out.print("value =" + body.getBodyAddress().getStreet());%> /></td>  
                    </tr>
                    <tr>
                        <td>Suburb:</td> <td> <input type="text" name="deceasedsub" <%
                    if(body.getBodyAddress().getSuburb()!=null)
                    out.print("value =" + body.getBodyAddress().getSuburb());%>  /></td>
                    </tr> 
                     <tr>
                        <td>City:</td> <td> <input type="text" name="deceasedcity" <%
                    if(body.getBodyAddress().getCity()!=null)
                    out.print("value =" + body.getBodyAddress().getCity());%>  /> </td>
                    </tr> 
                     <tr>
                        <td>Postal Code:</td> <td> <input type="text" name="postalcode" <%
                    if(body.getBodyAddress().getPostCode()!=null)
                    out.print("value =" + body.getBodyAddress().getPostCode());%>  /> </td>
                    </tr> 
                    <tr>     
                        <td>Province:  </td> <td> 
                    <%
                     if(body.getMaritalStatus()!=null)
                     {
                         String list2 = t.makeReferenceList("province", "type",body.getGender());
                         out.println(list2);
                     }
                     else
                     {
                         String list2 = t.makeReferenceList("province", "type","");
                         out.println(list2);
                     }
                   %>
                     </td>
                      
                    </tr>
                     <tr>     
                        <td>Region:  </td> <td> 
                            <%
                     if(body.getMaritalStatus()!=null)
                     {
                         String list2 = t.makeReferenceList("region", "type",body.getGender());
                         out.println(list2);
                     }
                     else
                     {
                         String list2 = t.makeReferenceList("region", "type","");
                         out.println(list2);
                     }
                   %>
                    </td>
                      
                    </tr>
                        <tr>     
                        <td>Magisterial District:  </td> <td><input type="text" name="MagisterialD" <%
                            if(body.getBodyAddress().getMagisterialDistrict()!=null)
                            out.print("value =" + body.getBodyAddress().getMagisterialDistrict());%>   /></td>  
                    </tr> 
                            <tr>
                                <td> <td>  <input type="submit" value="Save" name="bodySave" /><br></td></td>
          
                            </tr>
            </table>
            </form>
</body>
        
</html>