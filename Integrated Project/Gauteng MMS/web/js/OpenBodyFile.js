
$(document).ready(function(){
    if($("#clbodyfile").val() == "true"){
        $("#Incident").removeClass("tab-pane active");
        $("#Incident").addClass("tab-pane");
        $("#IncidentTab").removeClass("active");
        
        //set focus to the body file side
        $("#BodyFileTab").addClass("active");
        $("#BodyFile").removeClass("tab-pane");
        $("#BodyFile").addClass("tab-pane active");       
        $("#OpenBodyFiles").removeClass("tab-pane");
        $("#OpenBodyFiles").addClass("tab-pane active");       
    };
    
    
     $("#openbodytable tr").click(function(){
        $(".selectedtablerow").addClass("tablerow");
        $(".selectedtablerow").removeClass("selectedtablerow");
        $(this).removeClass("tablerow");
        $(this).addClass("selectedtablerow");
        $("#selectedbody").val($(this).attr("deathregisternumber"));
    });
    
    if($("#go_to_bodyidDetails").val()=="true")
    {
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
    };
    
    $("#openbodytable th").click(function(){
        $("#selectedbody").val("value","");
    });
    
    $("#editbodyfilebutton").click(function(){
       if($("#selectedbody").val() == ""){
           $("#no_selected_bodyfile").show();
       }
       else{
           $("#no_selected_bodyfile").hide();
           $("#editbodyfileform").submit();
       }
    });
    
    $("#closebody").click(function(){
        if($("#selectedbody").val() == ""){
           $("#no_selected_bodyfile").show();
       }
       else{
           $("#selectedbodyfile").val($("#selectedbody").val());
           $("#no_selected_bodyfile").hide();
           $("#close_bodyfile").show();
       }
    });
    
    $("#cancelclosebodyfile").click(function(){
        $("#close_bodyfile").hide();
    });
    
    $("#closebodyfile").validate({
       rules:{
           closebodyreason: {
               required: true
           }
       },
       messages:{
           closebodyreason: {
               required: "Please give a reason for cloasing the body file"
           }
       }
    });
});

