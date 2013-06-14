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
            },
          
              KinSurname:{
              required:true
          },
          
               identificationtype:{
                valueNotEquals: "Select"
            },
            
          KinIDNumber:{
              required: true
          },
          
               NewSealNumber:{
              required:true
          },//end rules for New Seal Number
          
               KinRelationship:{
                valueNotEquals:"Select"
          },//end rules for Kin Relationship
          
               KinContact:{
              required:true,
              number: true,
              minlength: 10,
              maxlength: 10
          },//end rules for Kin contact
          
              KinRes:{
              required:true
          }//end rules for lKin residential address
       
        },//end of rules
       
        messages:{
          KinName:{
                required: "Please enter Kin/Informant Name."
          },//end messages for Kin Name
          
          KinSurname:{
            required: "Please enter Kin/Informant Surname."  
          },//end message for Kin Surname
          
          identificationtype:{
               valueNotEquals: "Please select an identification type"
           },//end rule for id
            KinIDNumber:{
              required: "Please enter an identification number"
          },
          KinRelationship:{
            valueNotEquals: "Please enter the relationship to deceased."  
          },//end message for lab reference number
          KinContact:{
              required:"Please enter in a phone number",
              number: "Invalid phone number. A phone number must consist of exactly 10 numeric digits",
              minlength: "Invalid phone number. A phone number must consist of exactly 10 numeric digits",
              maxlength: "Invalid phone number. A phone number must consist of exactly 10 numeric digits"
          },
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
    };
    
    
    $.validator.addMethod("valueNotEquals", function(value, element, arg){
        return arg != value;
    }, "Value must not equal arg.");
    
    
    $("#kinIdType").click(function(){
        
       if($("#kinIdType option").filter(':selected').text() == "ID"){
             $("#kinIdNumber").rules("remove");
             $("#kinIdNumber").rules("add",{
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
        else if($("#kinIdType option").filter(':selected').text() == "Passport"){
             $("#kinIdNumber").rules("remove");
             $("#kinIdNumber").rules("add",{
                 required:true,
                 messages:{
                    required: "Please enter in an passport number"
                 }
             });
        }    
        
    });
}); 
//end $(document).ready(function())



