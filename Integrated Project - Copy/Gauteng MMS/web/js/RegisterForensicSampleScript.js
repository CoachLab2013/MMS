/* 
 * This is all the validation rules for register forensic sample
 */

/**
 * Need to begin with $(document).ready(function)
 * This ensures that the document if fully loaded before the script is executed
 */

$(document).ready(function(){
    /**
     * validation for the login form
     */
    $("#registerform").validate({
        rules:{
            InitialSealnumber:{
                required: true
            },//end rules for initial seal number 
          
              DeathRegisternumber:{
              required:true
          },//end rules for Death Register numberr
          
               NewSealNumber:{
              required:true
          },//end rules for New Seal Number
          
               LabReferenceNumber:{
              required:true
          },//end rules for Lab Reference number
          
               Reasonseal:{
              required:true
          }//end rules for Lab Reference number 
       
        },//end of rules
       
        messages:{
          InitialSealnumber:{
                required: "Please enter in your Initial Seal Number."
          },//end messages for initial seal number
          
          DeathRegisternumber:{
            required: "Please enter in the Death Register Number."  
          },//end message for death register
          
          LabReferenceNumber:{
            required: "Please enter in the Lab Reference Number."  
          },//end message for lab reference number
          
          Reasonseal:{
            required: "Please enter in the Reason for Seal."  
          },//end message for reason for seal
          
          NewSealNumber:{
            required: "Please enter in the New Seal Number."  
          }//end message for new seal     
        }//end of messages
        
    });//end of form validation
    
    
}); 
//end $(document).ready(function())


