<%-- 
    Document   : PostMortemFindingsContent
    Created on : 23 Apr 2013, 2:39:06 PM
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
 <script src="js/PostMortemFindingsContentScript.js"></script>
    </head>
    <body>
        <legend>Post Mortem Findings</legend>
        <%
            if (session.getAttribute("_PostMortem") != null) {
                out.print("<input type=hidden id='_PostMortem' value=" + session.getAttribute("_PostMortem") +">"); 
                session.removeAttribute("_PostMortem");
            }
        %>
        <form name="Findingsform" id="Findingsform" method="post" action="PostMortemServlet">
      
          
                <table>
                    <tr>
                    <td> Cause of Death:     </td><td><textarea cols="50" rows="3" name="findingsdeath" id="findingsdeath"> </textarea><br></td>
                     </tr>
                    <tr>
                        <td> DHA 1663 Number:  </td><td> <input type="text" name="findingsnumber" id="findingsnumber"/><br></td>
                    </tr> 
                            <tr>
                            <td> Chief post mortem:     </td><td><textarea cols="50" rows="3" name="findingsmortem" id="findingsmortem"> </textarea><br></td>
                     
                            </tr>
                            
                            <tr>
                            <td>  ICD10 code:</td>
            <td>
                    <%
            Tools t = new Tools();
                           out.println(t.makeICD10List("ICDlevel1","chapter","description","","Select Chapter"));
                    %>
                </td>
                            </tr>
                            
                            <tr>
                                <td></td>
                                <td>
                    <%
           
                           out.println(t.makeICD10List("ICDlevel2","diag1_Id","description","ICDLevel1_chapter","","Select Diagnosis 1"));
                    %>
                
                            </td>
                            </tr>
                       <tr>
                                <td></td>     
                <td>
                    <%
           
                           out.println(t.makeICD10List("ICDlevel3","diag2_Id","CAST(description AS CHAR(100))","","Select Diagnosis 2"));
                    %>
                </td>
                       </tr>
                       <tr>
                                <td></td>
                
                <td>
                    <%
           
                           out.println(t.makeICD10List("ICDlevel4","diag3_Id","CAST(description AS CHAR(100))","", "Select Diagnosis 3"));
                    %>
                </td>
         
                       </tr>  
                            <br>
                            
                            <tr>
                                <td> <td>  <input type="submit" value="Done" name="postfindingsdone" /><br></td></td>
          
                            </tr>
            </table>
            </form>
    </body
        
</html>
