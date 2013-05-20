/**
 * Need to begin with $(document).ready(function)
 * This ensures that the document if fully loaded before the script is executed
 */

$(document).ready(function(){
    $("#editincidentbutton").on("click",function(){
        if($("#selectedincident").val()==""){
            alert("Please select an incident.");
        }
        else{
            $("#cancelcloseincident").click();
            $("#editincidentform").submit();
           //set focus on Open Incidents tab 
            $("#OpenIncidentsTab").removeClass("active");
            $("#EditIncidentTab").addClass("active");
            
            $("#OpenIncidents").removeClass("tab-pane active");
            $("#OpenIncidents").addClass("tab-pane");
            $("#EditIncident").removeClass("tab-pane");
            $("#EditIncident").addClass("tab-pane active");
        }
    });
    
   if($("#go_to_editincident").val()=="true"){
         //set focus on Open Incidents tab 
            $("#OpenIncidentsTab").removeClass("active");
            $("#EditIncidentTab").addClass("active");
            
            $("#OpenIncidents").removeClass("tab-pane active");
            $("#OpenIncidents").addClass("tab-pane");
            $("#EditIncident").removeClass("tab-pane");
            $("#EditIncident").addClass("tab-pane active");
    }
    

});


