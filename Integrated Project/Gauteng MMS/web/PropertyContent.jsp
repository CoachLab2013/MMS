<%-- 
    Document   : PropertyContent
    Created on : 22 Apr 2013, 12:11:54 PM
    Author     : Lady
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
 <script src="js/PropertyScript.js"></script>
    </head>
    <body>
        <legend class="legend">Property</legend>
        <%
            if (session.getAttribute("_Property") != null) {
                out.print("<input type=hidden id='_Property' value=" + session.getAttribute("_Property") +">"); 
                session.removeAttribute("_Property");
            }
        %>
        <form name="propertyform" id="propertyform" method="post" action="PropertyServlet">
        <table>
            <tr>
                <td> Date:</td>  
                <td> 
                    <select name="year" id="year">
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
 
                    <select name="month" id="month">
             <option slected="selected">Month</option>
             <option num=1 value="1">January</option>
             <option num=2 value="2">February</option>
             <option num=3 value="3">March</option>
             <option num=4 value="4">April</option>
             <option num=5 value="5">May</option>
             <option num=6 value="6">June</option>
             <option num=7 value="7">July</option>
             <option num=8 value="8">August</option>
             <option num=9 value="9">September</option>
             <option num=10 value="10">October</option>
             <option num=11 value="11">November</option>
             <option num=12 value="12">December</option>
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
                <td>Type:</td> 
                <td> 
                <%
                    out.println(new Tools().makeReferenceList("propertytype","type",""));
                %>
            </td>
            </tr>

            <tr>  
                <td> Seal number:</td>  
                <td><%
                    out.println(new Tools().makeReferenceList("seal","idSeal",""));
                %>
                </td>
            </tr>
            
            <tr>
                <td> Description:</td> <td><input type="text" name="descriptions" value="" /> </td>
            </tr>
            
            <tr>
               <td>Take In By:</td> 
               <td> 
                   <%
                       out.println(new Tools().makeReferenceList("employee", "personnelNumber", ""));
                   %> 
               </td>
            </tr>
            
            <tr>
      <td> <td><input class="btn" type="submit" value="Done" name="Property" /><br></td></td>
            </tr>
        </table>
            
        </form>
    </body>
</html>
