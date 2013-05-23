/**
 * validation for the request forensic sample tab
 */

/**
 * Need to begin with $(document).ready(function)
 * This ensures that the document if fully loaded before the script is executed
 */

$(document).ready(function(){
    /**
     * validation for the request form
     */
    $("#requestform").validate({
        rules:{
            institution:{
                valueNotEquals: "Select"
            },//end rule of institution
            
            analysis:{
                valueNotEquals: "Select"
            },//end rule of type of analysis
            
            
            seal:{
                valueNotEquals: "Select"
            },//end rule of Seal Number
            
            special:{
              required: true
          },//end rules for address
            
            employeename:{
              required:true
          },//end rules for name
          
            employeesurname:{
              required:true
          },//end rules for surname
            
        },//enf rules
        

        messages:{
           analysis:{
               valueNotEquals: "Please select a Type of analysis."
           },//end rule for type of analysis
           
           institution:{
               valueNotEquals: "Please select a Institution."
           },//end rule for institution
           
           seal:{
               valueNotEquals: "Please select a Seal Number."
           },//end rule for Seal Number
           
           special:{
              required: "Please enter in the scene Special Instrustion."
          },//end messages for address
           
            employeename:{
            required: "Please enter in the Employee's Name."  
          },//end message for name
            
            employeesurname:{
            required: "Please enter in the Employees's Surname."  
          }//end message for employee surname
          
         }//end of messages
        
    });//end of form validation
    
    /**
     * Custom rule to ensure that user has selected an item
     * in the drop down list
     */
    $.validator.addMethod("valueNotEquals", function(value, element, arg){
        return arg != value;
    }, "Value must not equal arg.");
});


