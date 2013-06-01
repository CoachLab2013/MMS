/**
 * Need to begin with $(document).ready(function)
 * This ensures that the document if fully loaded before the script is executed
 */

$(document).ready(function(){
    /*$("#recieve_body_scene_form").validate({
        rules:{
            receivedBodyFromName:{
                required: true
            },
            receivedBodyFromSurname:{
                required: true
            },
            SAPSmemberBodyName:{
                required: true
            },
            SAPSmemberBodySurname:{
                required: true
            },
            SAPSmemberBodyCell:{
                required: true,
                number: true,                
                minlength: 10,
                maxlength: 10
            },
            SAPSmemberBodyRank:{
                required: true
            }            
            
        },
        messages:{ 
            receivedBodyFromName:{
                required: "Please enter in the name of the person handing over the body"
            },
            receivedBodyFromSurname:{
                required: "Please enter in the surname of the person handing over the body"
            },
            SAPSmemberBodyName:{
                required: "Please enter in the name of the SAPS member handing over the body"
            },
            SAPSmemberBodySurname:{
                required: "Please enter in the surname of the SAPS member handing over the body"
            },
            SAPSmemberBodyCell:{
                required: "Please eneter in the cell phone number of the SAPS member handing over the body",
                number: "Invalid phone number. A valid phone number consists of ten numeric didgits",
                minlength:"Invalid phone number. A valid phone number consists of ten numeric digits",
                maxlength:"Invalid phone number. A valid phone number consists of ten numeric digits"
            },
            SAPSmemberBodyRank:{
                required: "Please enter in the rank of the SAPS member handing over the body"
            }
            
        }
        
    });*/
    
    $("#recieve_body_scene_form").submit(function(){
        _data = $("#recieve_body_scene_form").serialize();
    });
});





