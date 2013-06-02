/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
$(document).ready(function() {
    $("#AddBody").validate({
        rules:{
            open_incident_list:{
                valueNotEquals: "Select"
            }
        },
        messages:{
            open_incident_list:{
                valueNotEquals: "Please select an incident"
            }
        }
    });
    
    $("#AddBody").submit(function(){
        return false; 
    });
    
    $("#continue_new_body_file").click(function(){
        if($("#AddBody").valid()){
            $("#recieve_tabs").show();
            $("#AddBody").submit();
            $("#at_scene_deathregister").val($("#deathRegister").attr("value"));
            $("#at_scene_lognmber").val($("#open_incident_list option:selected").text());
            $("#at_mort_deathregister").val($("#deathRegister").attr("value"));
            $("#at_mort_lognmber").val($("#open_incident_list option:selected").text());
        }
    });
    
    $.validator.addMethod("valueNotEquals", function(value, element, arg){
        return arg != value;
    });
    
    $("#saps_property_add").click(function(){
        displayResult('SAPSpropertyTable', 'SAPSpropertyDescr', 'SAPSpropertyName', 'SAPSpropertySurname');
    });
    
    $("#saps_property_delete").click(function(){
        deleteRow('SAPSpropertyTable','saps_tr');
    });
    
    $("#at_scene_fps_add").click(function(){
        displayResult2('atSceneFPSpropertyTable', 'atSceneFPSpropertyDescr', 'atSceneFPSpersal','fps_property_counter');
    });
    
    $("#at_scene_fps_delete").click(function(){
        deleteRow('atSceneFPSpropertyTable','fps_tr');
    });
    
    $("#at_mort_fps_add").click(function(){
        displayResult2('atMortFPSpropertyTable', 'atMortFPSpropertyDescr', 'atMortFPSpropertyPersal', 'fps_property_counter_mort');
    })
    
    $("#at_mort_fps_delete").click(function(){
        deleteRow('atMortFPSpropertyTable','fps_tr');
    });
    
    
    function displayResult(table, des, name, surname)
    {
        var table = $("#"+table).children();
        var row = parseInt($("#saps_property_counter").attr("value"),10) + 1;
        $("#saps_property_counter").attr("value", row.toString());
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