/**
 * Need to begin with $(document).ready(function)
 * This ensures that the document if fully loaded before the script is executed
 */

$(document).ready(function() {
    /**
     * validation for the login form
     */
    $("#Findingsform").validate({
        rules: {
            findingsdeath: {
                required: true
            }, //end rules for cause of death 

            findingsnumber: {
                required: true
            }, //end rules for DHA 1663 number

            findingsmortem: {
                required: true
            }//end rule of institution

        }, //end of rules

        messages: {
            findingsdeath: {
                required: "Please enter Cause of death."
            }, //end messages for cause of death

            findingsnumber: {
                required: "Please enter DHA 1663 number."
            }, //end message for DHA 1663 number

            findingsmortem: {
                required: "Please select Chief post Mortem Finding."
            }//end rule for type of analysis
        }//end of messages

    });//end of form validation
    
    //Trigger on list change. Reset children lists and show filtered values .       
    $('#ICDlevel1').change(function() {
        
        $.get("LoadICD10List", {type: "loadICD2", data: $(this).val().split(" ")[0]}, function (data) {
            
            var opt = "<option>Select Diagnosis 1</option>";
            dataValues = data.split("~");

                for (var i = 0; i < dataValues.length - 1; i++)
                {
                    opt += "<option>" + dataValues[i] + "</option>";
                }
                $('#ICDlevel2').html(opt);
        });
        
        $('#ICDlevel3').html("<option>Select Diagnosis 2</option>");
        $('#ICDlevel4').html("<option>Select Diagnosis 3</option>");        
    });

    $('#ICDlevel2').change(function() {
        
        $.get("LoadICD10List", {type: "loadICD3", data: $(this).val().substring(0, 3)}, function (data) {
            
            var opt = "<option>Select Diagnosis 2</option>";
            dataValues = data.split("~");

                for (var i = 0; i < dataValues.length - 1; i++)
                {
                    opt += "<option>" + dataValues[i] + "</option>";
                }
                $('#ICDlevel3').html(opt);
        });
                
        $('#ICDlevel4').html("<option>Select Diagnosis 3</option>");        
    });

    $('#ICDlevel3').change(function() {
        
        $.get("LoadICD10List", {type: "loadICD4", data: $(this).val().substring(0, 5)}, function (data) {
            
            var opt = "<option>Select Diagnosis 3</option>";
            dataValues = data.split("~");

                for (var i = 0; i < dataValues.length - 1; i++)
                {
                    opt += "<option>" + dataValues[i] + "</option>";
                }
                $('#ICDlevel4').html(opt);
        });        
    });

    if ($("#_registerForensicSample").val() === "true") {

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
        $("#tabRegisteredSamples").removeClass("active");
        $("#tabLabRecords").removeClass("active");
        $("#tabProperty").removeClass("active");
        $("#tabPostMortemFindings").addClass("active");

        $("#RegisterForensicSample").removeClass("active");
        $("#RequestForensicSample").removeClass("active");
        $("#RegisteredSamples").removeClass("active");
        $("#LabRecords").removeClass("active");
        $("#Property").removeClass("active");
        $("#PostMortemFindings").addClass("active");
    }
});
//end $(document).ready(function())