/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
$(document).ready(function() {
    $("#EditBody").validate({
        rules:{
            edit_open_incident_list:{
                valueNotEquals: "Select"
            }
        },
        messages:{
            edit_open_incident_list:{
                valueNotEquals: "Please select an incident"
            }
        }
    });
    
    $("#EditBody").submit(function(){
        return false; 
    });
    
    $("#edit_continue_new_body_file").click(function(){
         $("#edit_recieve_tabs").show();
        if($("#EditBody").valid()){
            $("#edit_at_scene_deathregister").val($("#edit_deathRegister").attr("value"));
            $("#edit_at_scene_lognmber").val($("#edit_open_incident_list option:selected").text());
            $("#edit_at_mort_deathregister").val($("#edit_deathRegister").attr("value"));
            $("#edit_at_mort_lognmber").val($("#edit_open_incident_list option:selected").text());
        }
    });
    
    $("#edit_open_incident_list").click(function(){
        $("#edit_at_scene_lognmber").val($("#edit_open_incident_list option:selected").text());
        $("#edit_at_mort_lognmber").val($("#edit_open_incident_list option:selected").text());
    });
        
    
    
    $.validator.addMethod("valueNotEquals", function(value, element, arg){
        return arg != value;
    });
    
    $("#edit_SAPSpropertyDescr").blur(function(){
        if($("#edit_SAPSpropertyDescr").val().length == 0){
            $("#edit_no_saps_description").show();            
        }
        else{
            $("#edit_no_saps_description").hide();           
        }
    });
    
    $("#edit_SAPSpropertyName").blur(function(){
        if($("#edit_SAPSpropertyName").val().length == 0){
            $("#edit_no_saps_name").show();
        }
        else{
            $("#edit_no_saps_name").hide();
        }
    });
    
    
    $("#edit_SAPSpropertySurname").blur(function(){
        if($("#edit_SAPSpropertySurname").val().length == 0){
            $("#edit_no_saps_surname").show();            
        }
        else{
            $("#edit_no_saps_surname").hide();            
        }
    });
    
    
    $("#edit_saps_property_add").click(function(){ 
        var error1 = false;
        var error2 = false;
        var error3 = false;
        if($("#edit_SAPSpropertyDescr").val().length == 0){
            $("#edit_no_saps_description").show();
            error1 = true;
        }
        else{
            $("#edit_no_saps_description").hide();
            error1 = false;
        }
        
        if($("#edit_SAPSpropertyName").val().length == 0){
            $("#edit_no_saps_name").show();
            error2 = true;
        }
        else{
            $("#edit_no_saps_name").hide();
            error2 = false;
        }
        
        if($("#edit_SAPSpropertySurname").val().length == 0){
            $("#edit_no_saps_surname").show();
            error3 = true;
        }
        else{
            $("#edit_no_saps_surname").hide();
            error3 = false;
        }
        if(!(error1) & !(error2) & !(error3)){
            displayResult('edit_SAPSpropertyTable', 'edit_SAPSpropertyDescr', 'edit_SAPSpropertyName', 'edit_SAPSpropertySurname');
            $("#edit_SAPSpropertyDescr").val("");
            $("#edit_SAPSpropertyName").val("");
            $("#edit_SAPSpropertySurname").val("");
        }
    });
    
    
    
    $("#edit_saps_property_delete").click(function(){
        deleteRow('edit_SAPSpropertyTable','saps_tr');
    });
    
    $("#edit_atSceneFPSpropertyDescr").blur(function(){
        if($("#edit_atSceneFPSpropertyDescr").val().length == 0){
            $("#edit_no_fps_description").show();            
        }
        else{
            $("#edit_no_fps_description").hide();            
        }
    });
    
    
    $("#edit_atSceneFPSpersal").blur(function(){
        if($("#edit_atSceneFPSpersal").val() == "Select"){
            $("#edit_no_fps_persal").show();
        }
        else{
            $("#edit_no_fps_persal").hide();
        }
    });
    
    $("#edit_at_scene_fps_add").click(function(){
        var error1 = false;
        var error2 = false;
        if($("#edit_atSceneFPSpropertyDescr").val().length == 0){
            $("#edit_no_fps_description").show();
            error1 = true;
        }
        else{
            $("#edit_no_fps_description").hide();
            error1 = false;
        }
        if($("#edit_atSceneFPSpersal").val() == "Select"){
            $("#edit_no_fps_persal").show();
            error2 = true;
        }
        else{
            $("#edit_no_fps_persal").hide();
            error2 = false;
        }
        if(!(error1) & !(error2)){
            displayResult2('edit_atSceneFPSpropertyTable', 'edit_atSceneFPSpropertyDescr', 'edit_atSceneFPSpersal','edit_fps_property_counter');
            $("#edit_atSceneFPSpropertyDescr").val("");
            $("#edit_atSceneFPSpersal option").filter(function() { 
                return ($(this).text() == 'Select');
            }).prop('selected', true);
        }
    });
    
    $("#edit_at_scene_fps_delete").click(function(){
        deleteRow('edit_atSceneFPSpropertyTable','fps_tr');
    });
    
    $("#edit_atMortFPSpropertyPersal").blur(function(){
        if($("#edit_atMortFPSpropertyPersal option").filter(':selected').text() == "Select"){
            $("#edit_no_fps_persal_mort").show();
        }
        else{
             $("#edit_no_fps_persal_mort").hide();
        }
    });
    
    $("#edit_atMortFPSpropertyDescr").blur(function(){
        if($("#edit_atMortFPSpropertyDescr").val().length == 0){
            $("#edit_no_fps_description_mort").show();           
        }
        else{
            $("#edit_no_fps_description_mort").hide();            
        }
    });
    
    $("#edit_at_mort_fps_add").click(function(){
        var error1 = false;
        var error2 = false;        
        if($("#edit_atMortFPSpropertyDescr").val().length == 0){
            $("#edit_no_fps_description_mort").show();
            error1 = true;
        }
        else{
            $("#edit_no_fps_description_mort").hide();
            error1 =false;
        }
        
        if($("#edit_atMortFPSpropertyPersal option").filter(':selected').text() == "Select"){
            $("#edit_no_fps_persal_mort").show();
            error2 = true;
        }
        else{
             $("#edit_no_fps_persal_mort").hide();
            error2 = false;
        }
        if(!(error1) & !(error2)){            
            displayResult2('edit_atMortFPSpropertyTable', 'edit_atMortFPSpropertyDescr', 'edit_atMortFPSpropertyPersal', 'edit_fps_property_counter_mort');
            $("#edit_atMortFPSpropertyDescr").val("");
            $("#edit_atMortFPSpropertyPersal option").filter(function() { 
                return ($(this).text() == 'Select');
            }).prop('selected', true);
        }
        
    })
    
    $("#edit_at_mort_fps_delete").click(function(){
        deleteRow('edit_atMortFPSpropertyTable','fps_tr');
    });
    
    
    function displayResult(table, des, name, surname)
    {
        var table = $("#"+table).children();
        var row = parseInt($("#edit_saps_property_counter").attr("value"),10) + 1;
        $("#edit_saps_property_counter").attr("value", row.toString());
        table.append( '<tr tab=saps_tr'+row.toString()+' class=tablerow><td class=tablecell><input type=checkbox name=checkbox[]></td><td class=tablecell>' + $("#"+des).val()+ '</td><td class=tablecell>'+ $("#"+name).val() +'</td><td class=tablecell>'+$("#"+surname).val()+'</td></tr>' );
        table.append( '<tr id=saps_tr'+row.toString()+' class=tablerow style=display:none;><td class=tablecell><input type=checkbox name=checkbox[]/></td><td class=tablecell><input type=text name=saps_prop_des'+row.toString()+' value=' + $("#"+des).val()+ '></td><td class=tablecell><input type=text name=saps_prop_name'+row.toString()+" value="+ $("#"+name).val() +'></td><td class=tablecell><input type=text name=saps_prop_surname'+row.toString()+' value=' + $("#"+surname).val()+ '></td></tr>' );
    /* var table = document.getElementById(table);
        var row = table.insertRow(1);
        
        var cell0 = row.insertCell(0);
        var cell1 = row.insertCell(1);
        var cell2 = row.insertCell(2);
        var cell3 = row.insertCell(3);

        var element1 = document.createElement("input");
        element1.type = "checkbox";
        element1.name = "chkbox[]";
        cell0.appendChild(element1);
        cell1.innerHTML = document.getElementById(des).value;
        cell2.innerHTML = document.getElementById(name).value;
        cell3.innerHTML = document.getElementById(surname).value;*/
    };
         
         
    function displayResult2(table, des, persal, counter)
    {
        var table = $("#"+table).children();
        var row = parseInt($("#"+counter).attr("value"),10) + 1;
        $("#"+counter).attr("value", row.toString());
        table.append( '<tr tab=fps_tr'+row.toString()+' class=tablerow><td class=tablecell><input type=checkbox name=checkbox[]></td><td class=tablecell>' + $("#"+des).val()+ '</td><td class=tablecell>'+ $("#"+persal).val() +'</td></tr>' );
        table.append( '<tr id=fps_tr'+row.toString()+' class=tablerow style=display:none; ><td class=tablecell><input type=checkbox name=checkbox[]/></td><td class=tablecell><input type=text name=fps_prop_des'+row.toString()+' value=' + $("#"+des).val()+ '></td><td class=tablecell><input type=text name=fps_prop_persal'+row.toString()+" value="+ $("#"+persal).val() +'></td></tr>' );
    };     
    
    function deleteRow(tableID, tab) {
        var table = document.getElementById(tableID);
        var rowCount = table.rows.length;
        for (var i = 0; i < rowCount; i++) {
            var row = table.rows[i];
            var chkbox = row.cells[0].childNodes[0];
            if (null !== chkbox && true === chkbox.checked) {
                var id = $(row).attr("tab");                 
                table.deleteRow(i);
                $("#"+id).remove();
                rowCount--;
                i--;
            }                
        }
    };
}); 
