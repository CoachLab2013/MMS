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
        <link type="text/css" rel="stylesheet"  href="bootstrap/css/bootstrap.css">
        <link type="text/css" rel="stylesheet"  href="bootstrap/css/bootstrap-datetimepicker">
        <script type="text/javascript"  src="js/jquery-1.9.1.js" charset="UTF-8"></script>
        <script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="bootstrap/js/bootstrap-datetimepicker.min.js" charset="UTF-8"></script>
        <script  src="bootstrap/js/bootstrap-tabs.js"></script>
    </head>
    <body>
    <legend>Deceased Details Contents </legend>
    <form name="Deceasedform" id="Deceasedform" method="post" action="DeceasedDetailsServlet">

        <script>
            var counter = 0;
            var ini;
            function confirmText(txtId,btnId,v)
            {
                ini = v;
                if(counter == v)
                {
                    document.getElementById(txtId).disabled = true;
                    document.getElementById(btnId).value ="Edit";
                    counter = 1;
                }
                else
                {
                    counter = 0;
                    document.getElementById(txtId).disabled = false;  
                    document.getElementById(btnId).value = "Confirm";
                }
            }
            </script>
        <table>
            <tr>     
                 <% Tools t = new Tools();
                 
                    BodyAtMortuary body = t.getBody("GP/DK//00002/2013");%>

                    <input type="hidden" name="deceasedDeathRegisterNr" <%out.print("value=" + body.getDeathRegisterNumber());%>  />
                <td>Full Name(s):  </td> <td><input type="text" name="DeceasedName" id="txtDeceasedNameDis" <%
                    if(body.getNameOfDeceased()!=null)
                    out.print("value =" + body.getNameOfDeceased());%>  /><input class="btn" type="button" value="Confirm" id="btnDeceasedNameDis"  onclick="confirmText('txtDeceasedNameDis','btnDeceasedNameDis',0);" /></td>  
            </tr>
            <tr>     
                <td>Maiden Name:  </td> <td><input type="text" name="DeceasedMaidenName" <%
                    if(body.getMaidenName()!=null)
                    out.print("value =" + body.getMaidenName());%>  /></td>  
            </tr>
            <tr>
                <td>Surname:</td> <td> <input type="text" name="DeceasedSurname" id="txtDeceasedSurnameDis"<%
                    if(body.getSurnameOfDeceased()!=null)
                    out.print("value =" + body.getSurnameOfDeceased());%>  /><input class="btn" type="button" value="Confirm" id="btnDeceasedSurnameDis" onclick="confirmText('txtDeceasedSurnameDis','btnDeceasedSurnameDis',0);" /> </td>
            </tr> 

            <tr>     
                <td>Identification type:  </td> <td> <select name="deceasedidentificationtype"> 
                        <%
                            if ((body.getID()!=null)) 
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
                <td>Identification Number:  </td> <td><input type="text" id="txtDeceasedNumberDis" name="DeceasedNumber" <%
                    if (!(body.getID().contains("")))
                    {
                        if(body.getID()!=null)
                            out.print("value =" + body.getID());
                    } 
                    else 
                    {
                        if(body.getPassport()!=null)
                            out.print("value =" + body.getPassport());
                    };
                                                             %>  /><input class="btn" type="button" value="Confirm" id="btnDeceasedNumberDis" onclick="confirmText('txtDeceasedNumberDis','btnDeceasedNumberDis',0);" /></td>  
            </tr> 
            <tr>
                <td> Place of Birth:</td> <td> <input type="text" name="deceasedPlaceBirth" <%
                    if(body.getPlaceOfBirth()!=null)
                    out.print("value =" + body.getPlaceOfBirth());%>  /></td>
            </tr>
            <tr>     
                <td>Date of Birth: </td> <td> <input type="text" name="deceasedDateBirth" <%
                    if(body.getDateOfBirth()!=null)
                    out.print("value =" + body.getDateOfBirth());%>  /></td> 
            </tr>
            <tr>     
                <td>Age on the date found:  </td> <td><input type="text" name="deceasedage" <%
                    if(body.getAgeOnDateFound()!= 0)
                    out.print("value =" + body.getAgeOnDateFound());%>  /></td>  
            </tr>
            <tr>     
                <td>Gender:  </td> <td> <%
                    if(body.getGender()!=null){
              
                            String list2 = t.makeReferenceList("gender", "type",body.getGender() );
                            list2 = list2.replaceFirst("name='gender'", "name='deceasedgender'");
                            list2 = list2.replaceFirst("id='gender'", "id='selDeceasedGenderDis'");
                            out.println(list2);
                    }
                    else{
                        String list2 = t.makeReferenceList("gender", "type","");
                            list2 = list2.replaceFirst("name='gender'", "name='deceasedgender'");
                            list2 = list2.replaceFirst("id='gender'", "id='selDeceasedGenderDis'");
                            out.println(list2);
                    }
                        %>
                    </select><input class="btn" type="button" value="Confirm" id="btnDeceasedGenderDis" onclick="confirmText('selDeceasedGenderDis','btnDeceasedGenderDis',0);" /> </td>
            <tr>     
                <td>Marital Status:  </td> <td>
                    <%
                     if(body.getMaritalStatus()!=null)
                     {
                         String list2 = t.makeReferenceList("maritalstatus", "type",body.getGender());
                         list2 = list2.replaceFirst("name='maritalstatus'", "name='deceasedMaritalstatus'");
                         list2 = list2.replaceFirst("id='maritalstatus'", "id='selDeceasedMaritalstatus'");
                         out.println(list2);
                     }
                     else
                     {
                         String list2 = t.makeReferenceList("maritalstatus", "type","");
                         list2 = list2.replaceFirst("name='maritalstatus'", "name='deceasedMaritalstatus'");
                         list2 = list2.replaceFirst("id='maritalstatus'", "id='selDeceasedMaritalstatus'");
                         out.println(list2);
                     }
                   %>
                    </select> </td>
            <tr>     
                <td>Race:  </td> <td>
                     <%if(body.getMaritalStatus()!=null)
                     {
                         String list2 = t.makeReferenceList("race", "type",body.getGender());
                         list2 = list2.replaceFirst("name='race'", "name='deceasedrace'");
                         list2 = list2.replaceFirst("id='race'", "id='selDeceasedRaceDis'");
                         out.println(list2);
                     }
                     else
                     {
                         String list2 = t.makeReferenceList("race", "type","");
                         list2 = list2.replaceFirst("name='race'", "name='deceasedrace'");
                         list2 = list2.replaceFirst("id='race'", "id='selDeceasedRaceDis'");
                         out.println(list2);
                     }%>
             <input class="btn" type="button" value="Confirm" id="btnDeceasedRaceDis" onclick="confirmText('selDeceasedRaceDis','btnDeceasedRaceDis',0);"/> </td>
            <tr>     
                <td>Occupation:  </td> <td>
                        <%if(body.getMaritalStatus()!=null)
                     {
                         String list2 = t.makeReferenceList("occupation", "type",body.getGender());
                         list2 = list2.replaceFirst("name='occupation'", "name='deceasedOccupation'");
                         list2 = list2.replaceFirst("id='occupation'", "id='selDeceasedOccupation'");
                         out.println(list2);
                     }
                     else
                     {
                         String list2 = t.makeReferenceList("occupation", "type","");
                         list2 = list2.replaceFirst("name='occupation'", "name='deceasedOccupation'");
                         list2 = list2.replaceFirst("id='occupation'", "id='selDeceasedOccupation'");
                         out.println(list2);
                     }%> </td>
            <tr>
                <td> Citizenship:</td> <td> <input type="text" name="deceasedCitizenship" <%
                            if(body.getCitizen()!=null)
                            out.print("value =" + body.getCitizen());%>  /></td>
            </tr>

            <tr>
                <td> Body Status:     </td><td><select name="deceasedBodyStatus">
                        <option><%
                            if(body!=null)
                            if (body.isBodyStatus()) {
                                out.print("identified");
                            } else {
                                out.print("unidentified");
                            }
                            %></option>
                        <option><%
                            if(body!=null)
                            if (!body.isBodyStatus()) {
                                out.print("identified");
                            } else {
                                out.print("unidentified");
                            }
                            %></option>
                    </select></td>
            </tr>
            <tr>     
                <td>Assigned FPS Officer:  </td> <td> <select name="deceasedFPS">
                        <option><%
                            if(body.getAssignedTo()!=null)
                            out.print(body.getAssignedTo());%></option>
                    </select> </td>
            <tr>
                <script>          
                    $('#DAidentdatepicker').datetimepicker({
                                                                pickTime: false,
                                                                autoclose: true
                                                            });

                    $('#Tidenttimepicker').datetimepicker({
                                                                pickDate: false,
                                                                autoclose: true,
                                                                pickSeconds: false

                                                            });
                </script>
                <td> Body Identified Date:     </td><td>  
                     <div class="input-append date " name="DAidentdatepicker">
                        <input size="16" id="IdentifiedDate" name="deceasedbodyIdentifiedDate" data-format="yyyy-MM-dd" type="text" value="" readonly/>
                        <span class="add-on"><i class="icon-calendar"></i></span> 
                     </div>
                    <br>
                </td>
            </tr>
            <tr>
                <td> Body Identified Time:</td><td>
                    <div class="input-append date " name="Tidenttimepicker">
                        <input size="16" id="DAT" name="deceasedbodyIdentifiedTime" data-format="hh:mm" type="text" value="" readonly/>
                        <span class="add-on"><i class="icon-time"></i></span> 
                    </div>
                    <br>
                </td>
            </tr>
            <tr>
                <td> <td>  <input class="btn" type="submit" value="Save" name="bodySave" /><br></td></td>

            </tr>
        </table>
    </form>
</body>

</html>
