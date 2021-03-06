
/**
 * validation for the dispatch vehicle tab
 */

/**
 * Need to begin with $(document).ready(function)
 * This ensures that the document if fully loaded before the script is executed
 */

$(document).ready(function(){
    /**
     * validation for the login form
     */
    $("#vehicleform").validate({
        rules:{
            vehicle:{
                valueNotEquals: "Select"
            }
        },//end of rules

        messages:{
           vehicle:{
               valueNotEquals: "Please select a vehicle."
           }
        }//end of messages
        
        
    });//end of form validation
    
    /**
     * Custom rule to ensure that user has selected an item
     * in the drop down list
     */
    $.validator.addMethod("valueNotEquals", function(value, element, arg){
        return arg !== value;
    }, "Value must not equal arg.");
    
    $("#vehiclecancel").click(function(){
        $("label.error").hide();
        $("#vehicleform").hide();
        goHome();
    });
    
    $("#yesdispatch").click(function(){
        $("#vehicleform").show();
        $("#success").hide();
        $("#dispatchform").hide();
        return false;
    });
    
    $("#nodispatch").click(function(){
        $("#success").hide();
        $("#dispatchform").hide();
        goHome();
        
    });
    
    $("#dispatch").click(function(){
        if($("#vehicleform").valid()){
           $("#vehicleform").submit(); 
        }
    });
    
    function goHome(){
       
       
       //reset focus on incident details tab under Log Incident Tab
       $("#DispatchVehicleTab").removeClass("active");
       $("#IncidentDetailsTab").addClass("active");
       $("#DispatchVehicle").removeClass("tab-pane active");
       $("#DispatchVehicle").addClass("tab-pane");
       $("#IncidentDetails").removeClass("tab-pane");
       $("#IncidentDetails").addClass("tab-pane active");
       
       //set focus on Open Incidents tab 
       $("#LogIncidentTab").removeClass("active");
       $("#OpenIncidentsTab").addClass("active");
       $("#LogIncident").removeClass("tab-pane active");
       $("#LogIncident").addClass("tab-pane");
       $("#OpenIncidents").removeClass("tab-pane");
       $("#OpenIncidents").addClass("tab-pane active");
    }
    
    if($("#success").attr("info")==='success'){
        $("#OpenIncidentsTab").removeClass("active");
       $("#LogIncidentTab").addClass("active");
       $("#OpenIncidents").removeClass("tab-pane active");
       $("#OpenIncidents").addClass("tab-pane");
       $("#LogIncident").removeClass("tab-pane");
       $("#LogIncident").addClass("tab-pane active");
       
       //set focus on Dispatch Vehicle tab
       $("#IncidentDetailsTab").removeClass("active");
       $("#DispatchVehicleTab").addClass("active");
       $("#IncidentDetails").removeClass("tab-pane active");
       $("#IncidentDetails").addClass("tab-pane");
       $("#DispatchVehicle").removeClass("tab-pane");
       $("#DispatchVehicle").addClass("tab-pane active");
       $("#dispatchform").show();
    }
    
});


