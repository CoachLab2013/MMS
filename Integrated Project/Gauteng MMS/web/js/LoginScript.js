/**
 * This is the Java script file using the jQuery library to validate the login page
 */


/**
 * Need to begin with $(document).ready(function)
 * This ensures that the document if fully loaded before the script is executed
 */

$(document).ready(function(){
    /**
     * validation for the login form
     */
    $("#loginform").validate({
        rules:{
            personnelnumber:{
                required: true,
                minlength: 8,
                maxlength:8 ,
                number:true
            },//end rules for personnelnumber 
            
            password:{
                required: true,
                minlength: 6
            }//end rules for password
            
        },//end of rules
        messages:{
          personnelnumber:{
                required: "Please enter in your personnel number.",
                minlength: "Your personnel number must be exactly 8 digits long.",
                maxlength: "Your personnel number must be exactly 8 digits long.",
                number: "Your personnel number must cosist of 8 numeric digits."
          },//end messages for personnelnumber
          
          password:{
                required: "Please enter in your password.",
                minlength: "Your password must be at least 6 characters long."
          }//end messages for personnelnumber
            
        }//end of messages
        
    });//end of form validation
    
    
}); 
//end $(document).ready(function())


