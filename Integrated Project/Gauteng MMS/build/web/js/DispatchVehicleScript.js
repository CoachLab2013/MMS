
/**
 * validation for the dispatch vehicle tab
 */

/**
 * Need to begin with $(document).ready(function)
 * This ensures that the document if fully loaded before the script is executed
 */

$(document).ready(function(){
    /**
     * validation for the login form
     */
    $("#vehicleform").validate({
        rules:{
            vehicle:{
                valueNotEquals: "Select"
            }
        },//end of rules

        messages:{
           vehicle:{
               valueNotEquals: "Please select a vehicle."
           }
        }//end of messages
        
        
    });//end of form validation
    
    /**
     * Custom rule to ensure that user has selected an item
     * in the drop down list
     */
    $.validator.addMethod("valueNotEquals", function(value, element, arg){
        return arg != value;
    }, "Value must not equal arg.");
    
    $("#vehiclecancel").click(function(){
        $("label.error").hide();
    });
});


