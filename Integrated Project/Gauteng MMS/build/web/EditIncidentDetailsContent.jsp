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
                session.removeAttribute("go_to_editincident");
            }
        %>
        <legend>Incidents> Edit Incident> Incident Details</legend>
        <!--

        <form id="editdetailform"  name="editdetailform" class="form-horizontal" method="post" action="EditIncidentDetailsServlet">
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
                                                                         %>
                                                                         /> </td>
             </tr>
             <tr>     
                <td> Incident date:</td>  
                <td> 
                    <select name="editdetailyear" id="editdetailyear">
                        <% 
                            Tools t = new Tools();
                           String timestamp = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(Calendar.getInstance().getTime());
                           String[] datetime = timestamp.split(" ");
                           String date[] = datetime[0].split("-");
                           String year = date[0];
                           int currentyear = Integer.parseInt(year);
                           String lastyear = Integer.toString(currentyear-1);
                           if(session.getAttribute("year").toString().equals(lastyear)){
                               out.println("<option selected='selected'>"+lastyear+"</option>");
                               out.println("<option>"+year+"</option>");
                           }
                           else{
                                out.println("<option>"+lastyear+"</option>");
                                out.println("<option selected='selected'>"+year+"</option>");
                           }
                        %>
                    </select>
 
                    <% 
                           out.print(t.makeMonth("editdetailmonth", Integer.parseInt(session.getAttribute("month").toString()))+" ");
                           out.print(t.makeDay("editdetailday", Integer.parseInt(session.getAttribute("day").toString())));
                    %>
                </td>
             </tr>
             <tr>       
                <td> Incident time:</td> 
                <td>
                    <% 
                           out.print(t.makeHour("editdetailhour")+" ");
                           out.print(t.makeMinute("editdetailminute"));
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
                        %>
                    </select>
                </td>        
            </tr>
            <tr>
                <td> Place where body was found:</td> <td><textarea cols="50" rows="3" name="editplacefound" id="editplacefound" align="top"><%
                                                                    out.print(session.getAttribute("place_found"));
                                                                    %></textarea></td>
            </tr>
            <tr>
                <td> Circumstances of death:</td> <td><textarea cols="50" rows="3" name="editcircumstancesofdeath" id="editcircumstancesofdeath"><%
                                                                    out.print(session.getAttribute("circumstance_of_death"));
                                                                    %>
                    </textarea></td>
            </tr>
            <tr>
                <td> Special Circumstances:</td> 
                <td>
                    <% 
                           out.println(t.makeReferenceList("editspecialcircumstance","type",""));
                    %>
                </td>
            </tr>
            <tr>
                <td>
                <br> <br>  <td>    <input type="submit" value="Save" id="editincidentcontinue" /> <input type="reset" value="Cancel" id="editincidentcancel" /><td></td>
                </td>  
            </tr>
        </table>
        </form>
    </body>
</html>
