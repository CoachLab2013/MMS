/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
function SelectDropICD10()
{
     //alert(document.getElementById('ICD10List').value.toString())
      $("#ICD10table").val(document.getElementById('ICD10List').value.trim());
      $("#txticd10Table").val(document.getElementById('ICD10List').value.trim());
      alert(document.getElementById('ICD10List').value.toString())
        document.LoadICD10Form.submit();
}

$(document).ready(function() {


 
})