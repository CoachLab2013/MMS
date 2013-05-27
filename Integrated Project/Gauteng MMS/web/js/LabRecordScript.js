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
    $("#Labform").validate({
        rules:{
             year: {
                valueNotEquals: "Year",
                validdate: true
            }, //end rule for year

            month: {
                valueNotEquals: "Month",
                validdate: true
            }, //end rule for month

            day: {
                valueNotEquals: "Day",
                validdate: true
            }, //end rule for day

            seal: {
                valueNotEquals: "Select"
            }, //end rule of institution


        }, //end rules


        messages: {
            year: {
                valueNotEquals: "Invalid Year.",
                validdate: "Invalid date."
            }, //end message for year

            month: {
                valueNotEquals: "Invalid month.",
                validdate: "Invalid date."
            }, //end message for month

            day: {
                valueNotEquals: "Invalid day.",
                validdate: "Invalid date."
            }, //end message for day

            seal: {
                valueNotEquals: "Please select a Sample seal number."
            }, //end message for type of property


        }//end of messages

    });//end of form validation

    /**
     * Custom rule to ensure that user has selected an item
     * in the drop down list
     */
    $.validator.addMethod("valueNotEquals", function(value, element, arg) {
        return arg != value;
    }, "Value must not equal arg.");

    /**
     * Custom rule to check valid date
     */
    $.validator.addMethod("validdate", function(value) {
        var year = $("#year").val();
        var month = $("#month").val();
        var day = $("#day").val();
        if ((month == "April") || (month == "June") || (month == "September") || (month == "November")) {
            if (day > 30) {
                return !value;
            }
            return value;
        }
        else if (month == "February") {
            if ((year % 4) == 0) {
                if (day > 29) {
                    return !value;
                }
                else {
                    return value;
                }
            }
            else if (day > 28) {
                return !value;
            }
            return value;
        }
        return value;
    }, "must be a valid date");

    if($("#_registerForensicSample").val() === "true") {

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
            $("#tabLabRecords").addClass("active");
            $("#tabProperty").removeClass("active");
            $("#tabPostMortemFindings").removeClass("active");
                            
                $("#RegisterForensicSample").removeClass("active");
                $("#RequestForensicSample").removeClass("active");
                $("#RegisteredSamples").removeClass("active");
                $("#LabRecords").addClass("active");
                $("#Property").removeClass("active");
                $("#PostMortemFindings").removeClass("active");
    }
    
});