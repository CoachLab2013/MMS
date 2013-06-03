/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

$(document).ready(function(){
    /**
     * validation for the login form
     */
    $("#Deceasedform").validate({
        rules:{
    
            
             PlaceBirth:{
                   required: false,
                   number: false
               
            },//end rule for postal code
            
            deceasedage:{
                required: false,
                number: true
                
            }            

        },//end of rules
               
       
        messages:{
         PlaceBirth:{
             number: "No number required"
       
         },
         
           deceasedage:{
                
                number: "Only numbers allowed"
                
            }
            
        }//end of messages
        
    });//end of form validation
    

}); 
//end $(document).ready(function())




