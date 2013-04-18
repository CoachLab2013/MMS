//
//	jQuery Validate example script
//
//	Prepared by David Cochran
//
//	 
//

$(document).ready(function(){

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
                
              
	      firstName: {
	        minlength: 2,
	        required: true,
               textOnly:true
	      },
	      email: {
	        required: true,
	        email: true
                
                 
	      },
	      surname: {
	      	minlength: 2,
	        required: true,
                textOnly:true
	      },
	      personnelNumber: {
	        minlength: 2,
	        required: true
	      },
              level:{
                  
                  required: true
                      },
              Active:{
                  
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