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
                valueNotEquals: "Select"
            },
            atSceneBodyAddressPostalCode:{
                required: false,
                number: true
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
                valueNotEquals: "Please select an employee"
            },
            
            atSceneBodyAddressPostalCode:{                
                number: "Invalid postal code"
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
            $("#pathologistBodyName").rules("remove");
            $("#pathologistBodyName").rules("add",{
                required: true,
                messages:{
                    required: "Please enter the name of the pathologist at the scene"
                }
            });
            $("#pathologistBodySurname").rules("remove");
            $("#pathologistBodySurname").rules("add",{
                required: true,
                messages:{
                    required: "Please enter the surname of the pathologist at the scene"
                }
            });
            $("#pathologistBodyRank").rules("remove");
            $("#pathologistBodyRank").rules("add",{
                valueNotEquals:"Select",
                messages:{
                    valueNotEquals: "Please select a rank"
                }
            });
        }
        else{
            $("#pathologist_at_scene_details").hide();
            $("#pathologistBodyName").rules("remove");
            $("#pathologistBodySurname").rules("remove");
            $("#pathologistBodyRank").rules("remove");
        }
    });
    
    $("#recieve_at_scene_id_type").click(function(){
        if($("#recieve_at_scene_id_type option").filter(':selected').text() == "ID"){
             $("#recieve_at_scene_id_type").rules("remove");
             $("#atSceneBodyID").rules("remove");
             $("#atSceneBodyID").rules("add",{
                 required:true,
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
        else if($("#recieve_at_scene_id_type option").filter(':selected').text() == "Passport"){
             $("#recieve_at_scene_id_type").rules("remove");
             $("#atSceneBodyID").rules("remove");
             $("#atSceneBodyID").rules("add",{
                 required:true,
                 messages:{
                    required: "Please enter in an passport number"
                 }
             });
        }
        else{            
             $("#atSceneBodyID").rules("remove");
        }
    });
    
    $("#atSceneBodyID").click(function(){
        if($("#atSceneBodyID").val().length >0){
            $("#recieve_at_scene_id_type").rules("remove");
            $("#recieve_at_scene_id_type").rules("add",{
                valueNotEquals: "Select",
                messages:{
                    valueNotEquals: "Please select an identification type"
                }
            });
        }
        else{
            $("#recieve_at_scene_id_type").rules("remove");
        }
    });
    
    $("#atSceneBodyID").blur(function(){
        if($("#atSceneBodyID").val().length >0){
            $("#recieve_at_scene_id_type").rules("remove");
            $("#recieve_at_scene_id_type").rules("add",{
                valueNotEquals: "Select",
                messages:{
                    valueNotEquals: "Please select an identification type"
                }
            });
        }
        else{
            $("#recieve_at_scene_id_type").rules("remove");
        }
    });
    
    $("#atSceneBodyEstAge").click(function(){
       if($("#atSceneBodyEstAge option").filter(':selected').text() != "Age"){
           $("#atSceneBodyEstAge").rules("remove");
           $("#at_scene_body_estimated_age_type").rules("remove");
           $("#at_scene_body_estimated_age_type").rules("add",{             
               valueNotEquals: "Years/Months",
               messages:{
                   valueNotEquals: "Please select years or months"
               }
           });
       } 
       else{
           $("#at_scene_body_estimated_age_type").rules("remove");
       }
    });
    
    $('#at_scene_body_estimated_age_type').click(function(){
        if($('#at_scene_body_estimated_age_type option').filter(':selected').text() != "Years/Months"){
            $('#atSceneBodyEstAge').rules("remove");
            $('#atSceneBodyEstAge').rules("add",{
               valueNotEquals: "Age",
               messages:{
                valueNotEquals: "Please select an estimated age"
               }
            });
        }
        else{
            $('#atSceneBodyEstAge').rules("remove");
        }
    })
    
});





