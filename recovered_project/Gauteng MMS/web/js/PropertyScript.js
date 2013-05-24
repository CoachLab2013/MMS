/**
 * validation for the property
 *  tab
 */

/**
 * Need to begin with $(document).ready(function)
 * This ensures that the document if fully loaded before the script is executed
 */

$(document).ready(function() {
    /**
     * validation for the request form
     */
    $("#propertyform").validate({
        rules: {
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

            TypeProperty: {
                valueNotEquals: "Select"
            }, //end rule of institution

            Seaumber: {
                valueNotEquals: "Select"
            }, //end rule of type of seal number


            descriptions: {
                required: true
            }, //end rules for description

            taken: {
                required: true
            }//end rules for name


        }, //end rules


        messages: {
            year: {
                valueNotEquals: "Invalid date.",
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

            TypeProperty: {
                valueNotEquals: "Please select a Type of Property."
            }, //end message for type of property

            Seaumber: {
                valueNotEquals: "Please select a Seal Number."
            }, //end message for seal number 

            descriptions: {
                required: "Please enter in the Property description."
            }, //end messages for description

            taken: {
                required: "Please enter in the Person the property is taken by."
            }//end message for person taken by

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

});


