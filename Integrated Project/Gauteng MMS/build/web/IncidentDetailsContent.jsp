<%-- 
    Document   : IncidentDetailsContent
    Created on : 18 Apr 2013, 10:51:49 AM
    Author     : Administrator
--%>

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
<script language="javascript" type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script language="javascript" type="text/javascript" src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.10.0/jquery.validate.min.js"></script>
        <script src="js/IncidentDetailsScript.js"></script>
    </head>
    <body>
        <legend>Incidents> Log Incident> Incident Details</legend>
        <form id="detailform" method="post" action="">
        <table>
            <tr>
                <td>FPS Incident Log Number:  </td> <td><input type="text" id="fpsnumber" name="fpsnumber" readonly="true" 
                <%
                    String timestamp = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(Calendar.getInstance().getTime());
                    String[] datetime = timestamp.split(" ");
                    String date[] = datetime[0].split("-");
                    String currentdate = date[0]+date[1]+date[2];
                    out.println("value ="+"number"+currentdate);
                %>/></td>
            </tr>     
            <tr>
                <td>  SAPS\ IR number reference number:</td> <td> <input type="text" name="SAPSnumber:" value="" /> </td>
             </tr>
             <tr>     
                <td> Incident date:</td>  
                <td> 
                    <select name="year" id="year">
                        <option selected="selected">Year</option>>
                        <% 
                           
                           String year = date[0];
                           int currentyear = Integer.parseInt(year);
                           String lastyear = Integer.toString(currentyear-1);
                           out.println("<option>"+lastyear+"</option>");
                           out.println("<option>"+year+"</option>");
                        %>
                    </select>
 
                    <select name="month" id="month">
             <option slected="selected">Month</option>
             <option num=1>January</option>
             <option num=2>February</option>
             <option num=3>March</option>
             <option num=4>April</option>
             <option num=5>May</option>
             <option num=6>June</option>
             <option num=7>July</option>
             <option num=8>August</option>
             <option num=9>September</option>
             <option num=10>October</option>
             <option num=11>November</option>
             <option num=12>December</option>
         </select>
         <select name="day" id="day">
             <option selected="selected" id="day">Day</option>>
             <% 
                           for(int i=1;i<32;i++){
                               out.println("<option>"+i+"</option>");
                           }
             %>
         </select>
                </td>
             </tr>
             <tr>       
                <td> Incident time:</td> 
                <td>
                    <jsp:include page="Time.jsp" />
                </td>
             </tr>
             <tr> 
                <td> Number of bodies:</td> 
                <td>
                    <select name="numberofbodies" >
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
                <td> Place where body was found:</td> <td><textarea cols="50" rows="3" name="placefound"> </textarea></td>
            </tr>
            <tr>
                <td> Circumstances of death:</td> <td><textarea cols="50" rows="3" name="circumstancesofdeath"> </textarea></td>
            </tr>
            <tr>
                <td> Special Circumstances:</td> 
                <td>
                    <select name="specialcircumstances">
                        <option selected="selected">Select</option>>
                        <option></option>
                        <option></option>
                        <option></option>
                        <option></option>
                        <option></option>
                        <option></option>
                        <option></option>
                        <option></option>
                    </select>
                </td>
            </tr>
            <tr>
                <td>
                <br> <br>  <td>    <input type="submit" value="Record Call Details" /><td><br/></td>
                </td>  
            </tr>
        </table>
        </form>
    </body>
</html>
