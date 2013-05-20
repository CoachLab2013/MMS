<%@page import="servlets.Tools"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
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
 <script src="js/EditIncidentDetailsScript.js"></script>
    </head>
    <body>
        <%
            if(session.getAttribute("go_to_editincident")!=null){
                out.print("<input type=hidden class='go_to_editincident' id='go_to_editincident' value=" + session.getAttribute("go_to_editincident") +">");               
            }
        %>
        <legend>Edit Incident Details</legend>

        <form id="editdetailform"  name="editdetailform" class="form-horizontal" method="post" action="SaveIncidentDetails">
        <table>
            <tr>
                <td>FPS Incident Log Number:  </td> <td><input type="text" id="editfpsnumber" name="editfpsnumber" readonly="true" 
                <%

                    out.println("value ="+ session.getAttribute("lognumber"));
                %>/>
                </td>
            </tr>     
            <tr>
                <td>  SAPS\ IR number reference number:</td> <td> <input type="text" name="editSAPSnumber" id ="editSAPSnumber"
                                                                         <%
                                                                         out.println("value ="+ session.getAttribute("sap_reference_number"));
                                                                         session.removeAttribute("sap_reference_number");
                                                                         %>
                                                                         /> </td>
             </tr>
             <tr>
                 <td>
                     Incident Date:
                 </td>
                 <td>
                     <select name="editdetailyear" id="editdetailyear">
                        <%
                           Tools t = new Tools();
                           String timestamp = t.getDateTime();
                           String[] datetime = timestamp.split(" ");
                           String date[] = datetime[0].split("-");
                           String year = date[0];
                           int currentyear = Integer.parseInt(year);
                           String lastyear = Integer.toString(currentyear-1);
                           if(lastyear.equals(session.getAttribute("year"))){
                               out.println("<option selected='selected'>"+lastyear+"</option>");
                               out.println("<option>"+year+"</option>");
                           }
                           else{
                               out.println("<option>"+lastyear+"</option>");
                               out.println("<option selected='selected'>"+year+"</option>");
                           }
                           session.removeAttribute("year");
                        %>
                    </select>
                    <%
                    if(session.getAttribute("go_to_editincident")!=null){
                        int month_num = Integer.parseInt(session.getAttribute("month").toString());
                        out.println(t.makeMonth("edit_incident_month",month_num));
                        int day_num = Integer.parseInt(session.getAttribute("day").toString());
                        out.println(t.makeDay("edit_incident_day",day_num));
                        session.removeAttribute("month");
                        session.removeAttribute("day");
                    }
                    
                    %>
                 </td>
             </tr>
             
             <tr>
                 <td>
                     Incident Time:
                 </td>
                 <td>
                     <%
                    if(session.getAttribute("go_to_editincident")!=null){
                        int hour_num = Integer.parseInt(session.getAttribute("hour").toString());
                        out.println(t.makeHour("edit_incident_hour",hour_num));
                        int minute_num = Integer.parseInt(session.getAttribute("minute").toString());
                        out.println(t.makeMinute("edit_incident_minute",minute_num));
                        session.removeAttribute("hour");
                        session.removeAttribute("minute");
                    }
                    
                    %>
                 </td>
             </tr>
             <tr> 
                <td> Number of bodies:</td> 
                <td>
                    <select name="editnumberofbodies" id="editnumberofbodies" >
                        <%
                           for(int i=1;i<101;i++){
                               if(i==session.getAttribute("number_of_bodies")){
                                   out.println("<option selected='selected'>"+i+"</option>");
                              }
                              else{
                                   out.println("<option>"+i+"</option>");
                              }
                          }
                           session.removeAttribute("number_of_bodies");
                        %>
                    </select>
                </td>        
            </tr>
            <tr>
                <td>
                    Place where body was found:
                </td>
                <td> 
                    <textarea cols="50" rows="3" name="editplacefound" id="editplacefound"><%out.println(session.getAttribute("place_found"));
                    session.removeAttribute("place_found");
                    %></textarea>
                </td>
            </tr>
            <tr>
                <td>
                    Circumstances of death:
                </td>
                <td>
                    <textarea cols="50" rows="3" name="editcircumstancesofdeath" id="editcircumstancesofdeath"><%out.println(session.getAttribute("circumstance_of_death"));
                    session.removeAttribute("circumstance_of_death");
                    %></textarea>
                </td>
            </tr>
            <tr>
                <td>
                    Special Circumstances:
                </td>
                <td>
                    <%
                    if(session.getAttribute("go_to_editincident")!=null){
                        out.println(t.makeReferenceList("specialcircumstance","type",session.getAttribute("special_circumstances").toString()));
                        session.removeAttribute("special_circumstances");                        
                   }
                    
                    %>
                </td>
            </tr>   
            <tr>
                <td>
                <br> <br> </td><td> <input type="submit" value="Save" id="incidentsave" /> <input type="reset" value="Cancel" id="editincidentcancel" /></td>
            </tr>
        </table>
        </form>
    </body>
</html>
