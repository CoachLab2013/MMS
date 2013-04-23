<%-- 
    Document   : Incident Details
    Created on : Apr 12, 2013, 10:21:29 AM
    Author     : AZWINDINI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
          <link type="text/css" rel="stylesheet"  href="CSS/Design.css"> 
      <link type="text/css" rel="stylesheet"  href="bootstrap/css/bootstrap.css">
    </head>
    <body>
        <div class="offset5  span7 ">
            <fieldset class="fieldset">
                <legend class="legend">Incident Details</legend> 
        <table >
            <div class="control-group">       
     <td>FPS Incident Log Number:  </td> <td><input type="text" name=" FPS Incident Log Number " value="" /></td>
            </div>
              
                    <tr>
                    <div class="control-group">
     <td>  SAPS\ IR number reference number:</td> <td> <input type="text" name="SAPS\ IR number reference number:" value="" /> </td>
                    </div>
                    </tr>
                   
                    
                    <tr>  
                    <div class="control-group">
     <td> Incident date:</td>  <td> <input type="text" name="Incident date:" value="" /></td>
                    </div>
                    </tr>
                    <div class="control-group">
     <td> Incident time:</td> <td> <input type="text" name="incident time" value="" /></td>
                    </div>
      
    </fieldset>
      
         
                <tr> 
              <td> Number of bodies:</td> <td><select name="number of bodies">
                <option>1</option>
                <option>2</option>
                <option>3</option>
                <option>4</option>
                <option>5</option>
                <option>6</option>
                <option>7</option>
                <option>8</option>
                <option>9</option>
                <option>10</option>
                <option>11</option>
                <option>12</option>
                <option>13</option>
            </select>
            </td>        
            </tr>
            <tr>
            <td> Place where body was found:</td> <td><input type="text" name="place where body found" value="" /></td>
            </tr>
           
            <tr>
            <td> Circumstances of death:</td> <td><input type="text" name="circumstances of death" value="" /></td>
            </tr>
            <tr>
            <td> Special Circumstances:</td> <td><select name="special circumstances">
                <option></option>
                <option></option>
                <option></option>
                <option></option>
                <option></option>
                <option></option>
                <option></option>
                <option></option>
            </select>
            </td>
            </tr>
           
            
            <tr>
                <td>
                <br> <br>  <td>    <input type="submit" value="record call details" /><td><br/></td>
                </td>  
            </tr>
          
         
    </body>
</html>
