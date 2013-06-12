/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
function SelectProvince()
{
    //alert(document.getElementById('ICD10List').value.toString())
    //$("#ICD10table").val(document.getElementById('ICD10List').value.trim());
    //$("#txticd10Table").val(document.getElementById('ICD10List').value.trim());
    // alert(document.getElementById('ICD10List').value.toString())
    // document.LoadICD10Form.submit();


    var select = document.getElementById("RegionList");
    var pro = $("#ProvRegionList :selected").text()
    
    // var list =           //document.DBreg.referenceListReg($("#ProvRegionList :selected").text());
    //alert("list.get(0)")
    $.get("FilterRegionServlet", {province: pro}, function(data) {

        data = data.toString().trim();
        var dataValues = data.split("%");
        while (select.options.length > 0) {
            select.remove(0);
        }
        
        for (var i = 0; i < dataValues.length; i++)
        {
            var option = document.createElement('option');
            option.text = option.value = dataValues[i].toString().trim();
            select.add(option, i);

        }


    });



}

$(document).ready(function() {



})