<%-- 
    Document   : Date
    Created on : 19 Apr 2013, 7:26:47 AM
    Author     : Administrator
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <select name="year" id="year">
                         <option selected="selected">Year</option>
                        <%
                           String timestamp = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(Calendar.getInstance().getTime());
                           String[] datetime = timestamp.split(" ");
                           String date[] = datetime[0].split("-");
                           String year = date[0];
                           int intyear = Integer.parseInt(year);
                           for(int i= intyear;i>=(intyear-150);i--){
                               out.println("<option>"+i+"</option>");
                           }
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
             <option selected="selected">Day</option>>
             <% 
                           for(int i=1;i<32;i++){
                               out.println("<option>"+i+"</option>");
                           }
             %>
         </select>
    </body>
</html>
