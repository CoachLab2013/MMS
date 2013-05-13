<%-- 
    Document   : newjsp
    Created on : 22 Apr 2013, 9:57:47 AM
    Author     : Lady
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.4/jquery.min.js"></script>
        <link type="text/css" rel="stylesheet"  href="bootstrap/css/bootstrap.css">           
        <script  src="bootstrap/js/bootstrap-tabs.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>

    <body>
        <div class="tabbable">
            <ul class="nav nav-tabs " data-tabs="tabs">
                <li class="active"><a href="#OpenBodyFiles" data-toggle="tab">Open Body Files</a> </li>
                <li><a href="#NewBodyFiles" data-toggle="tab">New Body File</a></li>   
                <li><a href="#EditBodyFiles" data-toggle="tab">Edit Body Files</a></li>
                <li><a href="#LinkBodyFiles" data-toggle="tab">Link Body Files</a></li> 
            </ul>
            <div class="tab-content" >
                <div id="OpenBodyFiles" class="tab-pane active">                             
                </div>

                <div id="NewBodyFiles" class="tab-pane ">
                    <%--new body file content --%>
                    <div align="center"><h2>New Body File </h2> </div>
                    <div class="offset2  span7 form-horizontal"  >
                        <fieldset class="fieldset" >
                            <legend class="legend">Incident Information</legend>
                            <select id="inncidentNum" name="inncidentNum">                            
                                <option> "123" </option>
                            </select>
                            <br/><br/>
                            <div class="control-group">
                                <label class="control-label" for="deathRegister">Death Register Number</label> 
                                <div class="controls">
                                    <input type="text" name="deathRegister" id="deathRegister"/> 
                                </div>
                            </div> 
                        </fieldset>
                    </div>


                </div>   

                <div id="EditBodyFiles" class="tab-pane "> 
                    <jsp:include page="EditBodyFileTabContent.jsp"/>
                </div>

                <div id="LinkBodyFiles" class="tab-pane ">    
                </div>

            </div>
        </div>

    </body>
</html>
