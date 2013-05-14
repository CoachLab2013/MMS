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
 <script src="js/IncidentDetailsScript.js"></script>
    </head>
    <body>
        <legend>Incidents> Edit Incident> Incident Details</legend>
        <form id="editdetailform"  name="editdetailform" class="form-horizontal" method="post" action="EditIncidentDetailsServlet">
        <table>
            <tr>
                <td>FPS Incident Log Number:  </td> <td><input type="text" id="editfpsnumber" name="editfpsnumber" readonly="true" 
                <%
                    Tools t = new Tools();
                    out.println("value ="+ t.getIncidentLogNumber());
                %>/>
                </td>
            </tr>     
            <tr>
                <td>  SAPS\ IR number reference number:</td> <td> <input type="text" name="editSAPSnumber" id ="editSAPSnumber"/> </td>
             </tr>
             <tr>     
                <td> Incident date:</td>  
                <td> 
                    <select name="editdetailyear" id="editdetailyear">
                        <option selected="selected">Year</option>>
                        <% 
                           String timestamp = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(Calendar.getInstance().getTime());
                           String[] datetime = timestamp.split(" ");
                           String date[] = datetime[0].split("-");
                           String year = date[0];
                           int currentyear = Integer.parseInt(year);
                           String lastyear = Integer.toString(currentyear-1);
                           out.println("<option>"+lastyear+"</option>");
                           out.println("<option>"+year+"</option>");
                        %>
                    </select>
 
                    <% 
                           out.print(t.makeMonth("editdetailmonth")+" ");
                           out.print(t.makeDay("editdetailday"));
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
                        <option selected="selected">Select</option>
                        <%
                           for(int i=1;i<101;i++){
                               out.println("<option>"+i+"</option>");
                           }
                        %>
                    </select>
                </td>        
            </tr>
            <tr>
                <td> Place where body was found:</td> <td><textarea cols="50" rows="3" name="editplacefound" id="editplacefound"> </textarea></td>
            </tr>
            <tr>
                <td> Circumstances of death:</td> <td><textarea cols="50" rows="3" name="editcircumstancesofdeath" id="editcircumstancesofdeath"> </textarea></td>
            </tr>
            <tr>
                <td> Special Circumstances:</td> 
                <td>
                    <% 
                           out.println(t.makeReferenceList("editspecialcircumstance","type"));
                    %>
                </td>
            </tr>
            <tr>
                <td>
                <br> <br>  <td>    <input type="submit" value="Continue" id="editincidentcontinue" /> <input type="reset" value="Cancel" id="editincidentcancel" /><td></td>
                </td>  
            </tr>
        </table>
        </form>
    </body>
</html>
