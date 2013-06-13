$(document).ready(function(){
    
    $("#Deceasedform").validate({
        rules:{
            
            txtDeceasedNameDis:{
                required: true                
            },
            txtDeceasedSurnameDis:{
                required: true
            }
        },
        messages:{
            txtDeceasedNameDis:{
                required: "Please enter in the name of the deceased"
            },
            txtDeceasedSurnameDis:{
                required: "Please enter in the surname of the deceased"
            }
        }
    });
    
    alert("sdv");
    
    $("#btnDeceasedNameDis").click(function(){
        toggle("btnDeceasedNameDis","txtDeceasedNameDis");
    });
    
    function toggle(button, text){
        if($("#"+button).val() == "Confirm"){
            $("#"+text).attr("readonly", true);
            $("#"+button).attr("value", "Edit");
        }
        else if($("#"+button).val() == "Edit"){
            $("#"+text).attr("readonly", false);
            $("#"+button).attr("value", "Confirm");
        }
        
    };
    
    
    $.validator.addMethod("valueNotEquals", function(value, element, arg){
        return arg != value;
    }, "Value must not equal arg.");
    
});