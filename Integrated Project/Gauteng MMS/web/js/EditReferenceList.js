/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
function editReferenceList(referenceList, currentData)
        {
        var answer = prompt("Edit " + referenceList, document.getElementById(currentData).value);
                if (answer == null) {
        //if user clicks cancel


        } else {
        //if user clicks OK
          
                var xhr = new XMLHttpRequest();
                xhr.open('POST', 'EditReferenceListServlet', true);
                xhr.send(null);
        }
        }
$(document).ready(function() {



$("#cmdEditInsitution").on("click", function() {


var answer = prompt("What is your age?", "20");
        alert("You are " + answer + " years old.")

});
        }); // end document.ready