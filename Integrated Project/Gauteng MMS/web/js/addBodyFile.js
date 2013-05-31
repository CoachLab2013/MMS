/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
$(document).ready(function() {
    $("#AddBody").validate({
        rules:{
            open_incident_list:{
                valueNotEquals: "Select"
            }
        },
        messages:{
            open_incident_list:{
                valueNotEquals: "Please select an incident"
            }
        }
    });
    
    $("#AddBody").submit(function(){
       return false; 
    });
    
    $("#continue_new_body_file").click(function(){
        if($("#AddBody").valid()){
            $("#recieve_tabs").show();
            $("#AddBody").submit();
        }
    });
    
    $.validator.addMethod("valueNotEquals", function(value, element, arg){
        return arg != value;
    });

}); 