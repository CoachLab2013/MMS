/**
 * Need to begin with $(document).ready(function)
 * This ensures that the document if fully loaded before the script is executed
 */

$(document).ready(function(){
    /**
     * validation for the login form
     */
    $("#editform").validate({
        rules:{
            editInitialSealnumber:{
                required: true
            },//end rules for initial seal number 
          
              editDeathRegisternumber:{
              required:true
          },//end rules for Death Register numberr
          
               editNewSealNumber:{
              required:true
          },//end rules for New Seal Number
          
               editLabReferenceNumber:{
              required:true
          },//end rules for Lab Reference number
          
               editReasonseal:{
              required:true
          }//end rules for Lab Reference number 
       
        },//end of rules
       
        messages:{
          editInitialSealnumber:{
                required: "Please enter in your Initial Seal Number."
          },//end messages for initial seal number
          
          editDeathRegisternumber:{
            required: "Please enter in the Death Register Number."  
          },//end message for death register
          
          editLabReferenceNumber:{
            required: "Please enter in the Lab Reference Number."  
          },//end message for lab reference number
          
          editReasonseal:{
            required: "Please enter in the Reason for Seal."  
          },//end message for reason for seal
          
          editNewSealNumber:{
            required: "Please enter in the New Seal Number."  
          }//end message for new seal     
        }//end of messages
        
    });//end of form validation 
    
    $("#sampletable").click();
     
    $("#sampletable tr").click(function(){
        $(".selectedtablerow").addClass("tablerow");
        $(".selectedtablerow").removeClass("selectedtablerow");
        $(this).removeClass("tablerow");
        $(this).addClass("selectedtablerow");  
        
        $('input[name="editInitialSealnumber"]').val($(this).children('#trSealNumber').text());
        $('input[name="editNewSealNumber"]').val($(this).children('#trBrokenSeal').text());
        $('input[name="editDeathRegisternumber"]').val($(this).children('#trDeathNumber').text());
        $('input[name="editSampleLabRecord"]').val($(this).children('#trLabNumber').text());
        $('textarea[name="editReasonseal"]').val($(this).children('#trReason').text());
        
        $("#selectedsample").val($(this).attr("sealnumber"));        
    });

    $("#editsamplebutton").click(function() {        
        
        if($('input[name="editInitialSealnumber"]').val() === ""){
            $('.alert').css('display','inherit');
        } else {
            $('.alert').css('display','none');
            $("#editform").removeAttr('hidden');
        }
    });

    $("#cancel_forensic_samples").click(function() {

        $("#editform").attr('hidden','hidden');
        
        $('input[name="editNewSealNumber"]').val("");
        $('input[name="editDeathRegisternumber"]').val("");
        $('input[name="editSampleLabRecord"]').val("");
        $('textarea[name="editReasonseal"]').val("");
        
    });

    if($("#_registeredSamples").val() === "true") {

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
            $("#tabPostMortem").addClass("active");
            $("#tabReleaseBody").removeClass("active");
                            
                $("#IncidentInformation").removeClass("active");
                $("#BodyIdentification").removeClass("active");
                $("#PostMortem").addClass("active");
                $("#ReleaseBody").removeClass("active");
                
            $("#tabRegisterForensicSample").removeClass("active");
            $("#tabRequestForensicSample").removeClass("active");
            $("#tabRegisteredSamples").addClass("active");
            $("#tabLabRecords").removeClass("active");
            $("#tabProperty").removeClass("active");
            $("#tabPostMortemFindings").removeClass("active");
                            
                $("#RegisterForensicSample").removeClass("active");
                $("#RequestForensicSample").removeClass("active");
                $("#RegisteredSamples").addClass("active");
                $("#LabRecords").removeClass("active");
                $("#Property").removeClass("active");
                $("#PostMortemFindings").removeClass("active");
    }    
});




