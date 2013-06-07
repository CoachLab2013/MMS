$(document).ready(function(){
    
     $("#recieve_body_mort_form").validate({
        rules:{
            employee:{
                valueNotEquals: "Select"
            }
        },
        messages:{
            employee:{
                valueNotEquals: "Please select an employee"
            }
        }
    });
    
    
    $("#recieve_body_mort_form").submit(function(){
        _data = $("#recieve_body_mort_form").serialize();        
    });
});





