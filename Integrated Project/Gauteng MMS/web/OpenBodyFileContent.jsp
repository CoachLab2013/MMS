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
            <script src="js/OpenBodyFile.js"></script>
    </head>
    <body>
        <%
        if(session.getAttribute("closedbody") != null){
            out.println("<input type='hidden' id='clbodyfile' value="+session.getAttribute("closedbody")+" />");
            session.removeAttribute("closedbody");
        }
        %>
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
                <td width="20"></td>
                                      
                    <form id="editbodyfileform" action="EditBodyFile"> 
                      <td width="80"> <input class="btn"  type="submit" value="Edit" id="editbodyfilebutton" /> </td>
                       <td> <input type="hidden" id="selectedbody" name="selectedbody" /> </td>
                    </form>
               <td width="80"> <input class="btn"  type="button" value="Edit" id="editbodyfilebutton" /> </td>
                <td width="80">  <input class="btn" type="button" value="Close body file" id="closebody"/> </td>

            </tr>
            
                <td>
                    
              <%-- <form id="editbodyfileform" hidden="true" action="GetBodyfileServlet"> --%>
                  <%-- <input type="text" id="selected_edit_bodyfile" name="selected_edit_bodyfile"> --%>
            </table>
        <label id="no_selected_bodyfile" class="alert alert-error" style="display: none;">Please select a body file</label>
        <div id="close_bodyfile" style="display: none;">
            <br>
            <form id="closebodyfile" action="CloseBodyFileServlet">
        <table>

            <th>Close Body File</th>
            <tr>
                <td>
                   Death Register Number: 
                </td>
                <td>
                    <input type="text" id="selectedbodyfile" name="selectedbodyfile" readonly="true">
                </td>
            </tr>
            <tr>
                <td>
                    Reason for closing body file:
                </td>
                <td>
                    <textarea cols="50" rows="3" name="closebodyreason" id="closebodyreason"></textarea>
                </td>
            </tr>
            <tr>
                <td>

                </td>
                <td>
                    <input class="btn" id="btnclosebodyfile" type="submit" value="Close body file">
                    <input class="btn" id="cancelclosebodyfile" type="reset" value="Cancel">
                </td>
            </tr>
        </table>
    </form>
        </div>
            
    </body>
</html>
