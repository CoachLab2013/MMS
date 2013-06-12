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
            },//end rules for Recipient name 
          
              RecipientSurname:{
              required:true
          },//end rules for Recipient surname number
                      
               RecipientIDNumber:{
                required: true,
                minlength: 13,
                maxlength:13,
                number:true
             },//end rule of ID number
        
               RecipientContact:{
                   number: true,
              required:true
          },//end rules for  contact
          
             RecipientAddres:{
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
          
          RecipientAddres:{
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
    
        
    $("#recipientidentificationtype").click(function(){
       if($("#recipientidentificationtype option").filter(':selected').text() == "ID"){
           $("#recipientIDNumber").rules("remove");
           $("#recipientIDNumber").rules("add",{
               required: true,
               number: true,
               minlength: 13,
               maxlength: 13,
               messages:{
                   required: "Please enter in an ID number",
                   number: "Invalid ID number. It must contain exactly 13 numeric digits",
                   minlength: "Invalid ID number. It must contain exactly 13 numeric digits",
                   maxlength: "Invalid ID number. It must contain exactly 13 numeric digits"
               }
           });           
       }
       else if($("#recipientidentificationtype option").filter(':selected').text() == "Passport"){
            $("#recipientIDNumber").rules("remove");
           $("#recipientIDNumber").rules("add",{
               required: true,
               messages:{
                   required: "Please enter in an passport number"
               }
           });
       }
       else{
           $("#recipientIDNumber").rules("remove");
       }
    });
    
    $("#releaseTable").click();
     
    $("#releaseTable tr").click(function(){
        $(".selectedtablerow").addClass("tablerow");
        $(".selectedtablerow").removeClass("selectedtablerow");
        $(this).removeClass("tablerow");
        $(this).addClass("selectedtablerow");   
        
        $.get("ReleaseBodyServlet", {type: "load", data: $(this).attr("drnumber")}, function(data) {

                /*var tr = "<tr class='tablerow'>";
                var dataValues = data.split(" ");

                for (var i = 0; i < dataValues.length; i++)
                {
                    tr += "<td class='tablecell'>" + dataValues[i] + "</td>";
                }

                tr += "</tr>";

                $('#releaseLinkTable').html(tr);*/
            });
            
            $('#Releaseform').css('display', 'inherit');
            $('#RecipientDeathRegisterNumber').val($(this).attr("drnumber"));
    });
    
    if($("#_recipientDetail").val() === "true") {

            $("#IncidentTab").removeClass("active");
            $("#BodyFileTab").addClass("active");
            
                $("#Incident").removeClass("active");
                $("#BodyFile").addClass("active");
            
            $("#tabOpenBodyFiles").removeClass("active");
            $("#tabNewBodyFiles").removeClass("active");
            $("#tabEditBodyFiles").addClass("active");
            $("#tabLinkBodyFiles").removeClass("active");
                            
                $("#OpenBodyFiles").removeClass("active");
                $("#NewBodyFiles").removeClass("active");
                $("#EditBodyFiles").addClass("active");
                $("#LinkBodyFiles").removeClass("active");
                        
            $("#tabIncidentInformation").removeClass("active");
            $("#tabBodyIdentification").removeClass("active");
            $("#tabPostMortem").removeClass("active");
            $("#tabReleaseBody").addClass("active");
                            
                $("#IncidentInformation").removeClass("active");
                $("#BodyIdentification").removeClass("active");
                $("#PostMortem").removeClass("active");
                $("#ReleaseBody").addClass("active");
    }    
    
}); 
//end $(document).ready(function())


