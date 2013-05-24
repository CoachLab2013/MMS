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
                minlength: 13,
                maxlength:13,
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
        $("#IncidentTab").removeClass("active");
        $("#BodyFileTab").addClass("active");
        $("#Incident").removeClass("tab-pane active");
        $("#Incident").addClass("tab-pane");
        $("#BodyFile").removeClass("tab-pane");
        $("#BodyFile").addClass("tab-pane active");
        $("#tabOpenBodyFiles").removeClass("active");
        $("#tabEditBodyFiles").addClass("active");
        $("#OpenBodyFiles").removeClass("tab-pane active");
        $("#OpenBodyFiles").addClass("tab-pane");
        $("#EditBodyFiles").removeClass("tab-pane");
        $("#EditBodyFiles").addClass("tab-pane active");
        $("#tabIncidentInformation").removeClass("active");
        $("tabBodyIdentification").addClass("active");
        $("#IncidentInformation").removeClass("tab-pane active");
        $("#IncidentInformation").addClass("tab-pane");
        $("#BodyIdentification").removeClass("tab-pane");
        $("#BodyIdentification").addClass("tab-pane active");
        $("#tabKinInformantDetails").removeClass("active");
        $("#tabDeceasedDetails").addClass("active");
        $("#KinInformantDetails").removeClass("tab-pane active");
        $("#KinInformantDetails").addClass("tab-pane");
        $("#DeceasedDetails").removeClass("tab-pane");
        $("#DeceasedDetails").addClass("tab-pane active");
    }
}); 
//end $(document).ready(function())



