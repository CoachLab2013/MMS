/* 
 * This is all the validation rules for kin details
 */

/**
 * Need to begin with $(document).ready(function)
 * This ensures that the document if fully loaded before the script is executed
 */

$(document).ready(function(){
    /**
     * validation for the login form
     */
    $("#Kinform").validate({
        rules:{
            KinName:{
                required: true
            },//end rules for initial seal number 
          
              KinSurname:{
              required:true
          },//end rules for Death Register number
          
               identificationtype:{
                valueNotEquals: "Select"
            },//end rule of identification type
            
               KinIDNumber:{
                required: true,
                minlength: 14,
                maxlength:14,
                number:true
             },//end rule of ID number
          
               NewSealNumber:{
              required:true
          },//end rules for New Seal Number
          
               KinRelationship:{
              required:true
          },//end rules for Kin Relationship
          
               KinContact:{
              required:true
          },//end rules for Kin contact
          
              KinRes:{
              required:true
          }//end rules for lKin residential address
       
        },//end of rules
       
        messages:{
          Kinname:{
                required: "Please enter Kin/Informant Name."
          },//end messages for Kin Name
          
          KinSurname:{
            required: "Please enter Kin/Informant Surname."  
          },//end message for Kin Surname
          
          identificationtype:{
               valueNotEquals: "Please select a ID Number."
           },//end rule for id
          
            KinIDNumber:{
                required: "Please enter in ID number.",
                minlength: "Your ID number must be exactly 14 digits long.",
                maxlength: "Your ID number must be exactly 14 digits long.",
                number: "Your ID number must consist of 14 numeric digits."
            }, //end messages for ID number
            
          KinRelationship:{
            required: "Please enter the relationship to deceased."  
          },//end message for lab reference number
          
          KinRes:{
            required: "Please enter in the Kin's/Informant Address."  
          }//end message for reason for seal
             
        }//end of messages
        
    });//end of form validation
    
    if($("#go_to_deceasedDetails").val()=="true")
    {
         //$("#IncidentDetailsTab").removeClass("active");
            $("#IncidentDetails").removeClass("tab-pane active");
            $("#CallDetails").removeClass("tab-pane");
            $("#IncidentDetails").addClass("tab-pane");
            $("#CallDetails").addClass("tab-pane active");
            $("#CallDetailsTab").addClass("active");
    }
}); 
//end $(document).ready(function())



