/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

//edits the the selected reference list that is in CurrentData list int he referenceListTable table
function editReferenceList(referenceListTable, currentData)
{
   //makes sure there is a selected item in the currentData list
    if (document.getElementById(currentData).value.toString().trim() == "") {

        alert("Please select an item you want to edit")

    } else {
        //diplay pop up box to edit and the answer is in the answer variable
        var answer = prompt("Edit " + referenceListTable, document.getElementById(currentData).value).trim();
        if (answer == null) {
            //if user clicks cancel


        } else if (answer == "") {
           //if user cleared the item being edited and clicks okay
            alert("You cannot submit an empty field")
        } else {
            //if user clicks OK

            //set textboxes in the form formname 
            $("#item").val(answer);
            $("#Olditem").val(document.getElementById(currentData).value);
            $("#table").val(referenceListTable);
            document.formname.submit();

        }
    }
}

//edits the the selected reference list that is in CurrentData list int he referenceListTable table
function editOrganisation(referenceListTable, currentData)
{
   //makes sure there is a selected item in the currentData list
    if (document.getElementById(currentData).value.toString().trim() == "") {

        alert("Please select an item you want to edit")

    } else {
        //diplay pop up box to edit and the answer is in the answer variable
        var answer = prompt("Edit " + referenceListTable, document.getElementById(currentData).value).trim();
        if (answer == null) {
            //if user clicks cancel


        } else if (answer == "") {
           //if user cleared the item being edited and clicks okay
            alert("You cannot submit an empty field")
        } else {
            //if user clicks OK

            //set textboxes in the form formname 
            $("#item").val(answer);
            $("#Olditem").val(document.getElementById(currentData).value);
            $("#table").val(referenceListTable);
            document.formname.submit();

        }
    }
}
//delete selected reference list 
function deleteReferenceList(referenceListTable, currentData)
{
  
    if (document.getElementById(currentData).value.toString().trim() == "") {

        alert("Please select an item you want to delete")

    } else {
        var answer = confirm("Are you are sure you want to delete '" + document.getElementById(currentData).value + "' ");
        if (answer == false) {
            //if user clicks cancel


        } else {
            //if user clicks OK

            //$("#item").val(answer);
            $("#item1").val(document.getElementById(currentData).value);
            $("#table1").val(referenceListTable);
            document.formdelete.submit();

        }
    }
}
function editReferenceListReg(referenceListTable, currentData, province)
{

    if (document.getElementById(currentData).value.toString().trim() == "") {

        alert("Please select an item you want to edit")

    } else {
        var answer = prompt("Edit " + referenceListTable + " in " + document.getElementById(province).value.trim(), document.getElementById(currentData).value).trim();
        if (answer == null) {
            //if user clicks cancel


        } else if (answer == "") {

            alert("You cannot submit an empty field")
        } else {
            //if user clicks OK
            
            $("#item").val(answer);
            $("#Olditem").val(document.getElementById(currentData).value);
            $("#table").val(referenceListTable);
            $("#editProv").val(document.getElementById(province).value);

            document.formname.submit();

        }
    }
}
function deleteReferenceListReg(referenceListTable, currentData, province)
{

    if (document.getElementById(currentData).value.toString().trim() == "") {

        alert("Please select an item you want to delete")

    } else {
        var answer = confirm("Are you are sure you want to delete '" + document.getElementById(currentData).value + "' that is in " + document.getElementById(province).value);
        if (answer == false) {
            //if user clicks cancel


        } else {
            //if user clicks OK

            //$("#item").val(answer);
            $("#item1").val(document.getElementById(currentData).value);
            $("#table1").val(referenceListTable);
            $("#editProv1").val(document.getElementById(province).value);
            document.formdelete.submit();

        }
    }
}
 
$(document).ready(function() {

  $("#AddOrg tr").click(function(){
         alert( $(this).attr("id")) 
        
        $(".selectedtablerow").removeClass("selectedtablerow");
        $(this).addClass("selectedtablerow");
        
        
    });
    
     $("#AddBS tr").click(function(){
         alert( $(this).attr("id")) 
        
        $(".selectedtablerow").removeClass("selectedtablerow");
        $(this).addClass("selectedtablerow");
        
        
    });
    
    

    
}); // end document.ready*/