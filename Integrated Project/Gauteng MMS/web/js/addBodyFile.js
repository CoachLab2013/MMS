/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
$(document).ready(function() {

    $("#BodyFileNext").click(function() {
        if ($("#callform").valid()) {
            $("#scene").removeClass("active");
            $("#atScene").removeClass("tab-pane active");
            $("#atMortuary").removeClass("tab-pane");

            $("#atScene").addClass("tab-pane");
            $("#atMortuary").addClass("tab-pane active");
            $("#mortuary").addClass("active");
            
            $alert("HI");
        }

    });

      $("#AddBody").validate({
        rules:{
            open_incident_list:{
                valueNotEquals: "Select"
            }
        },//end of rules

        
        messages:{
            open_incident_list:{
                valueNotEquals:"Please select an incident"
            }
        }//end of messages
        
    });//end of form validation
    
    
    /**
     * Custom rule to ensure that user has selected an item
     * in the drop down list
     */
    $.validator.addMethod("valueNotEquals", function(value, element, arg){
        return arg != value;
    }); 
    

}); 