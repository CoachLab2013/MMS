/**
 * Need to begin with $(document).ready(function)
 * This ensures that the document if fully loaded before the script is executed
 */

$(document).ready(function(){
    $("#opentable").click();
    
    $("#close").on("click", function(){
        if($("#selectedincident").val()==""){
            alert("Please select an incident.");
        }
        else{
            $("#closeincident").show();
            $("#closereason").focus();
        }
    });
 
    $("#opentable tr").click(function(){
        $(".selectedtablerow").addClass("tablerow");
        $(".selectedtablerow").removeClass("selectedtablerow");
        $(this).removeClass("tablerow");
        $(this).addClass("selectedtablerow");
       $("#selectedincident").val($(this).attr("lognumber"));
       $("#selected_edit_incident").val($(this).attr("lognumber"));
    });
    
    $("#cancelcloseincident").on("click",function(){
        $("#closeincident").hide();
        $(".selectedtablerow").addClass("tablerow");
        $(".selectedtablerow").removeClass("selectedtablerow");
        $("label.error").hide();
    });
    
    $("#closeincident").validate({
        rules:{
            closereason:{
              required: true
          }//end rules for condition
          
        },//end of rules
        
        messages:{
            closereason:{
              required: "Please give a reason for closing the incident."
          }
            
        }//end of messages
    });
    
    $("#editincidentbutton").on("click",function(){
        if($("#selectedincident").val()==""){
            alert("Please select an incident.");
        }
        else{
            $("#cancelcloseincident").click();
            $("#editincidentform").submit();
           /* //set focus on Open Incidents tab 
            $("#OpenIncidentsTab").removeClass("active");
            $("#EditIncidentTab").addClass("active");
            
            $("#OpenIncidents").removeClass("tab-pane active");
            $("#OpenIncidents").addClass("tab-pane");
            $("#EditIncident").removeClass("tab-pane");
            $("#EditIncident").addClass("tab-pane active");*/
        }
    });
    

});


