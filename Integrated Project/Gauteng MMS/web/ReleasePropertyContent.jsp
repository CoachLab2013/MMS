<%-- 
    Document   : ReleasePropertyContent
    Created on : 29 May 2013, 9:21:24 AM
    Author     : Lady
--%>

<%@page import="database.Property"%>
<%@page import="database.PropertyDb"%>
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
        <script src="js/ReleasePropertyContentScript.js"></script>
        <link type="text/css" rel="stylesheet"  href="bootstrap/css/tablecss.css"> 
    </head>
    <body>
        <form name="releasepropertyform" id="releasepropertyform" method="post" action="ReleasePropertyServlet">
            <legend>Release Property</legend>
            <%
                String value;
                if (session.getAttribute("death_register_number") != null) {
                    if (!(session.getAttribute("death_register_number").toString().equals("null"))) {
                        value = session.getAttribute("death_register_number").toString();
                    } else {
                        value = "";
                    }
                    out.println(new Tools().makePropertyTable(value));
                }
            %>
            <input type="hidden" id="selectedproperty" name="selectedproperty" />

            <table>
                <tr>
                    <td> Name:</td> <td> <br> <input type="text" name="formantname" value="" /></td>
                </tr>

                <tr>
                    <td> Surname:</td> <td> <br> <input type="text" name="formantsurname" value=""/> </td>
                </tr>

                <tr>
                    <td> Address:  </td><td><textarea cols="50" rows="3" name="Adres" value=""> </textarea><br></td>

                </tr>

                <tr>
                    <td> Property description:  </td><td><textarea cols="50" rows="3" name="propertydescription" value=""> </textarea><br></td>

                </tr>

                <tr>
                    <td> Cash:  </td><td><textarea cols="50" rows="3" name="cash" value=""> </textarea><br></td>

                </tr>


                <tr>
                    <td> Other goods:  </td><td><textarea cols="50" rows="3" name="othergood" value=""> </textarea><br></td>

                </tr>



                <tr>
                    <td> Witness 1 Name:</td> <td> <br> <input type="text" name="Witness1name" value="" /></td>
                </tr>

                <tr>
                    <td> Witness 1 Surname:</td> <td> <br> <input type="text" name="Witness1surname" value=""/> </td>
                </tr>


                <tr>
                    <td> Witness 2 Name:</td> <td> <br> <input type="text" name="Witness2name" value="" /></td>
                </tr>

                <tr>
                    <td> Witness 2 Surname:</td> <td> <br> <input type="text" name="Witness2surname" value=""/> </td>
                </tr>




                <tr>
                    <td> <td>  <input class="btn" type="submit" value="Done" name="releaseproperty" /><br></td></td>

                </tr>
            </table>
        </form>
    </body

</html>
