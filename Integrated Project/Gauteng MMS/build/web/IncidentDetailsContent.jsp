<%-- 
    Document   : IncidentDetailsContent
    Created on : 18 Apr 2013, 10:51:49 AM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <legend>Incidents> Log Incident> Incident Details</legend>
        <table >
            <tr>
                <td>FPS Incident Log Number:  </td> <td><input type="text" name=" FPS Incident Log Number " value="" /></td>
            </tr>     
            <tr>
                <td>  SAPS\ IR number reference number:</td> <td> <input type="text" name="SAPS\ IR number reference number:" value="" /> </td>
             </tr>
             <tr>     
                <td> Incident date:</td>  <td> <input type="text" name="Incident date:" value="" /></td>
             </tr>
             <tr>       
                <td> Incident time:</td> <td> <input type="text" name="incident time" value="" /></td>
             </tr>
             <tr> 
                <td> Number of bodies:</td> 
                <td>
                    <select name="number of bodies">
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
                <td> Special Circumstances:</td> 
                <td>
                    <select name="special circumstances">
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
                <br> <br>  <td>    <input type="submit" value="Record Call Details" /><td><br/></td>
                </td>  
            </tr>
        </table>
    </body>
</html>
