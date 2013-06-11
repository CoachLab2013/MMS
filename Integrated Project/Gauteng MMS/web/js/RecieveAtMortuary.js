$(document).ready(function(){
    
     $("#recieve_body_mort_form").validate({
        rules:{
            employee:{
                valueNotEquals: "Select"
            },
            bodypart:{
                valueNotEquals: "Select"
            },
            atMortuaryAddressPostalCode:{
                required: false,
                number: true
            }
        },
        messages:{
            employee:{
                valueNotEquals: "Please select an employee"
            },
            bodypart:{
                valueNotEquals: "Please select a body calssification"
            },
            atMortuaryAddressPostalCode:{
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
    
    $("#atMortuaryBodyEstAge").click(function(){
        if($('#atMortuaryBodyEstAge option').filter(':selected').text() != "Age"){
           $('#at_mortuary_body_estimated_age').rules("remove");
           $('#at_mortuary_body_estimated_age').rules("add",{
               valueNotEquals: "Years/Months",
               messages:{
                valueNotEquals: "Please select years or months"
               }
           });
        }
        else{
            $('#at_mortuary_body_estimated_age').rules("remove");
        }
    });
    
    $('#at_mortuary_body_estimated_age').click(function(){
        if($('#at_mortuary_body_estimated_age option').filter(':selected').text() != "Years/Months"){
            $('#atMortuaryBodyEstAge').rules("remove");
            $('#atMortuaryBodyEstAge').rules("add",{
               valueNotEquals: "Age",
               messages:{
                valueNotEquals: "Please select an estimated age"
               }
            });
        }
        else{
            $('#atMortuaryBodyEstAge').rules("remove");
        }
    });
    
    $("#recieve_at_mort_id_type").click(function(){
       if($("#recieve_at_mort_id_type option").filter(':selected').text() == "ID"){
           $("#atMortBodyID").rules("remove");
           $("#atMortBodyID").rules("add",{
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
       else if($("#recieve_at_mort_id_type option").filter(':selected').text() == "Passport"){
            $("#atMortBodyID").rules("remove");
           $("#atMortBodyID").rules("add",{
               required: true,
               messages:{
                   required: "Please enter in an passport number"
               }
           });
       }
       else{
           $("#atMortBodyID").rules("remove");
       }
    });
    
    $("#atMortBodyID").click(function(){
        if($("#atMortBodyID").val().length >0){
            $("#recieve_at_mort_id_type").rules("remove");
            $("#recieve_at_mort_id_type").rules("add",{
                valueNotEquals: "Select",
                messages:{
                    valueNotEquals: "Please select an identification type"
                }
            });
        }
        else{
            $("#recieve_at_mort_id_type").rules("remove");
        }
    });
    
    $("#atMortBodyID").blur(function(){
        if($("#atMortBodyID").val().length >0){
            $("#recieve_at_mort_id_type").rules("remove");
            $("#recieve_at_mort_id_type").rules("add",{
                valueNotEquals: "Select",
                messages:{
                    valueNotEquals: "Please select an identification type"
                }
            });
        }
        else{
            $("#recieve_at_mort_id_type").rules("remove");
        }
    });

    $("#recieve_body_mort_form").submit(function(){
        _data = $("#recieve_body_mort_form").serialize();        
    });
});





