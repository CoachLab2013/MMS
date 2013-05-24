<%-- 
    Document   : EditCallDetailsContent
    Created on : 19 Apr 2013, 12:32:17 PM
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
 <script src="js/EditCallDetailsScript.js"></script>
    </head>
    <body>
        <legend>Edit Call Details</legend>
        <form name="edit_callform" id="edit_callform" method="post" action="">
    
            <table>
                <tr>     
                    <td>  Time of Call:  </td><td>
                    <%
                        Tools t = new Tools();
                        if(session.getAttribute("go_to_editincident")!=null){
                            int call_hour = Integer.parseInt(session.getAttribute("call_hour").toString());
                            int call_minute = Integer.parseInt(session.getAttribute("call_minute").toString());
                            out.print(t.makeHour("edit_callhour",call_hour) +" ");
                            out.print(t.makeMinute("edit_callminute",call_minute));    
                            session.removeAttribute("edit_callhour");
                            session.removeAttribute("edit_callhour");
                        }
                        
                    %>
                    </td>

                </tr>
                <tr>
                    <td>  Caller's Phone Number:  </td><td> <input type="text" name="edit_phonenumber" id="edit_phonenumber"
                                                                   value=<%out.println(session.getAttribute("call_number")); 
                                                                   session.removeAttribute("call_number");
                                                                   %>/><br>
                    </td>
                </tr> 
                    <tr>

                        <td> Name of Caller:   </td><td>       <input type="text" name="edit_callname" id="edit_callname"
                                                                      value="<%out.println(session.getAttribute("call_name"));
                                                                      session.removeAttribute("call_name");
                                                                      %>"/><br></td>

                    </tr>
                    <tr>
                        <td> Name of institution: </td><td>    <input type="text" name="edit_callinstitution" id="edit_callinstitution" 
                                                                      value=<%out.println(session.getAttribute("call_institution")); 
                                                                      session.removeAttribute("call_institution");
                                                                      %>/><br></td>
                    </tr>
                        <tr>
                        <td> Scene Address:     </td><td><textarea cols="50" rows="3" name="edit_calladdress" id="edit_calladdress"><%out.println(session.getAttribute("call_address"));
                                                                                                                                      session.removeAttribute("call_address");
                                                                                                                                    %></textarea><br></td>

                        </tr>
                        <tr>
                        <td> Province:         </td><td>
                            <% 
                            if(session.getAttribute("go_to_editincident")!=null){
                                String province = session.getAttribute("call_province").toString();
                               out.println(t.makeReferenceList("province","type",province));
                               session.removeAttribute("call_province");
                           }
                            
                            %>
                            
                        </td>

                        </tr>
                        <tr>
                    <td>  Region:</td><td>
                        <% 
                           if(session.getAttribute("go_to_editincident")!=null){
                               String region = session.getAttribute("call_region").toString();
                           out.println(t.makeReferenceList("region","type",region));
                           session.removeAttribute("region");
                           session.removeAttribute("go_to_editincident");
                           out.println(" <script src='js/EditCallDetailsScript.js'></script>");
                           }
                           
                           
                        %>
                    </td>
                        </tr>

                        <tr>
                    <td>  Scene condition: </td><td><textarea cols="50" rows="3" name="edit_callcondition" id="edit_callcondition"><%out.println(session.getAttribute("call_condition")); %></textarea><br></td>
                        </tr>
                        <tr>
                            <td></td> <td>  <input type="submit" value="Save" name="edit_savecall" id="edit_savecall" /> <input type="reset" value="Cancel" id="edit_callcancel" /><br></td>
                        </tr>
        </table>
                     
                    <input type="hidden" name="edit_lognumber" id ="edit_lognumber"  readonly="true" <% out.println("value="+session.getAttribute("lognumber"));
                                                                                                            session.removeAttribute("lognumber");
                                                                                                        %>/>
    </form>

</body>
        
</html>
