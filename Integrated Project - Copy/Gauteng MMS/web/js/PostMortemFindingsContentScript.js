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
    $("#Findingsform").validate({
        rules:{
            findingsdeath:{
                required: true
            },//end rules for cause of death 
          
               findingsnumber:{
              required:true
          },//end rules for DHA 1663 number
          
               findingsmortem:{
                required:true
            },//end rule of Chief post mortem
            
               ICDcode:{
                valueNotEquals: "Select"
            },//end rule of institution
       
        },//end of rules
       
        messages:{
          findingsdeath:{
                required: "Please enter Cause of death."
          },//end messages for cause of death
          
          findingsnumber:{
            required: "Please enter DHA 1663 number."  
          },//end message for DHA 1663 number
          
          findingsmortem:{
               required: "Please select Chief post Mortem Finding."
           },//end rule for chief findings
           
           ICDcode:{
               valueNotEquals: "Please select ICD codes."
           },//end rule for type of analysis
        }//end of messages
        
    });//end of form validation
    
    
}); 
//end $(document).ready(function())