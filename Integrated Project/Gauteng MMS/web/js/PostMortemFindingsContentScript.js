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
    
    //Hide all list items on first load.
    $('#ICDlevel2 > option').each(function() {
        if ($(this).val() !== "Select Diagnosis 2")
        {
            $(this).attr('hidden', 'hidden');
            $(this).attr('disabled', 'disabled');
        } else {
            $(this).attr('selected', 'selected');
        }
    });

    $('#ICDlevel3 > option').each(function() {
        if ($(this).val() !== "Select Diagnosis 3")
        {
            $(this).attr('hidden', 'hidden');
            $(this).attr('disabled', 'disabled');
        } else {
            $(this).attr('selected', 'selected');
        }
    });

    $('#ICDlevel4 > option').each(function() {
        if ($(this).val() !== "Select Diagnosis 4")
        {
            $(this).attr('hidden', 'hidden');
            $(this).attr('disabled', 'disabled');
        } else {
            $(this).attr('selected', 'selected');
        }
    });
    
    //Trigger on list change. Reset children lists and show filtered values .       
    $('#ICDlevel1').change(function() {
        var value = $(this).val().split(" ")[0];
        $('#ICDlevel2').prop("selectedIndex",0);
        $('#ICDlevel3').prop("selectedIndex",0);
        $('#ICDlevel4').prop("selectedIndex",0);

        $('#ICDlevel2 > option').each(function() {

            var cmp = $(this).val().substring($(this).val().lastIndexOf('(') + 1, $(this).val().lastIndexOf(')'));

            if (cmp !== value && $(this).val() !== "Select Diagnosis 1")
            {
                $(this).attr('hidden', 'hidden');
                $(this).attr('disabled', 'disabled');
            } else {
                $(this).removeAttr('hidden');
                $(this).removeAttr('disabled');                
            }
        });
    });

    $('#ICDlevel2').change(function() {
        var value = $(this).val().substring(0, 3);
        $('#ICDlevel3').prop("selectedIndex",0);
        $('#ICDlevel4').prop("selectedIndex",0);

        $('#ICDlevel3 > option').each(function() {

            if ($(this).val().substring(0, 3) !== value && $(this).val() !== "Select Diagnosis 2")
            {
                $(this).attr('hidden', 'hidden');
                $(this).attr('disabled', 'disabled');
            } else {
                $(this).removeAttr('hidden');
                $(this).removeAttr('disabled');                
            }
        });
    });

    $('#ICDlevel3').change(function() {
        var value = $(this).val().substring(0, 5);
        $('#ICDlevel4').prop("selectedIndex",0);

        $('#ICDlevel4 > option').each(function() {

            if ($(this).val().substring(0, 5) !== value && $(this).val() !== "Select Diagnosis 3")
            {
                $(this).attr('hidden', 'hidden');
                $(this).attr('disabled', 'disabled');
            } else {
                $(this).removeAttr('hidden');
                $(this).removeAttr('disabled');                
            }
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