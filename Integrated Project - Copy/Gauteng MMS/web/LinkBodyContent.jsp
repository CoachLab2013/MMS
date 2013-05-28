<%-- 
    Document   : LinkBodyContent
    Created on : 20 May 2013, 9:26:17 AM
    Author     : Lady
--%>

<%@page import="servlets.Tools"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <script language="javascript" type="text/javascript" src="js/jquery-1.9.1.js"></script>
        <script language="javascript" type="text/javascript" src="js/jquery.validate.min.js"></script>

        <link type="text/css" rel="stylesheet"  href="bootstrap/css/bootstrap.css">           
        <script  src="bootstrap/js/bootstrap-tabs.js"></script>
        <link type="text/css" rel="stylesheet"  href="bootstrap/css/bootstrap.css">           
        <script  src="bootstrap/js/bootstrap-tabs.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <div id="NewBodyFiles" class="tab-pane ">
            <%--new body file content --%>
            <div align="center"><h2>Link Body Files</h2> </div>

            <legend>Select Body Files to Link</legend>

            <fieldset>
               
                <legend>First Body File</legend>
                <div  class="control-group form-horizontal">
                    <label class="control-label" for="DeathRegisterNumber">Death Register Number:</label>
                    <div class="controls">
                        <input type ="text" name="DeathRegisterNumber" id="DeathRegisterNumber"/>
                    </div>
                    <br/>
                 <div class="offset2">
                    <input type="submit" class="btn" value="Find File">
                </div>
                </div>

                <br/>
                <legend></legend>
                <table border="1">
                    <tr>
                        <td width="150">Death Register Number</td>
                        <td width="150">Name</td>
                        <td width="150">Surname</td>
                        <td width="150">ID/Passport Number</td>
                        <td width="150">Deceased Identification Status</td>


                    </tr>
                    <tr>
                        <td width="150" height="30"></td>
                        <td width="150" height="30"></td>
                        <td width="150" height="30"></td>
                        <td width="150" height="30"></td>
                        <td width="150" height="30"></td>


                    </tr>

                </table>
                <br>
                <br>
            </fieldset>

                <br/>
            </fieldset>
            <fieldset>
                <legend></legend>
                <legend>Second Body File</legend>
                <div  class="control-group form-horizontal">
                    <label class="control-label" for="DeathRegisterNumber">Death Register Number:</label>
                    <div class="controls">
                        <input type ="text" name="DeathRegisterNumber" id="DeathRegisterNumber"/>
                    </div>
                    <br/>
                 <div class="offset2">
                    <input type="submit" class="btn" value="Find File">
                </div>
                </div>

                <br/>
                <legend></legend>
                <table border="1">
                    <tr>
                        <td width="150">Death Register Number</td>
                        <td width="100">Name</td>
                        <td width="100">Surname</td>
                        <td width="150">ID/Passport Number</td>
                        <td width="150">Deceased Identification Status</td>


                    </tr>
                    <tr>
                        <td width="150" height="30"></td>
                        <td width="100" height="30"></td>
                        <td width="100" height="30"></td>
                        <td width="150" height="30"></td>
                        <td width="150" height="30"></td>


                    </tr>

                </table>
                <br>
                <br>
            </fieldset>

