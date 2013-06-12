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
        
        <style type="text/css">
            label.error { 
                float: none; 
                color: red; 
                padding-left: .5em; 
                vertical-align: top; 
            }
        </style>
        
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
                <div  class="control-group form-horizontal">
                <button id="linkButton" name="linkButton">Link Files</button>
                <br/><br/>
                <div class="alert alert-error" style="display: none;">
                   Please Select Non Duplicate or Correct Body File Numbers
                </div>
                </div>
                <br>
            </fieldset>
        </div>
    </body>
</html>
