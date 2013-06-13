/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */


function editReferenceList(referenceListTable, currentData)
{
   
    if (document.getElementById(currentData).value.toString().trim() == "") {

        alert("Please select an item you want to edit")

    } else {
        var answer = prompt("Edit " + referenceListTable, document.getElementById(currentData).value).trim();
        if (answer == null) {
            //if user clicks cancel


        } else if (answer == "") {

            alert("You cannot submit an empty field")
        } else {
            //if user clicks OK

            $("#item").val(answer);
            $("#Olditem").val(document.getElementById(currentData).value);
            $("#table").val(referenceListTable);
            document.formname.submit();

        }
    }
}
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



    $("#cmdEditInsitution").on("click", function() {


        var answer = prompt("What is your age?", "20");
        alert("You are " + answer + " years old.")

    });
}); // end document.ready