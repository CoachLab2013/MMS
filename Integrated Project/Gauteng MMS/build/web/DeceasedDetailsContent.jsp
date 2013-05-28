<%-- 
    Document   : DeceasedDetails
    Created on : 25 Apr 2013, 11:56:20 AM
    Author     : Lady
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="database.BodyAtMortuary"%>
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
 <script src="js/DeceasedDetailsScript.js"></script>
    </head>
    <body>
        <legend>Body File> Edit Body File> Body Identification> Deceased Details Contents </legend>
        <form name="Deceasedform" id="Deceasedform" method="post" action="">
      
          
                <table>
                    <tr>     
                        <td>Full Name(s):  </td> <td><input type="text" name="DeceasedName"  <% Tools t = new Tools(); BodyAtMortuary body = t.getBody("099888592"); out.print("value ="+body.getNameOfDeceased());%>  /><input type="submit" value="Confirm" /></td>  
                    </tr>
                     <tr>     
                        <td>Maiden Name:  </td> <td><input type="text" name="DeceasedMaidenName" <%out.print("value ="+body.getMaidenName());%> /></td>  
                    </tr>
                    <tr>
                        <td>Surname:</td> <td> <input type="text" name="DeceasedSurname" <%out.print("value ="+body.getSurnameOfDeceased());%> /><input type="submit" value="Confirm" /> </td>
                    </tr> 
                    
                    <tr>     
                        <td>Identification type:  </td> <td> <select name="deceasedidentificationtype"> 
                        <%
                            if(!(body.getID().contains("")))
                            {
                                out.print("<option>ID</option>");
                            }
                            else
                            {
                                out.print("<option>Passport</option>");
                            }
                        %>
                    </select> </td>
                      
                    </tr>
                        <tr>     
                        <td>Identification Number:  </td> <td><input type="text" name="DeceasedNumber" <%
                            if(!(body.getID().contains("")))
                            {
                                out.print("value ="+body.getID());
                            }
                            else
                            {
                                out.print("value ="+body.getPassport());
                            };
                        %> /><input type="submit" value="Confirm" /></td>  
                    </tr> 
                        <tr>
                            <td> Place of Birth:</td> <td> <input type="text" name="PlaceBirth" <%out.print("value ="+body.getPlaceOfBirth());%> /></td>
                        </tr>
                         <tr>     
                             <td>Date of Birth: </td> <td> <input type="text" name="DateBirth" <%out.print("value ="+body.getDateOfBirth());%> /></td> 
                    </tr>
                     <tr>     
                        <td>Age on the date found:  </td> <td><input type="text" name="deceasedage" <%out.print("value ="+body.getAgeOnDateFound());%> /></td>  
                    </tr>
                     <tr>     
                        <td>Gender:  </td> <td> <select name="gender">
                        <option><%out.print(body.getGender());%></option>
                        <%
                        ArrayList<String> list = new Tools().getReferenceList("gender", "type");
                        for(int i =0;i < list.size();i++)
                        {
                            String item = list.get(i);
                            if(!item.equals(body.getGender()))
                            {
                                out.print("<option>" + item + "</option>");
                            }
                        }
                        %>
                    </select><input type="submit" value="Confirm" /> </td>
                     <tr>     
                        <td>Marital Status:  </td> <td> <select name="Martitalstatus">
                        <option><%out.print(body.getMaritalStatus());%></option>
                        <%
                        list = new Tools().getReferenceList("maritalstatus", "type");
                        for(int i =0;i < list.size();i++)
                        {
                            String item = list.get(i);
                            if(!item.equals(body.getMaritalStatus()))
                            {
                                out.print("<option>" + item + "</option>");
                            }
                        }
                        %>
                    </select> </td>
                     <tr>     
                        <td>Race:  </td> <td> <select name="identificationtype">
                        <option><%out.print(body.getRace());%></option>
                        <%
                        list = new Tools().getReferenceList("race", "type");
                        for(int i =0;i < list.size();i++)
                        {
                            String item = list.get(i);
                            if(!item.equals(body.getRace()))
                            {
                                out.print("<option>" + item + "</option>");
                            }
                        }
                        %>
                    </select><input type="submit" value="Confirm" /> </td>
                     <tr>     
                        <td>Occupation:  </td> <td> <select name="identificationtype">
                        <option><%out.print(body.getOccupation());%></option>
                        <%
                        list = new Tools().getReferenceList("occupation", "type");
                        for(int i =0;i < list.size();i++)
                        {
                            String item = list.get(i);
                            if(!item.equals(body.getOccupation()))
                            {
                                out.print("<option>" + item + "</option>");
                            }
                        }
                        %>
                    </select> </td>
                        <tr>
                            <td> Citizenship:</td> <td> <input type="text" name="KinContact" <%out.print("value ="+body.getCitizen());%> /></td>
                        </tr>
                        
                            <tr>
                            <td> Body Status:     </td><td><select name="identificationtype">
                        <option><% 
                            if (body.isBodyStatus())
                            {
                                out.print("identified");
                            }
                            else
                            {
                                out.print("unidentified");
                            }
                        %></option>
                        <option><% 
                            if (!body.isBodyStatus())
                            {
                                out.print("identified");
                            }
                            else
                            {
                                out.print("unidentified");
                            }
                        %></option>
                    </select></td>
                            </tr>
                              <tr>     
                        <td>Assigned FPS Officer:  </td> <td> <select name="identificationtype">
                        <option><%out.print(body.getAssignedTo());%></option>
                    </select> </td>
                            <tr>
                            <td> Body Identified Date:     </td><td><textarea cols="50" rows="3" name="BodyDate" > </textarea><br></td>
                            </tr>
                           <tr>
                            <td> Body Identified Time:     </td><td><textarea cols="50" rows="3" name="BodyTime" > </textarea><br></td>
                            </tr>
                            <tr>
                                <td> <td>  <input type="submit" value="Save" name="bodySave" /><br></td></td>
          
                            </tr>
            </table>
            </form>
</body>
        
</html>
