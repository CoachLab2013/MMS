<%-- 
    Document   : ReleaseBodyContent
    Created on : 23 May 2013, 11:41:53 AM
    Author     : Lady
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
        <script language="javascript" type="text/javascript" src="js/jquery-1.9.1.js"></script>
        <script language="javascript" type="text/javascript" src="js/jquery.validate.min.js"></script>

        <script src="js/ReleaseBodyContentScript.js"></script>

    </head>

    <body>
        <%
            if(session.getAttribute("_recipientDetail")!= null)
             {
             out.print("<input type=hidden id='_recipientDetail' value=" + session.getAttribute("_recipientDetail") +">");  
             session.removeAttribute("_recipientDetail");
             } 
        %>

            <h4>Select Body for Release : </h4>
            <%
                out.println(new Tools().bodyReleaseTable(session.getAttribute("death_register_number").toString()));
            %>

            <h4>Linked Bodies : </h4>
            <%
                out.println(new Tools().bodyReleaseLinkedTable(session.getAttribute("death_register_number").toString()));
            %>
            <hr/>

        <form name="Releaseform" id="Releaseform" method="post" action="SaveRecipientDetails" style="display: none;">
            <table>
                <tr>     
                    <td>Name:  </td> <td><input type="text" name="RecipientName" id ="recipientName"  /></td>  
                </tr>

                <tr>
                    <td>Surname:</td> <td> <input type="text" name="RecipientSurname" value="" id ="recipientSurname"  /> </td>
                </tr> 

                <tr>     
                    <td>Identification type:  </td> <td> <select name="Recipientidentificationtype" id="recipientidentificationtype">
                            <option>ID</option>
                            <option>Passport</option>
                        </select> </td>

                </tr>

                <tr>
                    <td> Identification Number:</td>  <td> <input type="text" name="RecipientIDNumber" value="" id="recipientIDNumber" /></td>                       
                </tr>

                <tr>
                    <td> Residential Address:     </td><td><textarea cols="50" rows="3" name="RecipientAddres" id="recipientAddres"> </textarea><br></td>
                </tr>

                <tr>
                    <td> Contact number:</td> <td> <input type="text" name="RecipientContact" value="" id ="recipientContact"/></td>
                </tr>

                <tr>
                    <td>Body Release Type:</td>
                    <td>
                        <%
                            out.println(new Tools().makeReferenceList("releasedtype", "type", ""));
                        %> 
                    </td>
                </tr>


                <tr>
                    <td>Released To:</td>
                    <td>
                        <%
                            out.println(new Tools().makeReferenceList("releasedto", "type", ""));
                        %>
                    </td>  
                </tr>

                <tr>                    
                    <td> <input type="submit" value="Release Body" name="releasebodydone" id="releasebodydone" />
                        <input type="hidden" value="save" id="RecipientDeathRegisterNumber" name="RecipientDeathRegisterNumber"/>
                        <br></td>

                </tr>
            </table>
        </form>
    </body>

</html>
