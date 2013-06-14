<%-- 
    Document   : CallDetailsContent
    Created on : 18 Apr 2013, 11:14:40 AM
    Author     : Administrator
--%>
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
 <script src="js/CallDetailsScript.js"></script>
    </head>
    <body>
        <legend>Step 2: Enter Call Details</legend>
        <form name="callform" id="callform" method="post" action="LogIncidentServlet" hidden="true">
    
            <table>
                <tr>     
                    <td>  Time of Call:  </td><td>
                    <%
                        Tools t = new Tools();
                        out.print(t.makeHour("callhour",-1) +" ");
                        out.print(t.makeMinute("callminute",-1));
                    %>
                    </td>

                </tr>
                <tr>
                    <td>  Caller's Phone Number:  </td><td> <input type="text" name="phonenumber" id="phonenumber"/><br></td>
                </tr> 
                    <tr>

                        <td> Name of Caller:   </td><td>       <input type="text" name="name" id="name"/><br></td>

                    </tr>
                    <tr>
                        <td> Name of institution: </td><td>    <input type="text" name="institution" id="institution" /><br></td>
                    </tr>
                        <tr>
                        <td> Scene Address:     </td><td><textarea cols="50" rows="3" name="address" id="address"></textarea><br></td>

                        </tr>
                        <tr>
                        <td> Province:         </td><td>
                            <% 
                            out.println(t.makeReferenceList("province","type",""));
                            %>
                            
                        </td>

                        </tr>
                        <tr>
                    <td>  Region:</td><td>
                        <% 
                           out.println(t.makeReferenceList("region","type",""));
                        %>
                    </td>
                        </tr>

                        <tr>
                    <td>  Scene condition: </td><td><textarea cols="50" rows="3" name="condition" id="condition"> </textarea><br></td>
                        </tr>
                        <tr>
                            <td></td> <td>  <input type="submit" value="Create Incident" name="createincident" id="createincident" /> <input type="reset" value="Cancel" id="callcancel" /><br></td>
                        </tr>
        </table>
    </form>
</body>
        
</html>
