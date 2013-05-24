/* 
 * This is all the validation rules for call details
 */

/**
 * Need to begin with $(document).ready(function)
 * This ensures that the document if fully loaded before the script is executed
 */

$(document).ready(function(){
    /**
     * validation for the login form
     */
    $("#edit_callform").validate({
        rules:{
            
          edit_callhour:{
              valueNotEquals: "Hour",
              validcalltime: true
          },//end rule for hour
          
          edit_callminute:{
              valueNotEquals: "Minute",
              validcalltime: true
          },//end rule for minute*/
          
          edit_phonenumber:{
              required: true,
              number: true,
              minlength: 10,
              maxlength: 10
          },//end rules for edit_phonenumber
          
          edit_callname:{
              required:true
          },//end rules for edit_callname
          
          edit_calladdress:{
              required: true
          },//end rules for edit_calladdress
          
          call_province:{
              valueNotEquals: "Select"
          },//end rules for call_province
          
          call_region:{
              valueNotEquals: "Select"
          },//end rules for call_region
          
          edit_callcondition:{
              required: true
          }//end rules for edit_callcondition
            
        },//end of rules
        groups: {
                calltime: "edit_callhour edit_callminute"
        },
        errorPlacement: function(error, element) {
            if((element.attr("name") == "edit_callhour") || (element.attr("name") == "edit_callminute")){
                error.insertAfter("#edit_callminute");
            }
            else {
                error.insertAfter(element);
            }
        },
        
        messages:{
          
         edit_callhour:{
              valueNotEquals: "Invalid time.",
              validcalltime : "Invalid time."
          },//end message for hour
          
          edit_callminute:{
              valueNotEquals: "Invalid time.",
              validcalltime : "Invalid time."
          },//end message for minute
          
          edit_phonenumber:{
              required: "Please enter in a phone number.",
              number: "A phone number must consist of 10 numeric digits.",
              minlength: "Phone number must be 10 digits long.",
              maxlength: "Phone number must be 10 digits long."
          },//end messages for phone number
          
          edit_callname:{
            required: "Please enter in the caller's name."  
          },//end message for edit_callname
          
          edit_calladdress:{
              required: "Please enter in the scene address."
          },//end messages for edit_calladdress
          
          call_province:{
              valueNotEquals: "Please select a province."
          },//end message for call_province
          
          call_region:{
              valueNotEquals: "Please select a region."
          },//end message for call_region
          
          edit_callcondition:{
              required: "Please enter in the scene condition."
          }//end message for edit_callcondition
           
        }//end of messages
        
    });//end of form validation
    
    
    /**
     * Custom rule to ensure that user has selected an item
     * in the drop down list
     */
    $.validator.addMethod("valueNotEquals", function(value, element, arg){
        return arg != value;
    }, "Value must not equal arg.");
    
    /**
     * check for a valid time
     */
    $.validator.addMethod("validcalltime",function(value){
        var date = new Date();
        var hour = $("#edit_callhour").val();
        var min = $("#edit_callminute").val();
        if(hour > date.getHours()){
            return !value;
        }
        else if(hour == date.getHours()){
            if(min > date.getMinutes()){
                return !value;
            }            
        }
        return value;
        
    });
    
    $("#edit_callcancel").click(function(){
        $("label.error").hide();
        //reset focus on edit incident details tab
       $("#DispatchVehicleTab").removeClass("active");
       $("#IncidentDetailsTab").addClass("active");
       $("#DispatchVehicle").removeClass("tab-pane active");
       $("#DispatchVehicle").addClass("tab-pane");
       $("#IncidentDetails").removeClass("tab-pane");
       $("#IncidentDetails").addClass("tab-pane active");
       
       //set focus on Open Incidents tab 
       $("#LogIncidentTab").removeClass("active");
       $("#OpenIncidentsTab").addClass("active");
       $("#LogIncident").removeClass("tab-pane active");
       $("#LogIncident").addClass("tab-pane");
       $("#OpenIncidents").removeClass("tab-pane");
       $("#OpenIncidents").addClass("tab-pane active");
    });
    
}); 
//end $(document).ready(function())





