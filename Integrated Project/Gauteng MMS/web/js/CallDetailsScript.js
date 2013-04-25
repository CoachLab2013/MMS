/* 
 * This is all the validation rules for call details
 */

/**
 * Need to begin with $(document).ready(function)
 * This ensures that the document if fully loaded before the script is executed
 */

$(document).ready(function(){
    /**
     * validation for the login form
     */
    $("#callform").validate({
        rules:{
            
          callhour:{
              valueNotEquals: "Hour",
              validcalltime: true
          },//end rule for hour
          
          callminute:{
              valueNotEquals: "Minute",
              validcalltime: true
          },//end rule for minute*/
          
          phonenumber:{
              required: true,
              number: true,
              minlength: 10,
              maxlength: 10
          },//end rules for phonenumber
          
          name:{
              required:true
          },//end rules for name
          
          address:{
              required: true
          },//end rules for address
          
          province:{
              valueNotEquals: "Select"
          },//end rules for province
          
          region:{
              valueNotEquals: "Select"
          },//end rules for region
          
          condition:{
              required: true
          }//end rules for condition
            
        },//end of rules
        groups: {
                calltime: "callhour callminute"
        },
        errorPlacement: function(error, element) {
            if((element.attr("name") == "callhour") || (element.attr("name") == "callminute")){
                error.insertAfter("#callminute");
            }
            else {
                error.insertAfter(element);
            }
        },
        
        messages:{
          
         callhour:{
              valueNotEquals: "Invalid time.",
              validcalltime : "Invalid time."
          },//end message for hour
          
          callminute:{
              valueNotEquals: "Invalid time.",
              validcalltime : "Invalid time."
          },//end message for minute
          
          phonenumber:{
              required: "Please enter in a phone number.",
              number: "A phone number must consist of 10 numeric digits.",
              minlength: "Phone number must be 10 digits long.",
              maxlength: "Phone number must be 10 digits long."
          },//end messages for phone number
          
          name:{
            required: "Please enter in the caller's name."  
          },//end message for name
          
          address:{
              required: "Please enter in the scene address."
          },//end messages for address
          
          province:{
              valueNotEquals: "Please select a province."
          },//end message for province
          
          region:{
              valueNotEquals: "Please select a region."
          },//end message for region
          
          condition:{
              required: "Please enter in the scene condition."
          }//end message for condition
           
        }//end of messages
        
    });//end of form validation
    
    
    /**
     * Custom rule to ensure that user has selected an item
     * in the drop down list
     */
    $.validator.addMethod("valueNotEquals", function(value, element, arg){
        return arg != value;
    }, "Value must not equal arg.");
    
    /**
     * check for a valid time
     */
    $.validator.addMethod("validcalltime",function(value){
        var date = new Date();
        var hour = $("#callhour").val();
        var min = $("#callminute").val();
        if(hour > date.getHours()){
            return !value;
        }
        else if((hour == date.getHours()) && (min > date.getMinutes())){
            return !value;
        }
        return value;
        
    });
    
     $("#callform").submit(function(){
       if($("#callform").valid()){
            
            $("#CallDetailsTab").removeClass("active");
            $("#CallDetails").removeClass("tab-pane active");
            $("#DispatchVehicle").removeClass("tab-pane");
            $("#CallDetails").addClass("tab-pane");
            $("#DispatchVehicle").addClass("tab-pane active");
            $("#DispatchVehicleTab").addClass("active");
            addinfo("fpsnumber",$("#fpsnumber"));
            addinfo("SAPSnumber",$( "#SAPSnumber"));
            addinfo("detailyear",$("#detailyear"));
            var form = document.forms["callform"];
            var el = document.createElement("input");
            el.type = "hidden";
            el.name = "detailmonth";
            el.value = $("option:selected","#detailmonth").attr("num");
            form.appendChild(el);
            addinfo("detailday",$("#detailday"));
            addinfo("detailhour",$("#detailhour"));
            addinfo("detailminute",$("#detailminute"));
            addinfo("numberofbodies",$("#numberofbodies"));
            addinfo("placefound",$("#placefound"));
            addinfo("circumstancesofdeath",$("#circumstancesofdeath"));
            addinfo("specialcircumstance",$("#specialcircumstance"));
            $("#callform").submit();
        }
        return false;
    });
    
  function addinfo(name,element)
{
   var form = document.forms["callform"];
   // form.action = 'put your url here';
   var el = document.createElement("input");
   el.type = "hidden";
   el.name = name;
   el.value = element.val();
   form.appendChild(el);
}
    
   /* $("#createincident").on("click",function(){
        
        //alert($().val());
        //document.$("#callform").submit();
        //mergeForms("detailform","callform");
        //getIncidentDetails();
        v
        
    });*/
     
    
    $("#callcancel").click(function(){
        $("label.error").hide();
    });
    
}); 
//end $(document).ready(function())





