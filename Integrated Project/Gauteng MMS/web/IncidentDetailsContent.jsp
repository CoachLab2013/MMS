<%--
    Document : IncidentDetailsContent
    Created on : 18 Apr 2013, 10:51:49 AM
    Author : Administrator
--%>

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

        <legend>Step 1: Enter Incident Details</legend>
        <form id="detailform" name="detailform" class="form-horizontal" method="post" action="LogIncidentServlet">

        <table>
            <tr>
                <td>FPS Incident Log Number: </td> <td><input type="text" id="fpsnumber" name="fpsnumber" readonly="true"
                <%
                    Tools t = new Tools();
                    out.println("value ="+ t.getIncidentLogNumber());
                %>/></td>
            </tr>
            <tr>
                <td> SAPS\ IR number reference number:</td> <td> <input type="text" name="SAPSnumber" id ="SAPSnumber"/> </td>
             </tr>
             <tr>
                <td> Incident date:</td>
                <td>
                    <select name="detailyear" id="detailyear">
                        <%
                           String timestamp = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(Calendar.getInstance().getTime());
                           String[] datetime = timestamp.split(" ");
                           String date[] = datetime[0].split("-");
                           String year = date[0];
                           int currentyear = Integer.parseInt(year);
                           String lastyear = Integer.toString(currentyear-1);
                           out.println("<option selected='selected'>"+year+"</option>");
                           out.println("<option>"+lastyear+"</option>");
                        %>
                    </select>
 
                    <%
                           out.print(t.makeMonth("detailmonth",-1)+" ");
                           out.print(t.makeDay("detailday",-1));
                    %>
                </td>
             </tr>
             <tr>
                <td> Incident time:</td>
                <td>
                    <%
                           out.print(t.makeHour("detailhour",-1)+" ");
                           out.print(t.makeMinute("detailminute",-1));
                    %>
                </td>
             </tr>
             <tr>
                <td> Number of bodies:</td>
                <td>
                    <select name="numberofbodies" id="numberofbodies" >
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
                <td> Place where body was found:</td> <td><textarea cols="50" rows="3" name="placefound" id="placefound"> </textarea></td>
            </tr>
            <tr>
                <td> Circumstances of death:</td> <td><textarea cols="50" rows="3" name="circumstancesofdeath" id="circumstancesofdeath"> </textarea></td>
            </tr>
            <tr>
                <td> Special Circumstances:</td>
                <td>
                    <%
                           out.println(t.makeReferenceList("specialcircumstance","type",""));
                    %>
                </td>
            </tr>
            <tr>
                <td>
                <br> <br> </td><td> <input type="submit" value="Continue" id="incidentcontinue" /> <input type="reset" value="Cancel" id="incidentcancel" /></td>
            </tr>
        </table>
        </form>
    </body>
</html>