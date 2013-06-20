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
    
    $("#recieve_body_scene_form").validate({
        ignore: [],
        rules:{            
            at_scene_lognmber:{
                valueNotEquals: "Select"
            },
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
            bodypart:{
                valueNotEquals: "Select"
            },
            atSceneBodyAddressPostalCode:{
                required: false,
                number: true
            }, 
            bodyFoundDate:{
                required: true
            },
            bodyFoundTime:{
                required: true,
                checkFoundTime: true
            },            
            inAllegedInjuryDate:{
                checkInjuryDate: true
            },
            inAllegedInjuryTime:{
                checkInjuryTime: true
            },
            inAllegedDeathDate:{
                checkDeathDate: true
            },
            inAllegedDeathTime:{
                checkDeathTime: true
            },
            ReceivedSceneDate:{
                required: true,
                checkSceneDate: true
            },
            ReceivedSceneTime:{
                required: true,
                checkSceneTime: true
            },
            ReceivedFacilityDate:{
                required: true
            },
            ReceivedFacilityTime:{
                required: true
            },
            DeathAddress:{
                required: true
            }
            
        },
        messages:{ 
            at_scene_lognmber:{
                valueNotEquals: "Please select an incident log number"
            },
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
            bodypart:{
                valueNotEquals: "Please select a body calssification"
            },
            atSceneBodyAddressPostalCode:{                
                number: "Invalid postal code"
            },
            bodyFoundDate:{
                required: "Please select the date the body was found"
            },
            
            bodyFoundTime:{
                required: "Please select the time the body was found",
                checkFoundTime: "Invalid time"
            },           
            inAllegedInjuryDate:{
                checkInjuryDate: "Invalid date"
            },
            inAllegedInjuryTime:{
                checkInjuryTime: "Invalid time"
            },            
            inAllegedDeathDate:{
                checkDeathDate: "Invalid date"
            },
            inAllegedDeathTime:{
                checkDeathTime: "Invalid time"
            },
            ReceivedSceneDate:{
                required: "Please select the date the body was recieved at the scene",
                checkSceneDate: "Invalid date"
            },
            ReceivedSceneTime:{
                required: "Please select the time the body was recieved at the scene",
                checkSceneTime: "Invalid time"
            }, 
            ReceivedFacilityDate:{
                required: "Please select the date the body will be recieved at the facility"
            },
            ReceivedFacilityTime:{
                required: "Please select the time the body will be recieved at the facility"
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
    
    $.validator.addMethod("checkFoundTime", function(value, element, arg){
        var strdate;
        var month;
        var date = new Date();
        month = (date.getMonth() + 1).toString();
        if(month.length == 1){
            month = "0"+month;
        }
        strdate = date.getFullYear()+"-"+month+"-"+date.getDate();        
        if($("#bodyFoundDate").val() == strdate){
            var hour = date.getHours().toString();
            if(hour.length ==1){
                hour = "0"+hour;
            }
            var min = date.getMinutes().toString();
            if(min.length == 1){
                min = "0"+min;
            }
            var strtime = hour+":"+"minute";
            if($("#bodyFoundTime").val() > strtime){
                return !value;
            }
        }
        return value
    });
    
    $.validator.addMethod("checkInjuryDate", function(value, element, arg){
        if($("#inAllegedInjuryDate").val() == ""){
            return !value;
        }
        else if($("#bodyFoundDate").val() == ""){
            return value;
        }
        else if($("#inAllegedInjuryDate").val() > $("#bodyFoundDate").val()){
            return !value
        }
        return value;
    });  
    
    $.validator.addMethod("checkDeathDate", function(value, element, arg){
        if($("#inAllegedDeathDate").val() == ""){
            return !value;
        }
        else if(($("#inAllegedInjuryDate").val() == "") & ($("#bodyFoundDate").val() == "")){
            return value;
        }
        else if($("#inAllegedDeathDate").val() < $("#inAllegedInjuryDate").val()){
            return !value
        }
        else if($("#inAllegedDeathDate").val() > $("#bodyFoundDate").val()){
            return !value;
        }
        return value;
    });  
    
    $.validator.addMethod("checkDeathTime", function(value, element, arg){
        if($("#inAllegedDeathTime").val() == ""){
            return !value;
        }
        else if(($("#inAllegedInjuryDate").val() =="") & ($("#inAllegedInjuryTime").val() == "")){
            return value;
        }
        else if($("#inAllegedDeathDate").val() == $("#inAllegedInjuryDate").val()){
            if($("#inAllegedDeathTime").val() < $("#inAllegedInjuryTime").val()){
                return !value;
            }                        
        }
        else if($("#inAllegedDeathDate").val() == $("#bodyFoundDate").val()){
            if($("#inAllegedDeathTime").val() > $("#bodyFoundTime").val()){
                return !value;
            } 
        }
        return value;
    }); 
    
    $.validator.addMethod("checkInjuryTime", function(value, element, arg){
        if($("#inAllegedInjuryTime").val()==""){            
            return !value;
        }
        else if($("#inAllegedInjuryDate").val()==""){
            return value;
        }
        else if($("#bodyFoundDate").val() == $("#inAllegedInjuryDate").val()){
            if($("#inAllegedInjuryTime").val() > $("#bodyFoundTime").val()){
                return !value
            }
        }
        return value;
    });    
    
    $.validator.addMethod("checkSceneDate", function(value, element, arg){   
        
        if($("#ReceivedSceneDate").val() < $("#bodyFoundDate").val()){            
            return !value;
        }
        else if($("#ReceivedSceneDate").val() < $("#inAllegedInjuryDate").val()){
            return !value;
        }
        else if($("#ReceivedSceneDate").val() < $("#inAllegedDeathDate").val()){
            return !value;
        }
        return value;
    });    
    
    $.validator.addMethod("checkSceneTime", function(value, element, arg){
        if($("#ReceivedSceneDate").val() == $("#bodyFoundDate").val()){
            if($("#ReceivedSceneTime").val() < $("#bodyFoundTime").val()){
                return !value;
            }
        }
        return value;
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
    });
    
/*   $("#inAllegedDeathTime").click(function(){
        $("#inAllegedDeathDate").rules("add",{
            required: true,
            messages:{
                required: "Please select a date"
            }
        });
    });
    
    $("#inAllegedInjuryTime").click(function(){
        $("#inAllegedInjuryDate").rules("add",{
            required: true,
            messages:{
                required: "Please select a date"
            }
        });
    });
    */
});





