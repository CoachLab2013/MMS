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
            }//end rule for postal code
            

        },//end of rules
        
        
        
        
       
        messages:{
         postalcode:{
             number: "Invalid postal code. It must contain 4 numeric digits",
             minlength :"Invalid postal code. It must contain 4 numeric digits",
             maxlength :"Invalid postal code. It must contain 4 numeric digits"
         }
          
   
          
   
          
             
        }//end of messages
        
    });//end of form validation
    
 }); 
//end $(document).ready(function())

