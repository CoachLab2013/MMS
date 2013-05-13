/**
 * Need to begin with $(document).ready(function)
 * This ensures that the document if fully loaded before the script is executed
 */

$(document).ready(function(){
    $("#close").on("click", function(){
        if($("#selectedincident").val()==""){
            alert("Please select an incident.");
        }
        else{
            $("#closeincident").show();
        }
        
        
    });
    
    $("#opentable tr").click(function(){
        $(".selectedtablerow").addClass("tablerow");
        $(".selectedtablerow").removeClass("selectedtablerow");
        $(this).removeClass("tablerow");
        $(this).addClass("selectedtablerow");
       $("#selectedincident").val($(this).attr("lognumber")); 
    });
});


