/**
 * Need to begin with $(document).ready(function)
 * This ensures that the document if fully loaded before the script is executed
 */

$(document).ready(function() {
    
    $('#body').change(function() {
        if ($('#body').val() !== "Select Body File 1") {
            var deathRegisterNumber = $(this).val().split(" ")[0];
            $('#tr1').remove();
            
            $.get("LinkBodyContent", {type: "load", data: deathRegisterNumber}, function(data) {
                
                var tr = "<tr id='tr1' class='tablerow'>";
                var dataValues = data.split(" ");

                for (var i = 0; i < dataValues.length; i++)
                {
                    tr += "<td class='tablecell'>" + dataValues[i] + "</td>";
                }

                tr += "</tr>";

                $('#bodyLink1').append(tr);
            });
            
        } else {
            $('#tr1').remove();
        }
    });
    
    $('#Body').change(function() {
        if ($('#Body').val() !== "Select Body File 2") {
            var deathRegisterNumber = $(this).val().split(" ")[0];
            $('#tr2').remove();

            $.get("LinkBodyContent", {type: "load", data: deathRegisterNumber}, function(data) {

                var tr = "<tr id='tr2' class='tablerow'>";
                var dataValues = data.split(" ");

                for (var i = 0; i < dataValues.length; i++)
                {
                    tr += "<td class='tablecell'>" + dataValues[i] + "</td>";
                }

                tr += "</tr>";

                $('#bodyLink2').append(tr);
            });
        } else {
            $('#tr2').remove();
        }
    });    
    
    $('#linkButton').click(function() {
        
        if (($('#body').val() !== "Select Body File 1" && $('#Body').val() !== "Select Body File 2") && $('#body').val() !== $('#Body').val()) {
            
            $.post("LinkBodyContent", {type: "save", data1: $('#body').val().split(" ")[0], data2: $('#Body').val().split(" ")[0]});

            $('#body').prop("selectedIndex", 0);
            $('#Body').prop("selectedIndex", 0);

            $('#tr1').remove();
            $('#tr2').remove();            
            $('.alert').css('display','none');
        } else {
            $('.alert').css('display','inherit');
        }
    });
    
});


