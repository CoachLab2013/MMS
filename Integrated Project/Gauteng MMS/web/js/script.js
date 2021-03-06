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

 //Specifies the controls being validated in the specified form


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
    
    $('#AddProperty').validate({
        rules: {
            txtProperty: {
                required: true
            }

        }

    });
      $('#AddVehicle').validate({
        rules: {
            txtVehicle: {
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

    $('#AddRegion').validate({
        rules: {
            txtRegion: {
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
    
      $('#AddBodyPart').validate({
        rules: {
            txtBodyPart: {
                required: true
            }

        }

    });
    
     $('#AddSpecialCur').validate({
        rules: {
            txtSpecialCur: {
                required: true
            }

        }

    });


  
     $('#AddExternalCause').validate({
        rules: {
            txtExternalCause: {
                required: true
            }

        }

    });
    
      
     $('#AddSealType').validate({
        rules: {
            txtSealType: {
                required: true
               
            }

        }

    });
    
    
       $('#AddScene').validate({
        rules: {
            txtScene: {
                required: true
               
            }

        }

    });
    
       $('#AddReleaseType').validate({
        rules: {
            txtReleaseType: {
                required: true
               
            }

        }

    });
    
       $('#AddReleaseTo').validate({
        rules: {
            txtReleaseTo: {
                required: true
               
            }

        }

    });
    
      $('#AddOrganisationType').validate({
        rules: {
            txtOrganisationType: {
                required: true
               
            }

        }

    });
    
      $('#AddOrganisation').validate({
        rules: {
            txtOrganisationName: {
                required: true
               
            },
               txtOrganisationContact: {
                required: true,
                minlength: 10,   
                number: true
               
            }
            

        }

    });
    
     $('#AddBodyStorage').validate({
        rules: {
            txtBodyStorageName: {
                required: true
               
            },
               txtBodyStorageSize: {
                required: true,   
                number: true
               
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
                required: true
                 
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