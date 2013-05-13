
/**
 * this script determines which element to set foucs on after an event occurred
 */

/**
 * Need to begin with $(document).ready(function)
 * This ensures that the document if fully loaded before the script is executed
 */

$(document).ready(function(){
   //if($("#incidentlogged").val()=="true"){
       
       //set focus on LogIncidentTab
       $("#OpenIncidentsTab").removeClass("active");
       $("#LogIncidentTab").addClass("active")
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
   //}
});