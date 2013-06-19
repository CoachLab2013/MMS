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
        
        <style type="text/css">
            label.error { 
                float: none; 
                color: red; 
                padding-left: .5em; 
                vertical-align: top; 
            }
        </style>       
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript" src="js/DeceasedDetailsContentScript.js"></script>
        <script type="text/javascript" src="js/jquery-ui-1.10.3.custom.min.js"></script>
        <script type="text/javascript" src="js/jquery-ui-timepicker.js"></script>
         <link type="text/css" rel="stylesheet"  href="bootstrap/css/tablecss.css"> 
        <link type="text/css" rel="stylesheet"  href="CSS files/jquery-ui-1.10.3.custom.css"> 

    </head>
   
    <body>
    <legend>Deceased Details Contents </legend>

    <form name="Deceasedform" id="Deceasedform" method="post" action="DeceasedDetailsServlet">
        <input type="hidden" name="deceasedDeathRegisterNr" <% 
            if(session.getAttribute("deceasedDeathRegisterNumber") != null)
            {
                out.print("value=" + session.getAttribute("deceasedDeathRegisterNumber")); 
            }%> />
        <table>
            
            <tr>     
                 <% Tools t = new Tools();
                 %>
                <td>Full Name(s):  </td> <td><input type="text" name="DeceasedName" id="txtDeceasedNameDis" <%
                  if(session.getAttribute("bIdFullName") != null)
                  {
                      String fullName = (String) session.getAttribute("bIdFullName");
                      if(!fullName.contains("null"))
                      {
                          out.print("value=" + fullName);
                      }
                  }
                 %> /><input class="btn" type="button" value="Confirm" id="btnDeceasedNameDis" name="btnDeceasedNameDis" /></td>  
            </tr>
            <tr>     
                <td>Maiden Name:  </td> <td><input type="text" name="DeceasedMaidenName" <%
                  if(session.getAttribute("bIdMadienName") != null)
                  {
                      String madName = (String)session.getAttribute("bIdMadienName");
                      if(!madName.contains("null"))
                      {
                        out.print("value=" + madName);
                      }
                  }
                 %>  /></td>  
            </tr>
            <tr>
                <td>Surname:</td> <td> <input type="text" name="DeceasedSurname" id="txtDeceasedSurnameDis" <%
                  if(session.getAttribute("bIdSurname") != null)
                  {
                      String surName = (String)session.getAttribute("bIdSurname");
                      if(!surName.contains("null"))
                      {
                        out.print("value=" + surName); 
                      }
                  }
                 %>  /><input class="btn" type="button" value="Confirm" id="btnDeceasedSurnameDis" name="btnDeceasedSurnameDis" /> </td>
            </tr> 

            <tr>     
                <td>Identification type:  </td> <td> <select name="deceasedidentificationtype" id="deceasedidentificationtype"> 
                        <option selected="selected" >Select</option>
                        <%
                         if(session.getAttribute("bIdIDNumber") != null)
                         {
                            String i = (String)session.getAttribute("bIdIDNumber");
          
                            if(i.contains("null")) 
                            {
                                out.print("<option>ID</option>");
                                out.print("<option>Passport</option>");
                            } 
                            else 
                            {
                                out.print("<option>Passport</option>");
                                out.print("<option>ID</option>");
                            }
                         }
                         else
                         {
                             out.print("<option>ID</option>");
                             out.print("<option>Passport</option>");
                         }
                        %>
                    </select> </td>
            </tr>
            <tr>     
                <td>Identification Number:  </td> <td><input type="text" id="txtDeceasedNumberDis" name="DeceasedNumber" <%
                  if(session.getAttribute("bIdIDNumber") != null)
                  {
                      String idNum = (String)session.getAttribute("bIdIDNumber");
                      if(!idNum.contains("null"))
                      {
                           out.print("value=" + idNum);
                      }
                  }
                  else
                  {
                      if(session.getAttribute("bIdPassport") != null)
                      {
                           String passNum = (String)session.getAttribute("bIdPassport");
                           if(!passNum.contains("null"))
                           {
                                out.print("value=" + passNum);
                           }
                      }
                  }
                 %> /><input class="btn" type="button" value="Confirm" id="btnDeceasedNumberDis" name="btnDeceasedNumberDis"/></td>  
            </tr> 
            <tr>
                <td> Place of Birth:</td> <td><textarea cols="50" rows="3" name="deceasedPlaceBirth"><%
                  if(session.getAttribute("bIdPlaceOfBirth") != null)
                  {
                    String placeOfBirth = (String)session.getAttribute("bIdPlaceOfBirth");
                    if(!placeOfBirth.contains("null"))
                    {
                        out.print(placeOfBirth);
                    }
                  }
                  
                 %></textarea></td>
            </tr>
            <tr>    
                <td>Date of Birth: </td> <td><input id="txtDeceasedDateBirth" name="deceasedDateBirth" type="text"  <%
                  if(session.getAttribute("bIdDateOfBirth") != null)
                  {
                    String dateOfBirth = (String)session.getAttribute("bIdDateOfBirth");
                    if(!dateOfBirth.contains("0001-01-01"))
                    {
                        out.print("value=" + dateOfBirth); 
                    }
                  }
                 %> readonly style="cursor:pointer;" /></td> 
            </tr>
            <tr>     
                <td>Age on the date found:  </td> <td><input type="text" name="deceasedage" <%
                  if(session.getAttribute("bIdAgeOnDate") != null)
                  {
                    int ageOnDate = (Integer)session.getAttribute("bIdAgeOnDate");
                    if(ageOnDate != 0)
                    {
                        out.print("value=" + ageOnDate); 
                    }
                  }
                 %>  /></td>  
            </tr>
            <tr>     
                <td>Gender:  </td> <td> <%
                    if(session.getAttribute("bIdGender")!=null){
              
                            String list2 = t.makeReferenceList("gender", "type",(String)session.getAttribute("bIdGender"));
                            list2 = list2.replaceFirst("name='gender'", "name='deceasedgender'");
                            list2 = list2.replaceFirst("id='gender'", "id='selDeceasedGenderDis'");
                            out.print(list2);
                    }
                    else{
                        String list2 = t.makeReferenceList("gender", "type","");
                            list2 = list2.replaceFirst("name='gender'", "name='deceasedgender'");
                            list2 = list2.replaceFirst("id='gender'", "id='selDeceasedGenderDis'");
                            out.print(list2);
                    }
                        %>
                    <input class="btn" type="button" value="Confirm" id="btnDeceasedGenderDis" name="btnDeceasedGenderDis"/> </td>
            <tr>     
                <td>Marital Status:  </td> <td>
                    <%
                     if(session.getAttribute("bIdMarital")!=null)
                     {
                         String list2 = t.makeReferenceList("maritalstatus", "type",(String)session.getAttribute("bIdMarital"));
                         list2 = list2.replaceFirst("name='maritalstatus'", "name='deceasedMaritalstatus'");
                         list2 = list2.replaceFirst("id='maritalstatus'", "id='selDeceasedMaritalstatus'");
                         out.print(list2);
                     }
                     else
                     {
                         String list2 = t.makeReferenceList("maritalstatus", "type","");
                         list2 = list2.replaceFirst("name='maritalstatus'", "name='deceasedMaritalstatus'");
                         list2 = list2.replaceFirst("id='maritalstatus'", "id='selDeceasedMaritalstatus'");
                         out.print(list2);
                     }
                   %>
                    </td>
            <tr>     
                <td>Race:  </td> <td>
                     <%
                     if(session.getAttribute("bIdRace")!=null)
                     {
                         String list2 = t.makeReferenceList("race", "type",(String)session.getAttribute("bIdRace"));
                         list2 = list2.replaceFirst("name='race'", "name='deceasedrace'");
                         list2 = list2.replaceFirst("id='race'", "id='selDeceasedRaceDis'");
                         out.print(list2);
                     }
                     else
                     {
                         String list2 = t.makeReferenceList("race", "type","");
                         list2 = list2.replaceFirst("name='race'", "name='deceasedrace'");
                         list2 = list2.replaceFirst("id='race'", "id='selDeceasedRaceDis'");
                         out.print(list2);
                     }
                     %>
             <input class="btn" type="button" value="Confirm" id="btnDeceasedRaceDis" name="btnDeceasedRaceDis" /> </td>
            <tr>     
                <td>Occupation:  </td> <td>
                        <%
                     if((String)session.getAttribute("bIdOccupation")!=null)
                     {
                         String list2 = t.makeReferenceList("occupation", "type",(String)session.getAttribute("bIdOccupation"));
                         list2 = list2.replaceFirst("name='occupation'", "name='deceasedOccupation'");
                         list2 = list2.replaceFirst("id='occupation'", "id='selDeceasedOccupation'");
                         out.print(list2);
                     }
                     else
                     {
                         String list2 = t.makeReferenceList("occupation", "type","");
                         list2 = list2.replaceFirst("name='occupation'", "name='deceasedOccupation'");
                         list2 = list2.replaceFirst("id='occupation'", "id='selDeceasedOccupation'");
                         out.print(list2);
                     }
                     %> </td>
            <tr>
                <td> Citizenship:</td> <td> <input type="text" name="deceasedCitizenship" <%
                            if((String)session.getAttribute("bIdCitizenship")!=null)
                            {
                                String citizen = (String)session.getAttribute("bIdCitizenship");
                                if(!citizen.contains("null"))
                                {
                                    out.print("value =" + citizen);
                                }
                            }
                %>  /></td>
            </tr>

            <tr>
                <td> Body Status:     </td><td><select name="deceasedBodyStatus">
                        <option selected="selected">Select</option>
                        <option><%
                            if(session.getAttribute("bIdBodyStatus") != null)
                            {
                                if ((Boolean)session.getAttribute("bIdBodyStatus")) {
                                    out.print("identified");
                                } else {
                                    out.print("unidentified");
                                }
                            }
                            %></option>
                        <option><%
                            if(session.getAttribute("bIdBodyStatus") != null)
                            {
                                if (!(Boolean)session.getAttribute("bIdBodyStatus")) {
                                    out.print("identified");
                                } else {
                                    out.print("unidentified");
                                }
                            }
                            %></option>
                    </select></td>
            </tr>
            <tr>     
                <td>Assigned FPS Officer:  </td> <td> <select name="deceasedFPS">
                        <option selected="selected">Select</option>
                      <option><%
                            if(session.getAttribute("bIdAssignedFPS") != null)
                            {
                                String fps = (String)session.getAttribute("bIdAssignedFPS");
                                if(!fps.contains("null"))
                                {
                                    out.print(fps);
                                }
                            }
                            else
                            {
                                out.print("");
                            }
                     %></option>
                    </select> </td>
            <tr>
                

                <td> Body Identified Date:     </td><td>  

                       <input id="txtDeceasedBodyIdentifiedDate" type="text"  name="deceasedbodyIdentifiedDate" readonly style="cursor:pointer;"/>                    

                </td>
            </tr>
            <tr>
                <td> Body Identified Time:</td><td>

                        <input id="txtDeceasedBodyIdentifiedTime" type="text" name="deceasedbodyIdentifiedTime"  readonly  style="cursor:pointer;"/>
                </td>
            </tr>

            <tr>
                <td> <td>  <input class="btn" type="submit" value="Save" name="bodySave" /><br></td></td>

            </tr>
            
        </table>

         

    </form>
    <script type="text/javascript" src="js/DeceasedDetailsDateTime.js"></script>                       
</body>

</html>
