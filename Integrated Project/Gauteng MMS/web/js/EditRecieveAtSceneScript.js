/**
 * Need to begin with $(document).ready(function)
 * This ensures that the document if fully loaded before the script is executed
 */

$(document).ready(function(){
    
    if($("#checkscene").val() == "true"){
        //lose focus from the incidents side
        $("#OpenIncidents").removeClass("tab-pane active");
        $("#OpenIncidents").addClass("tab-pane");
        $("#OpenIncidentsTab").removeClass("active");
        $("#Incident").removeClass("tab-pane active");
        $("#Incident").addClass("tab-pane");
        $("#IncidentTab").removeClass("active");
        
        //set focus to the body file side
        $("#BodyFileTab").addClass("active");
        $("#BodyFile").removeClass("tab-pane");
        $("#BodyFile").addClass("tab-pane active");
    }
    
    $("#edit_recieve_body_scene_form").validate({
        rules:{
            edit_receivedBodyFromName:{
                required: true
            },
            edit_receivedBodyFromSurname:{
                required: true
            },
            edit_SAPSmemberBodyName:{
                required: true
            },
            edit_SAPSmemberBodySurname:{
                required: true
            },
            edit_SAPSmemberBodyCell:{
                required: true,
                number: true,                
                minlength: 10,
                maxlength: 10
            },
            edit_SAPSmemberBodyRank:{
                valueNotEquals: "Select"
            },
            edit_FPSmemberBodyPersal:{
                valueNotEquals: "Select"
            },
            edit_bodypart:{
                valueNotEquals: "Select"
            },
            edit_atSceneBodyAddressPostalCode:{
                required: false,
                number: true
            }, 
            edit_bodyFoundDate:{
                required: true
            },
            edit_bodyFoundTime:{
                required: true,
                checkFoundTime: true
            },
            edit_ReceivedSceneDate:{
                required: true,
                checkSceneDate: true
            },
            edit_ReceivedSceneTime:{
                required: true,
                checkSceneTime: true
            },
            edit_inAllegedInjuryDate:{
                checkInjuryDate: true
            },
            edit_inAllegedInjuryTime:{
                checkInjuryTime: true
            },
            edit_inAllegedDeathDate:{
                checkDeathDate: true
            },
            edit_inAllegedDeathTime:{
                checkDeathTime: true
            },
            edit_ReceivedFacilityDate:{
                required: true
            },
            edit_ReceivedFacilityTime:{
                required: true
            },
            edit_DeathAddress:{
                required: true
            }
            
        },
        messages:{ 

            edit_receivedBodyFromName:{
                required: "Please enter in the name of the person handing over the body"
            },
            edit_receivedBodyFromSurname:{
                required: "Please enter in the surname of the person handing over the body"
            },
            edit_SAPSmemberBodyName:{
                required: "Please enter in the name of the SAPS member handing over the body"
            },
            edit_SAPSmemberBodySurname:{
                required: "Please enter in the surname of the SAPS member handing over the body"
            },
            edit_SAPSmemberBodyCell:{
                required: "Please eneter in the cell phone number of the SAPS member handing over the body",
                number: "Invalid phone number. A valid phone number consists of ten numeric didgits",
                minlength:"Invalid phone number. A valid phone number consists of ten numeric digits",
                maxlength:"Invalid phone number. A valid phone number consists of ten numeric digits"
            },
            edit_SAPSmemberBodyRank:{
                valueNotEquals: "Please enter in the rank of the SAPS member handing over the body"
            },
            edit_FPSmemberBodyPersal:{
                valueNotEquals: "Please select an employee"
            },
            edit_bodypart:{
                valueNotEquals: "Please select a body calssification"
            },
            edit_atSceneBodyAddressPostalCode:{                
                number: "Invalid postal code"
            },
            edit_bodyFoundDate:{
                required: "Please select the date the body was found"
            },
            
            edit_bodyFoundTime:{
                required: "Please select the time the body was found",
                checkFoundTime: "Invalid time"
            },
            edit_ReceivedSceneDate:{
                required: "Please select the date the body was recieved at the scene",
                checkSceneDate: "Invalid date"
            },
            edit_ReceivedSceneTime:{
                required: "Please select the time the body was recieved at the scene",
                checkSceneTime: "Invalid time"
            },  
            edit_inAllegedInjuryDate:{
                checkInjuryDate: "Invalid date"
            },
            edit_inAllegedInjuryTime:{
                checkInjuryTime: "Invalid time"
            },            
            edit_inAllegedDeathDate:{
                checkDeathDate: "Invalid date"
            },
            edit_inAllegedDeathTime:{
                checkDeathTime: "Invalid time"
            },
            edit_ReceivedFacilityDate:{
                required: "Please select the date the body will be recieved at the facility"
            },
            edit_ReceivedFacilityTime:{
                required: "Please select the time the body will be recieved at the facility"
            },
            edit_DeathAddress:{
                required: "Please enter in the place of death"
            }
            
        }
        
    });
    
    $("#edit_recieve_body_scene_form").submit(function(){
        _data = $("#edit_recieve_body_scene_form").serialize();
    });
    
     /**
     * Custom rule to ensure that user has selected an item
     * in the drop down list
     */
    $.validator.addMethod("valueNotEquals", function(value, element, arg){
        return arg != value;
    });
    
    $.validator.addMethod("edit_checkFoundTime", function(value, element, arg){
        var strdate;
        var month;
        var date = new Date();
        month = (date.getMonth() + 1).toString();
        if(month.length == 1){
            month = "0"+month;
        }
        strdate = date.getFullYear()+"-"+month+"-"+date.getDate();        
        if($("#edit_bodyFoundDate").val() == strdate){
            var hour = date.getHours().toString();
            if(hour.length ==1){
                hour = "0"+hour;
            }
            var min = date.getMinutes().toString();
            if(min.length == 1){
                min = "0"+min;
            }
            var strtime = hour+":"+"minute";
            if($("#edit_bodyFoundTime").val() > strtime){
                return !value;
            }
        }
        return value
    });
    
$.validator.addMethod("edit_checkInjuryDate", function(value, element, arg){
        if($("#edit_inAllegedInjuryDate").val() == ""){
            return !value;
        }
        else if($("#edit_bodyFoundDate").val() == ""){
            return value;
        }
        else if($("#edit_inAllegedInjuryDate").val() > $("#edit_bodyFoundDate").val()){
                return !value
        }
        return value;
    });  
    
$.validator.addMethod("edit_checkDeathDate", function(value, element, arg){
        if($("#edit_inAllegedDeathDate").val() == ""){
            return !value;
        }
        else if(($("#edit_inAllegedInjuryDate").val() == "") & ($("#edit_bodyFoundDate").val() == "")){
            return value;
        }
        else if($("#edit_inAllegedDeathDate").val() < $("#edit_inAllegedInjuryDate").val()){
                return !value
        }
        else if($("#edit_inAllegedDeathDate").val() > $("#edit_bodyFoundDate").val()){
            return !value;
        }
        return value;
    });  
    
    $.validator.addMethod("edit_checkDeathTime", function(value, element, arg){
        if($("#edit_inAllegedDeathTime").val() == ""){
            return !value;
        }
        else if(($("#edit_inAllegedInjuryDate").val() =="") & ($("#edit_inAllegedInjuryTime").val() == "")){
            return value;
        }
        else if($("#edit_inAllegedDeathDate").val() == $("#edit_inAllegedInjuryDate").val()){
                if($("#edit_inAllegedDeathTime").val() < $("#edit_inAllegedInjuryTime").val()){
                    return !value;
                }                        
        }
        else if($("#edit_inAllegedDeathDate").val() == $("#edit_bodyFoundDate").val()){
            if($("#edit_inAllegedDeathTime").val() > $("#edit_bodyFoundTime").val()){
                    return !value;
                } 
        }
        return value;
    }); 
    
$.validator.addMethod("edit_checkInjuryTime", function(value, element, arg){
        if($("#edit_inAllegedInjuryTime").val()==""){            
            return !value;
        }
        else if($("#edit_inAllegedInjuryDate").val()==""){
            return value;
        }
        else if($("#edit_bodyFoundDate").val() == $("#edit_inAllegedInjuryDate").val()){
            if($("#edit_inAllegedInjuryTime").val() > $("#edit_bodyFoundTime").val()){
                return !value
            }
        }
        return value;
    });    
    
$.validator.addMethod("checkSceneDate", function(value, element, arg){
        if($("#edit_ReceivedSceneDate").val() < $("#edit_bodyFoundDate").val()){
            return !value;
        }
        else if($("#edit_ReceivedSceneDate").val() < $("#edit_inAllegedInjuryDate").val()){
            return !value;
        }
        else if($("#edit_ReceivedSceneDate").val() < $("#edit_inAllegedDeathDate").val()){
            return !value;
        }
        return value;
    });    
    
$.validator.addMethod("checkSceneTime", function(value, element, arg){
        if($("#edit_ReceivedSceneDate").val() == $("#edit_bodyFoundDate").val()){
            if($("#edit_ReceivedSceneTime").val() < $("#edit_bodyFoundTime").val()){
                return !value;
            }
        }
        return value;
    });     
    
    $("#edit_pathologistAtScene").click(function(){
       if($('#edit_pathologistAtScene option').filter(':selected').text() == "Yes"){
            $("#edit_pathologist_at_scene_details").show();
            $("#edit_pathologistBodyName").rules("remove");
            $("#edit_pathologistBodyName").rules("add",{
                required: true,
                messages:{
                    required: "Please enter the name of the pathologist at the scene"
                }
            });
            $("#edit_pathologistBodySurname").rules("remove");
            $("#edit_pathologistBodySurname").rules("add",{
                required: true,
                messages:{
                    required: "Please enter the surname of the pathologist at the scene"
                }
            });
            $("#edit_pathologistBodyRank").rules("remove");
            $("#edit_pathologistBodyRank").rules("add",{
                valueNotEquals:"Select",
                messages:{
                    valueNotEquals: "Please select a rank"
                }
            });
        }
        else{
            $("#edit_pathologist_at_scene_details").hide();
            $("#edit_pathologistBodyName").rules("remove");
            $("#edit_pathologistBodySurname").rules("remove");
            $("#edit_pathologistBodyRank").rules("remove");
        }
    });
    
    $("#edit_recieve_at_scene_id_type").click(function(){
        if($("#edit_recieve_at_scene_id_type option").filter(':selected').text() == "ID"){
             $("#edit_recieve_at_scene_id_type").rules("remove");
             $("#edit_atSceneBodyID").rules("remove");
             $("#edit_atSceneBodyID").rules("add",{
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
        else if($("#edit_recieve_at_scene_id_type option").filter(':selected').text() == "Passport"){
             $("#edit_recieve_at_scene_id_type").rules("remove");
             $("#edit_atSceneBodyID").rules("remove");
             $("#edit_atSceneBodyID").rules("add",{
                 required:true,
                 messages:{
                    required: "Please enter in an passport number"
                 }
             });
        }
        else{            
             $("#edit_atSceneBodyID").rules("remove");
        }
    });
    
    $("#edit_atSceneBodyID").click(function(){
        if($("#edit_atSceneBodyID").val().length >0){
            $("#edit_recieve_at_scene_id_type").rules("remove");
            $("#edit_recieve_at_scene_id_type").rules("add",{
                valueNotEquals: "Select",
                messages:{
                    valueNotEquals: "Please select an identification type"
                }
            });
        }
        else{
            $("#edit_recieve_at_scene_id_type").rules("remove");
        }
    });
    
    $("#edit_atSceneBodyID").blur(function(){
        if($("#edit_atSceneBodyID").val().length >0){
            $("#edit_recieve_at_scene_id_type").rules("remove");
            $("#edit_recieve_at_scene_id_type").rules("add",{
                valueNotEquals: "Select",
                messages:{
                    valueNotEquals: "Please select an identification type"
                }
            });
        }
        else{
            $("#edit_recieve_at_scene_id_type").rules("remove");
        }
    });
    
    $("#edit_atSceneBodyEstAge").click(function(){
       if($("#edit_atSceneBodyEstAge option").filter(':selected').text() != "Age"){
           $("#edit_atSceneBodyEstAge").rules("remove");
           $("#edit_at_scene_body_estimated_age_type").rules("remove");
           $("#at_scene_body_estimated_age_type").rules("add",{             
               valueNotEquals: "Years/Months",
               messages:{
                   valueNotEquals: "Please select years or months"
               }
           });
       } 
       else{
           $("#edit_at_scene_body_estimated_age_type").rules("remove");
       }
    });
    
    $('#edit_at_scene_body_estimated_age_type').click(function(){
        if($('#edit_at_scene_body_estimated_age_type option').filter(':selected').text() != "Years/Months"){
            $('#edit_atSceneBodyEstAge').rules("remove");
            $('#edit_atSceneBodyEstAge').rules("add",{
               valueNotEquals: "Age",
               messages:{
                valueNotEquals: "Please select an estimated age"
               }
            });
        }
        else{
            $('#edit_atSceneBodyEstAge').rules("remove");
        }
    });
    
    $("#edit_inAllegedDeathTime").click(function(){
        $("#edit_inAllegedDeathDate").rules("add",{
            required: true,
            messages:{
                required: "Please select a date"
            }
        });
    });
    
    $("#edit_inAllegedInjuryTime").click(function(){
        $("#edit_inAllegedInjuryDate").rules("add",{
            required: true,
            messages:{
                required: "Please select a date"
            }
        });
    });
    
});

