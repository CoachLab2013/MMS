<%-- 
    Document   : OpenBodyFileContent
    Created on : 27 May 2013, 8:19:09 AM
    Author     : Cya
--%>
<%@page import="servlets.Tools"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link type="text/css" rel="stylesheet"  href="bootstrap/css/tablecss.css">
         <style type="text/css">
                label.error { 
                    float: none; 
                    color: red; 
                    padding-left: .5em; 
                    vertical-align: top; 
                }
            </style>
            <script src="js/OpenBodyFile.js"></script>
    </head>
    <body>
        <legend>Open body files </legend>
        <%
          if(session.getAttribute("bodyFileDetail")!= null)
          {
              out.print("<input type=hidden class='go_to_bodyidDetails' id='go_to_bodyidDetails' value=" + session.getAttribute("bodyFileDetail") +" />");  
              session.removeAttribute("bodyFileDetail");
          } 
        %>
         <%
            Tools t = new Tools();
            out.println(t.makeOpenBodyFileTable("openbodytable"));
         %>
         
            
            <br>
            
            <table>
       <tr>
                <td width="200"></td>

                <td width="10">
                    <form id="editbodyfileform" action="EditBodyFile"> 
<<<<<<< HEAD
                        <input type="hidden" id="selectedbody" name="selectedbody" />
                        <input type="submit" value="Edit" id="editbodyfilebutton" />
=======
                        <input class="btn" type="submit" value="Edit" id="editbodyfilebutton">
>>>>>>> origin/master
                    </form>
                </td>
                <td width="300" align="center"><input class="btn" type="button" value="Close case" id="close"> </td>

            </tr>
            
                <td>
              <%-- <form id="editbodyfileform" hidden="true" action="GetBodyfileServlet"> --%>
                  <%-- <input type="text" id="selected_edit_bodyfile" name="selected_edit_bodyfile"> --%>
            </table>
        
            
    </body>
</html>
