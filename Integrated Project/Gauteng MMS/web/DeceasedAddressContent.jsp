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
        <legend>Deceased Address Details </legend>
        <form name="DeceasedAddressform" id="DeceasedAddressform" method="post" action="DeceasedAddressServlet">
           <input type="text" name="deceasedDeathRegisterNr2" <% 
            if(session.getAttribute("deceasedDeathRegisterNumber") != null)
            {
                out.print("value=" + session.getAttribute("deceasedDeathRegisterNumber")); 
            }%> />
           <%Tools t = new Tools();%> 
                <table>
                    <tr> 
                    <td>Building:  </td> <td><input type="text" name="deceasedbuilding" <% 
                    if(session.getAttribute("bIdBuild")!=null)
                    {
                        out.print("value =" + session.getAttribute("bIdBuild"));
                    }
                    %> /></td>  
                    </tr>
                    <tr>     
                    <td>Street:  </td> <td><input type="text" name="deceaesedstreet" <%
                    if(session.getAttribute("bIdStreet")!=null)
                    {
                        out.print("value =" + session.getAttribute("bIdStreet"));
                    }
                    %> /></td>  
                    </tr>
                    <tr>
                        <td>Suburb:</td> <td> <input type="text" name="deceasedsub" <%
                        if(session.getAttribute("bIdSuburb")!=null)
                        {
                            out.print("value =" + session.getAttribute("bIdSuburb"));
                        }
                        %>  /></td>
                    </tr> 
                     <tr>
                        <td>City:</td> <td> <input type="text" name="deceasedcity" <%
                        if(session.getAttribute("bIdCity")!=null)
                        {
                            out.print("value =" + session.getAttribute("bIdCity"));
                        }
                        %>  /> </td>
                    </tr> 
                     <tr>
                        <td>Postal Code:</td> <td> <input type="text" name="postalcode" <%
                    if(session.getAttribute("bIdPostCode")!=null)
                    {
                        out.print("value =" +session.getAttribute("bIdPostCode"));
                    }%>  /> </td>
                    </tr> 
                    <tr>     
                        <td>Province:  </td> <td> 
                    <%
                     if(session.getAttribute("bIdProvince")!=null)
                     {
                         String list2 = t.makeReferenceList("province", "type",(String)session.getAttribute("bIdProvince"));
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
                     if(session.getAttribute("bIdRegion")!=null)
                     {
                         String list2 = t.makeReferenceList("region", "type",(String)session.getAttribute("bIdRegion"));
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
                            if(session.getAttribute("bIdDistrict")!=null)
                            out.print("value =" + session.getAttribute("bIdDistrict"));%>   /></td>  
                    </tr> 
                            <tr>
                                <td> <td>  <input type="submit" value="Save" name="bodySave" /><br></td></td>
          
                            </tr>
            </table>
            </form>
</body>
        
</html>