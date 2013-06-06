/**
 * Need to begin with $(document).ready(function)
 * This ensures that the document if fully loaded before the script is executed
 */

$(document).ready(function(){    
    $("#recieve_body_scene_form").validate({
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
                valueNotEquals: "Select"
            },
            FPSmemberBodyPersal:{
                number : true,
                maxlength: 8,
                minlength: 8
            },
            DeathAddress:{
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
                valueNotEquals: "Please enter in the rank of the SAPS member handing over the body"
            },
            FPSmemberBodyPersal:{
                minlength: "Your personnel number must be exactly 8 digits long.",
                maxlength: "Your personnel number must be exactly 8 digits long.",
                number: "Your personnel number must consist of 8 numeric digits."
            },
            
            
            DeathAddress:{
                required: "Please enter in the place of death"
            }
            
        }
        
    });
    
    $("#recieve_body_scene_form").submit(function(){
        _data = $("#recieve_body_scene_form").serialize();
    });
    
     /**
     * Custom rule to ensure that user has selected an item
     * in the drop down list
     */
    $.validator.addMethod("valueNotEquals", function(value, element, arg){
        return arg != value;
    });
    
           
    
    $("#pathologistAtScene").click(function(){
       if($('#pathologistAtScene option').filter(':selected').text() == "Yes"){
            $("#pathologist_at_scene_details").show();
        }
        else{
            $("#pathologist_at_scene_details").hide();
            
        }
    });
    
    $("#recieve_at_scene_id_type").click(function(){
        if($("#recieve_at_scene_id_type").val() != "Select"){
            $("#no_id_type").hide();
        }
    })
    
    /*
    $("#atSceneBodyID").blur(function(){
        if($("#recieve_at_scene_id_type").val() == "ID"){
            if($("#atSceneBodyID").val().length != 13){
                $("#invalid_passport").hide();
                $("#invalid_id").show();
            }            
        }
        else if($("#recieve_at_scene_id_type").val() == "Passsport"){
            if($("#atSceneBodyID").val().length == 0){
                $("#invalid_id").hide();
                $("#invalid_passport").show();
            } 
        }
        else{
            $("#invalid_id").hide();
            $("#invalid_passport").hide();
        }
    })
    
    $("#atSceneBodyID").focus(function(){
        if($("#recieve_at_scene_id_type").val() == "Select"){
            $("#no_id_type").show();
        }
        else{
            $("#no_id_type").hide();
        }
        if($("#recieve_at_scene_id_type").val() == "ID"){
            if($("#atSceneBodyID").val().length != 13){
                $("#invalid_passport").hide();
                $("#invalid_id").show();
            }            
        }
        else if($("#recieve_at_scene_id_type").val() == "Passsport"){
            if($("#atSceneBodyID").val().length <= 0){
                $("#invalid_id").hide();
                $("#invalid_passport").show();
            } 
        }
        else{
            $("#invalid_id").hide();
            $("#invalid_passport").hide();
        }
    })
    */
});





