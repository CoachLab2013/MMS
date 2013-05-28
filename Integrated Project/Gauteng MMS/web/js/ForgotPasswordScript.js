/**
 * Need to begin with $(document).ready(function)
 * This ensures that the document if fully loaded before the script is executed
 */

$(document).ready(function(){
    /**
     * validation for the login form
     */
    $("#reset_password_form").validate({
        rules:{
            personnelnumber_forgot:{
                required: true,
                minlength: 8,
                maxlength:8 ,
                number:true
            }//end rules for personnelnumber                         
        },//end of rules
        messages:{
         personnelnumber_forgot:{
                required: "Please enter in your personnel number.",
                minlength: "Your personnel number must be exactly 8 digits long.",
                maxlength: "Your personnel number must be exactly 8 digits long.",
                number: "Your personnel number must consist of 8 numeric digits."
          }//end messages for personnelnumber                      
        }//end of messages
        
    });//end of form validation
    
    
}); 
//end $(document).ready(function())





