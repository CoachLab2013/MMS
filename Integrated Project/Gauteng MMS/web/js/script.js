//
//	jQuery Validate example script
//
//	Prepared by David Cochran
//
//	 
//

$(document).ready(function() {

    // Validate
    // http://bassistance.de/jquery-plugins/jquery-plugin-validation/
    // http://docs.jquery.com/Plugins/Validation/
    // http://docs.jquery.com/Plugins/Validation/validate#toptions

    //custom validation rule - text only
    //custom validation rule - text only
    $.validator.addMethod("textOnly",
            function(value, element) {
                return /^[a-zA-Z ]+$/g.test(value);
            }, "Alpha Characters Only."

            );



    $('#AddUser').validate({
        rules: {
            firstName : {
                minlength: 2,
                required: true,
                textOnly: true
            },
            email: {
                required: true,
                email: true


            },
            surname: {
                minlength: 2,
                required: true,
                textOnly: true
            },
            personnelNumber: {
                minlength: 8,
                number: true,
                required: true
            },
            level: {
                required: true
            },
            active: {
                required: true
            }


        },
        messages: {
            txtTextOnly: {
                required: "* Required"
            }
        },
        highlight: function(element) {
            $(element).closest('.control-group').removeClass('success').addClass('error');
        },
        success: function(element) {
            element
                    .text('OK!').addClass('valid')
                    .closest('.control-group').removeClass('error').addClass('success');
        }

    });

    $('#AddInsitution').validate({
        rules: {
            txtInsitution: {
                required: true
            }

        }

    });

    $('#AddAnalysis').validate({
        rules: {
            txtAnalysis: {
                required: true
            }

        }

    });

    $('#AddRank').validate({
        rules: {
            txtRank: {
                required: true
            }

        }

    });

    $('#AddGender').validate({
        rules: {
            txtGender: {
                required: true
            }

        }

    });

    $('#AddOccu').validate({
        rules: {
            txtOccu: {
                required: true
            }

        }

    });

    $('#AddRace').validate({
        rules: {
            txtRace: {
                required: true
            }

        }

    });

    $('#AddMarital').validate({
        rules: {
            txtMarital: {
                required: true
            }

        }

    });

    $('#AddProvince').validate({
        rules: {
            txtProvince: {
                required: true
            }

        }

    });

    $('#AddICD10').validate({
        rules: {
            txtICD10: {
                required: true
            }

        }

    });

    $('#AddManner').validate({
        rules: {
            txtManner: {
                required: true
            }

        }

    });
    $('#AddSample').validate({
        rules: {
            txtSample: {
                required: true
            }

        }

    });

    $('#AddStatus').validate({
        rules: {
            txtStatus: {
                required: true
            }

        }

    });
    $('#AddRelationship').validate({
        rules: {
            txtRelationship: {
                required: true
            }

        }

    });

   $('#AddBody').validate({
        rules: {
            
                
            FoundDate: {
                required: true
            },
            
            
            FoundTime: {
                required: true
            },
           
           
            ReceivedSDate: {
                required: true
            },
            
            ReceivedSTime: {
                required: true
            },
            
            ReceivedFDate: {
                required: true
            },
            
            ReceivedFTime: {
                required: true
            },
         
            
            Sname: {
                required: true,
                minlength: 2,
                textOnly: true
            },
            
            Ssurname:{
                required: true,
                minlength: 2,
                textOnly: true
            },
            Scell: {
               minlength: 10,
                number: true,
                required: true
            },
            
            Srank: {
                required: true,
                 
            }
         

        }

    });


    $('#EditUser').validate({
        rules: {
            firstName: {
                minlength: 2,
                required: true,
                textOnly: true
            },
            email: {
                required: true,
                email: true


            },
            surname: {
                minlength: 2,
                required: true,
                textOnly: true
            },
            personnelNumber: {
                minlength: 8,
                number: true,
                required: true
            },
            level: {
                required: true
            },
            active: {
                required: true
            }


        },
        messages: {
            txtTextOnly: {
                required: "* Required"
            }
        },
        highlight: function(element) {
            $(element).closest('.control-group').removeClass('success').addClass('error');
        },
        success: function(element) {
            element
                    .text('OK!').addClass('valid')
                    .closest('.control-group').removeClass('error').addClass('success');
        }

    });

}); // end document.ready