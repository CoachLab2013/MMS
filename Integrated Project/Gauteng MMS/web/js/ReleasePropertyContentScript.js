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
    $.validator.addMethod("textOnly",
           function(value, element) {
              return /^[a-zA-Z ]+$/g.test(value);
         }, "Alpha Characters Only."
                              
     );
    
    
    $("#releasepropertyform").validate({
        rules:{
            
             formantname:{
              required:false,
              textOnly:true
          },//end rules for name
          
            formantsurname:{
              required:false,
              textOnly:true
          },//end rules for surname
          
           Adres:{
              required:false,
              textOnly:true
          },//end rules for name
          
            propertydescription:{
              required:false
          },//end rules for surname

            
           cash:{
              required: false,
              textOnly:true
          },//end rules for address
            
            othergood:{
              required:false
          },//end rules for name
          
           
        },//enf rules
        

        messages:{
            
             formantname:{
              required:false,
              textOnly: "Please enter valid name"
          },//message for name
          
            formantsurname:{
              required:false,
              textOnly:"Please enter valid Surname"
          },//message for surname
          
            
           cash:{
              required: false,
              textOnly:"Please enter cash in Words"
          },//message for cash
            
 
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


