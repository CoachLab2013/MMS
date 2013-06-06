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
        
        <script type="text/javascript" src="js/LinkBodyContent.js"></script>
    </head>
    <body>
        <div id="NewBodyFiles" class="tab-pane ">
            <%--new body file content --%>
            <legend>Link Body Files</legend>
            
            <fieldset>               
                <legend>First Body File</legend>
                <div  class="control-group form-horizontal">
                    <label class="control-label" for="DeathRegisterNumber">Death Register Number:</label>
                    <div class="controls">
                        <%
                            out.println(new Tools().makeICD10List("body", "idDeathRegisterNumber", "surnameOfDeceased", "", "Select Body File 1"));
                        %>
                    </div>
                </div>
                <br/>
                <table class='tabledisplay' id="bodyLink1">
                    <th class='tableheading'>Death Register Number</th>
                    <th class='tableheading'>Name</th>
                    <th class='tableheading'>Surname</th>
                    <th class='tableheading'>ID/Passport Number</th>
                    <th class='tableheading'>Deceased Identification Status</th>
                </table>
                <br>
                <br>
            </fieldset>
            <br/>
            <fieldset>
                <legend>Second Body File</legend>
                <div  class="control-group form-horizontal">
                    <label class="control-label" for="DeathRegisterNumber">Death Register Number:</label>
                    <div class="controls">
                        <%
                            out.println(new Tools().makeICD10List("Body", "idDeathRegisterNumber", "surnameOfDeceased", "", "Select Body File 2"));
                        %>
                    </div>
                </div>
                <br/>
                
                <table class='tabledisplay'  id="bodyLink2">
                    <th class='tableheading'>Death Register Number</th>
                    <th class='tableheading'>Name</th>
                    <th class='tableheading'>Surname</th>
                    <th class='tableheading'>ID/Passport Number</th>
                    <th class='tableheading'>Deceased Identification Status</th>
                </table>
                <br>
                <button id="linkButton" name="linkButton">Link Files</button>
                <br>
            </fieldset>
        </div>
    </body>
</html>
