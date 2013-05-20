/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
$(document).ready(function() {

    $("#BodyFileNext").on("click", function() {
        if ($("#callform").valid()) {
            $("#scene").removeClass("active");
            $("#atScene").removeClass("tab-pane active");
            $("#atMortuary").removeClass("tab-pane");

            $("#atScene").addClass("tab-pane");
            $("#atMortuary").addClass("tab-pane active");
            $("#mortuary").addClass("active");
            
            $alert("HI");
        }

    });

    $("#callform").submit(function() {
        if ($("#callform").valid()) {
            addinfo("fpsnumber", $("#fpsnumber"));
            addinfo("SAPSnumber", $("#SAPSnumber"));
            addinfo("detailyear", $("#detailyear"));
            var form = document.forms["callform"];
            var el = document.createElement("input");
            el.type = "hidden";
            el.name = "detailmonth";
            el.value = $("option:selected", "#detailmonth").attr("num");
            form.appendChild(el);
            addinfo("detailday", $("#detailday"));
            addinfo("detailhour", $("#detailhour"));
            addinfo("detailminute", $("#detailminute"));
            addinfo("numberofbodies", $("#numberofbodies"));
            addinfo("placefound", $("#placefound"));
            addinfo("circumstancesofdeath", $("#circumstancesofdeath"));
            addinfo("specialcircumstance", $("#specialcircumstance"));
            $("#callform").submit();
        }
        return false;
    });

    function addinfo(name, element)
    {
        var form = document.forms["callform"];
        // form.action = 'put your url here';
        var el = document.createElement("input");
        el.type = "hidden";
        el.name = name;
        el.value = element.val();
        form.appendChild(el);
    }

}); 