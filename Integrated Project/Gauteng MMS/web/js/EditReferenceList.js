/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */


function editReferenceList(referenceList, currentData)
{
    if (document.getElementById(currentData).value.toString().trim() == "") {

        alert("Please select an item you want to edit")

    } else {
        var answer = prompt("Edit " + referenceList, document.getElementById(currentData).value);
        if (answer == null) {
            //if user clicks cancel


        } else {
            //if user clicks OK
            $("#item").val(answer);
            $("#Olditem").val(document.getElementById(currentData).value);
            $("#table").val(referenceList);
            document.formname.submit();

        }
    }
}
function deleteReferenceList(referenceList, currentData)
{
    if (document.getElementById(currentData).value.toString().trim() == "") {

        alert("Please select an item you want to delete")

    } else {
        var answer = confirm("Are you are sure you want to delete '"+ document.getElementById(currentData).value+"' ");
        if (answer == false) {
            //if user clicks cancel
          

        } else {
            //if user clicks OK

            //$("#item").val(answer);
            $("#item1").val(document.getElementById(currentData).value);
            $("#table1").val(referenceList);
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