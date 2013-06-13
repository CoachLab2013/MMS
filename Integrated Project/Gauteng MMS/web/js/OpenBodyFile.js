/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
$(document).ready(function(){
     $("#openbodytable tr").click(function(){
        $(".selectedtablerow").addClass("tablerow");
        $(".selectedtablerow").removeClass("selectedtablerow");
        $(this).removeClass("tablerow");
        $(this).addClass("selectedtablerow");
        $("#selectedbody").val($(this).attr("deathregisternumber"));
    });
    
    if($("#go_to_bodyidDetails").val()=="true")
    {
        //lose focus from the incidents side
        /*$("#OpenIncidents").removeClass("tab-pane active");
        $("#OpenIncidents").addClass("tab-pane");
        $("#OpenIncidentsTab").removeClass("active");*/
        $("#Incident").removeClass("tab-pane active");
        $("#Incident").addClass("tab-pane");
        $("#IncidentTab").removeClass("active");
        
        //set focus to the body file side
        $("#BodyFileTab").addClass("active");
        $("#BodyFile").removeClass("tab-pane");
        $("#BodyFile").addClass("tab-pane active");
        $("#OpenBodyFiles").removeClass("tab-pane active");
        $("#OpenBodyFiles").addClass("tab-pane");
        $("#tabOpenBodyFiles").removeClass("active");
        $("#tabEditBodyFiles").addClass("active");
        $("#EditBodyFiles").removeClass("tab-pane");
        $("#EditBodyFiles").addClass("tab-pane active");
    }
});

