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
    $("#Releaseform").validate({
        rules:{
            RecipientName:{
                required: true
            },//end rules for initial seal number 
          
              RecipientSurname:{
              required:true
          },//end rules for Death Register number
          
               Recipientidentificationtype:{
                valueNotEquals: "Select"
            },//end rule of identification type
            
               RecipientIDNumber:{
                required: true,
                minlength: 13,
                maxlength:13,
                number:true
             },//end rule of ID number
        
               RecipientContact:{
              required:true
          },//end rules for Kin contact
          
             RecipientRes:{
              required:true
          },//end rules for  residential address
          
             releasetype:{
                valueNotEquals: "Select"
            },//end rule of institution
            
            releaseto:{
                valueNotEquals: "Select"
            }//end rule of type of analysis
       
        },//end of rules
       
        messages:{
          RecipientName:{
                required: "Please enter Recipient Name."
          },//end messages for Kin Name
          
          RecipientSurname:{
            required: "Please enter Recipient Surname."  
          },//end message for Kin Surname
          
          Recipientidentificationtype:{
               valueNotEquals: "Please select a Recipient ID Number type."
           },//end rule for id
           
           RecipientContact:{
                required: "Please enter in Recipient Contact number.",
                minlength: "Your Contact number must be exactly 10 digits long.",
                maxlength: "Your Contact number must be exactly 10 digits long.",
                number: "Your Contact number must consist of 10 numeric digits."
           },
          
            RecipientIDNumber:{
                required: "Please enter in Recipient ID number.",
                minlength: "Your ID number must be exactly 13 digits long.",
                maxlength: "Your ID number must be exactly 13 digits long.",
                number: "Your ID number must consist of 13 numeric digits."
            }, //end messages for ID number
          
          RecipientRes:{
            required: "Please enter in the Recipient Address."  
          },//end message for reason for seal
          
          releasetype:{
               valueNotEquals: "Please select a Release Type."
           },//end rule for type of analysis
           
           releaseto:{
               valueNotEquals: "Please select a Released to."
           },//end rule for institution
          
             
        }//end of messages
        
    });//end of form validation
    
    if($("#go_to_deceasedDetails").val()=="true")
    {
         //set focus on Open Incidents tab 
            $("#OpenIncidentsTab").removeClass("active");
            $("#EditIncidentTab").addClass("active");
            
            $("#OpenIncidents").removeClass("tab-pane active");
            $("#OpenIncidents").addClass("tab-pane");
            $("#EditIncident").removeClass("tab-pane");
            $("#EditIncident").addClass("tab-pane active");
    }
}); 
//end $(document).ready(function())


