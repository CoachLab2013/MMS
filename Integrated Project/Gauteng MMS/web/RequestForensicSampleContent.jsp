<%-- 
    Document   : RequestForensicSampleContent
    Created on : 23 Apr 2013, 1:38:13 PM
    Author     : Lady
--%>


<%@page import="database.ForensicSample"%>
<%@page import="java.util.ArrayList"%>
<%@page import="database.ForensicSampleDb"%>
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
 <script src="js/RequestForensicSampleScript.js"></script>
    </head>
    <body>                
        <legend>Request Forensic Sample</legend>
        <%
            if (session.getAttribute("_requestForensicSample") != null) {
                out.print("<input type=hidden id='_requestForensicSample' value=" + session.getAttribute("_requestForensicSample") +">"); 
                session.removeAttribute("_requestForensicSample");
            }
        %>
        <form name="requestform" id="requestform" method="post" action="RequestForensicSampleServlet">
                <table>
                    <tr>     
                        <td>Type of analysis:  </td> 
                        <td> 
                            
                            <%
                                out.println(new Tools().makeReferenceList("analysis","type",""));
                            %>
                             
                        </td>
                      
                    </tr>
                    
                    <tr>
                        <td>Organization:</td> 
                        <td> 
                            
                            <%
                                out.println(new Tools().makeReferenceList("organization","name",""));
                            %>
                            
                        </td>
                    </tr> 
                        <tr>
                       
                            <td> Seal Number:</td>  
                            <td>                                 
                                <%
                                    //session.setAttribute("death_register_number", "099888592");
                                    if (session.getAttribute("death_register_number") != null) {
                                            ArrayList<ForensicSample> list = new ArrayList();
                                            ForensicSampleDb sampleRefList = new ForensicSampleDb(new Tools().getDbdetail());
                                            sampleRefList.init();
                                            list = sampleRefList.SampleList("deathRegisterNumber", session.getAttribute("death_register_number").toString());
                                                                                        
                                            String output = "<select name='seal' id='seal'>";

                                            output = output + "<option selected='slected'>Select</option>";

                                            int size = list.size();
                                            for (int i = 0; i < size; i++) {
                                                output = output + "<option>" + list.get(i).getSealNumber() + "</option>";
                                            }
                                            output = output + "</select>";
                                            out.println(output);
                                        } else {out.println("<label class='error'>Please Select A BodyFile First</label>");}
                                %>                      
                            </td>
                        
                        </tr>
                        
                            <tr>
                            <td> Special Instructions:  </td><td><textarea cols="50" rows="3" id="special" name="special" value=""> </textarea><br></td>
                     
                            </tr>
                            
                            <tr>
                                <td> Employee Name:</td> <td> <br> <input type="text" id="employeename" name="employeename" value="" /></td>
                            </tr>
                            
                            <tr>
                                <td> Employee Surname:</td> <td> <br> <input type="text" id="employeesurname" name="employeesurname" value=""/> </td>
                            </tr>
                            
                            
                            <tr>
                                <td> <td>  <input class="btn" type="submit" value="Request" name="request forensic sample" /><br></td></td>
          
                            </tr>
            </table>
            </form>
    </body
        
</html>

