$(document).ready(function(){
    
    
     $("#edit_recieve_body_mort_form").validate({
        rules:{
            edit_employee:{
                valueNotEquals: "Select"
            },
            edit_bodypart:{
                valueNotEquals: "Select"
            },
            edit_atMortuaryAddressPostalCode:{
                required: false,
                number: true
            }
        },
        messages:{
            edit_employee:{
                valueNotEquals: "Please select an employee"
            },
            edit_bodypart:{
                valueNotEquals: "Please select a body calssification"
            },
            edit_atMortuaryAddressPostalCode:{
                number: "Invalid postal code"
            }
        }
    });
    
    $.validator.addMethod("valueNotEquals", function(value, element, arg){
        return arg != value;
    });
    
   /* $.validator.addMethod("checkEstimatedAge", function(value, element, arg){
        if($('#atMortuaryBodyEstAge option').filter(':selected').text() != "Age"){
            if($('#at_mortuary_body_estimated_age option').filter(':selected').text() == "Years/Months"){
                return !value;
            }
        }
        return value;
    });*/
    
    $("#edit_atMortuaryBodyEstAge").click(function(){
        if($('#edit_atMortuaryBodyEstAge option').filter(':selected').text() != "Age"){
           $('#edit_at_mortuary_body_estimated_age').rules("remove");
           $('#edit_at_mortuary_body_estimated_age').rules("add",{
               valueNotEquals: "Years/Months",
               messages:{
                valueNotEquals: "Please select years or months"
               }
           });
        }
        else{
            $('#edit_at_mortuary_body_estimated_age').rules("remove");
        }
    });
    
    $('#edit_at_mortuary_body_estimated_age').click(function(){
        if($('#edit_at_mortuary_body_estimated_age option').filter(':selected').text() != "Years/Months"){
            $('#edit_atMortuaryBodyEstAge').rules("remove");
            $('#edit_atMortuaryBodyEstAge').rules("add",{
               valueNotEquals: "Age",
               messages:{
                valueNotEquals: "Please select an estimated age"
               }
            });
        }
        else{
            $('#edit_atMortuaryBodyEstAge').rules("remove");
        }
    });
    
    $("#edit_recieve_at_mort_id_type").click(function(){
       if($("#edit_recieve_at_mort_id_type option").filter(':selected').text() == "ID"){
           $("#edit_atMortBodyID").rules("remove");
           $("#edit_atMortBodyID").rules("add",{
               required: true,
               number: true,
               minlength: 13,
               maxlength: 13,
               messages:{
                   required: "Please enter in an ID number",
                   number: "Invalid ID number. It must contain exactly 13 numeric digits",
                   minlength: "Invalid ID number. It must contain exactly 13 numeric digits",
                   maxlength: "Invalid ID number. It must contain exactly 13 numeric digits"
               }
           });           
       }
       else if($("#edit_recieve_at_mort_id_type option").filter(':selected').text() == "Passport"){
            $("#edit_atMortBodyID").rules("remove");
           $("#edit_atMortBodyID").rules("add",{
               required: true,
               messages:{
                   required: "Please enter in an passport number"
               }
           });
       }
       else{
           $("#edit_atMortBodyID").rules("remove");
       }
    });
    
    $("#edit_atMortBodyID").click(function(){
        if($("#edit_atMortBodyID").val().length >0){
            $("#edit_recieve_at_mort_id_type").rules("remove");
            $("#edit_recieve_at_mort_id_type").rules("add",{
                valueNotEquals: "Select",
                messages:{
                    valueNotEquals: "Please select an identification type"
                }
            });
        }
        else{
            $("#edit_recieve_at_mort_id_type").rules("remove");
        }
    });
    
    $("#edit_atMortBodyID").blur(function(){
        if($("#edit_atMortBodyID").val().length >0){
            $("#edit_recieve_at_mort_id_type").rules("remove");
            $("#edit_recieve_at_mort_id_type").rules("add",{
                valueNotEquals: "Select",
                messages:{
                    valueNotEquals: "Please select an identification type"
                }
            });
        }
        else{
            $("#edit_recieve_at_mort_id_type").rules("remove");
        }
    });

    $("#edit_recieve_body_mort_form").submit(function(){
        _data = $("#edit_recieve_body_mort_form").serialize();        
    });
});





