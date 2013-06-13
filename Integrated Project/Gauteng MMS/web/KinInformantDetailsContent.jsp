<%-- 
    Document   : KinInformantDetailsContent
    Created on : 25 Apr 2013, 9:50:28 AM
    Author     : Lady
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

        <script src="js/KinDetailScript.js"></script>

    </head>

    <body>
        <%
            if (session.getAttribute("kinDetail") != null) {
                out.print("<input type=hidden class='go_to_deceasedDetails' id='go_to_deceasedDetails' value=" + session.getAttribute("kinDetail") + ">");
                session.removeAttribute("kinDetail");
            }
        %>
<<<<<<< HEAD
    <legend>Kin/Informant Details </legend>
    <form name="Kinform" id="Kinform" method="post" action="SaveKinDetailsServlet">


        <table>
            <tr>     
                <td>Name:  </td> <td><input type="text" name="KinName" id ="kinName" <%
                    if (session.getAttribute("kinName") != null) {
                        out.print("value=" + session.getAttribute("kinName"));
                    }
                                            %> /></td>  
            </tr>

            <tr>
                <td>Surname:</td> <td> <input type="text" name="KinSurname" value="" id ="kinSurname"  <%
                    if (session.getAttribute("kinSurname") != null) {
                        out.print("value=" + session.getAttribute("kinSurname"));
                    }
                                              %> /> </td>
            </tr> 

            <tr>     
                <td>Identification type:  </td> <td> <select name="identificationtype" id="kinIdType">
                        <option selected="Selected">Select</option>
                        <option>ID</option>
                        <option>Passport</option>
                    </select> </td>

            </tr>

            <tr>
                <td> Identification Number:</td>  <td> <input type="text" name="KinIDNumber" value="" id="kinIdNumber" <%if (session.getAttribute("kinID") != null) {
                                 out.print("value=" + session.getAttribute("kinID"));
                             }%> /></td>                       
            </tr>

            <tr>
                <td> Relationship to deceased:</td> <td> 
                    <%
                        Tools t = new Tools();
                        String list;
                        if (session.getAttribute("kinRelationship") != null) {
                            list = t.makeReferenceList("relationship", "type", session.getAttribute("kinRelationship").toString());
                        } else {
                            list = t.makeReferenceList("relationship", "type", "");
                        }
                        list = list.replaceAll("name='relationship'", "name='KinRelationship'");
                        list = list.replaceAll("id='relationship'", "id='kinRelationDeceased'");
                        out.println(list);
                    %>   </td>
            </tr>

            <tr>
                <td> Contact number:</td> <td> <input type="text" name="KinContact" value="" id ="kinContactNumber" <%if (session.getAttribute("kinContact") != null) {
                                    out.print("value=" + session.getAttribute("kinContact"));
                                }%> /></td>
            </tr>

            <tr>
                <td> Residential Address:     </td><td><textarea cols="50" rows="3" name="KinRes" id="kinAddress" <%if (session.getAttribute("kinAddress") != null) {
                                    out.print("value=" + session.getAttribute("kinAddress"));
                                }%> /> </textarea><br></td>
            </tr>

            <tr>
                <td> Work Address:     </td><td><textarea cols="50" rows="3" name="KinWork" id="kinWorkAddress" <%if (session.getAttribute("kinWorkAddress") != null) {
                                    out.print("value=" + session.getAttribute("kinWorkAddress"));
                                }%> /> </textarea><br></td>
            </tr>

            <tr>
                <td> <td>  <input class="btn" type="submit" value="Save" name="bodySave" /><br></td></td>

            </tr>
        </table>
    </form>
</body

=======
        <legend>Kin/Informant Details </legend>
        <form name="Kinform" id="Kinform" method="post" action="SaveKinDetailsServlet">
      
          
                <table>
                    <tr>     
                        <td>Name:  </td> <td><input type="text" name="KinName" id ="kinName" <% 
                            if(session.getAttribute("kinName") != null)
                            {
                                out.print("value=" + session.getAttribute("kinName"));
                            }
                        %> /></td>  
                    </tr>
                    
                    <tr>
                        <td>Surname:</td> <td> <input type="text" name="KinSurname" id ="kinSurname"  <%
                            if(session.getAttribute("kinSurname") != null)
                            {
                                out.print("value=" + session.getAttribute("kinSurname"));
                            }
                        %> /> </td>
                    </tr> 
                    
                    <tr>     
                        <td>Identification type:  </td> <td> <select name="identificationtype" id="kinIdType">
                                <option selected="selected">Select</option>
                        <%
                         if(session.getAttribute("kinID") != null)
                         {
                            String i = (String)session.getAttribute("kinID");
    
                            if(i.contains("null")) 
                            {
                                out.print("<option selected='selected'>ID</option>");
                                out.print("<option>Passport</option>");
                            } 
                            else 
                            {
                                out.print("<option selected='selected'>Passport</option>");
                                out.print("<option>ID</option>");
                            }
                         }
                        %>
                    </select> </td>
                      
                    </tr>
                        
                    <tr>
                         <td> Identification Number:</td>  <td> <input type="text" name="KinIDNumber"  id="kinIdNumber" <%
                         if(session.getAttribute("kinID") != null)
                         {
                             out.print("value=" + session.getAttribute("kinID"));
                         }
                         else
                         {
                             out.print("value=" + session.getAttribute("kinPassport"));
                         }
                         %> /></td>                       
                     </tr>
                        
                        <tr>
                            <td> Relationship to deceased:</td> <td> <input type="text" name="KinRelationship"  id="kinRelationDeceased"  <%if(session.getAttribute("kinRelationship") != null)
                            {
                                out.print("value=" + session.getAttribute("kinRelationship"));
                            } %> /></td>
                        </tr>
                        
                        <tr>
                            <td> Contact number:</td> <td> <input type="text" name="KinContact"  id ="kinContactNumber" <%if(session.getAttribute("kinContact") != null)
                            {
                                out.print("value=" + session.getAttribute("kinContact"));
                            } %> /></td>
                        </tr>
                        
                            <tr>
                            <td> Residential Address:     </td><td><textarea cols="50" rows="3" name="KinRes" id="kinAddress" <%if(session.getAttribute("kinAddress") != null)
                            {
                                out.print("value=" + session.getAttribute("kinAddress"));
                            } %> /> </textarea><br></td>
                            </tr>
                            
                            <tr>
                            <td> Work Address:     </td><td><textarea cols="50" rows="3" name="KinWork" id="kinWorkAddress" <%if(session.getAttribute("kinWorkAddress") != null)
                            {
                                out.print("value=" + session.getAttribute("kinWorkAddress"));
                            } %> /> </textarea><br></td>
                            </tr>
                          
                            <tr>
                                <td> <td>  <input class="btn" type="submit" value="Save" name="bodySave" /><br></td></td>
          
                            </tr>
            </table>
            </form>
    </body
        
>>>>>>> origin/master
</html>