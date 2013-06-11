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
        $("#IncidentTab").removeClass("active");
        $("#BodyFileTab").addClass("active");
        $("#Incident").removeClass("tab-pane active");
        $("#Incident").addClass("tab-pane");
        $("#BodyFile").removeClass("tab-pane");
        $("#BodyFile").addClass("tab-pane active");
        $("#tabOpenBodyFiles").removeClass("active");
        $("#tabEditBodyFiles").addClass("active");
        $("#OpenBodyFiles").removeClass("tab-pane active");
        $("#OpenBodyFiles").addClass("tab-pane");
        $("#EditBodyFiles").removeClass("tab-pane");
        $("#EditBodyFiles").addClass("tab-pane active");
        $("#tabIncidentInformation").removeClass("active");
        $("tabBodyIdentification").addClass("active");
        $("#IncidentInformation").removeClass("tab-pane active");
        $("#IncidentInformation").addClass("tab-pane");
        $("#BodyIdentification").removeClass("tab-pane");
        $("#BodyIdentification").addClass("tab-pane active");
        $("#tabDeceasedDetails").addClass("active");
        $("#KinInformantDetails").removeClass("tab-pane");
        $("#KinInformantDetails").addClass("tab-pane active");
    }
});

