/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

$(document).ready(function(){
    /**
     * validation for the login form
     */
    $("#DeceasedAddressform").validate({
        rules:{
    
            
             postalcode:{
                   required: false,
                   number: true,
                   minlength : 4,
                   maxlength : 4
            },//end rule for postal code
            

        },//end of rules
        
        
        
        
       
        messages:{
         postalcode:{
             number: "Please enter valid code",
             minlength :"Postal code must be 4 numbers long",
             maxlength :"Postal code must be 4 numbers long"
         }
          
   
          
   
          
             
        }//end of messages
        
    });//end of form validation
    
 }); 
//end $(document).ready(function())

