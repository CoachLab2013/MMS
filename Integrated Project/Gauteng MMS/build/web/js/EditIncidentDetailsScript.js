/**
 * Need to begin with $(document).ready(function)
 * This ensures that the document if fully loaded before the script is executed
 */

$(document).ready(function(){
    $("#editincidentbutton").click(function(){
        if($("#selectedincident").val()===""){
            alert("Please select an incident.");
        }
        else{
            $("#cancelcloseincident").click();
            $("#editincidentform").submit();
           //set focus on Open Incidents tab 
            $("#OpenIncidentsTab").removeClass("active");
            $("#EditIncidentTab").addClass("active");
            
            $("#OpenIncidents").removeClass("tab-pane active");
            $("#OpenIncidents").addClass("tab-pane");
            $("#EditIncident").removeClass("tab-pane");
            $("#EditIncident").addClass("tab-pane active");
        }
    });
    
   if($("#go_to_editincident").val()==="true"){
         //set focus on Open Incidents tab 
            $("#OpenIncidentsTab").removeClass("active");
            $("#EditIncidentTab").addClass("active");
            
            $("#OpenIncidents").removeClass("tab-pane active");
            $("#OpenIncidents").addClass("tab-pane");
            $("#EditIncident").removeClass("tab-pane");
            $("#EditIncident").addClass("tab-pane active");
    }
    
    $("#detailform").validate({
        rules:{
            
            detailyear:{
              valueNotEquals: "Year",
              checkdate : true
          },//end rule for year
          
          detailmonth:{
              valueNotEquals: "Month",
              checkdate: true
          },//end rule for month
          
          detailday:{
              valueNotEquals: "Day",
              checkdate: true
          },//end rule for day
          
          detailhour:{
              valueNotEquals: "Hour",
              validtime: true
          },//end rule for hour
          
          detailminute:{
              valueNotEquals: "Minute",
              validtime: true
          },//end rule for minute
            
            numberofbodies:{
              valueNotEquals: "Select"
          },//end rule for number of bodies
          
            placefound:{
                required: true
            },//end rules for place found
            
            specialcircumstance:{
              valueNotEquals: "Select"
          }//end rule for specialcircumstances
            
        },//end of rules
        
               groups: {
                date: "detailyear detailmonth detailday",
                time: "detailhour detailminute"
        },
        errorPlacement: function(error, element) {
            if ((element.attr("name") == "detailyear") || (element.attr("name") == "detailmonth") || (element.attr("name") == "detailday")){
                error.insertAfter("#detailday");
            } 
            else if((element.attr("name") == "detailhour") || (element.attr("name") == "detailminute")){
                error.insertAfter("#detailminute");
            }
            else {
                error.insertAfter(element);
            }
        },
        
        messages:{
          
          detailyear:{
              valueNotEquals: "Invalid date.",
              checkdate: "Invalid date."
          },//end message for year
          
          detailmonth:{
              valueNotEquals: "Invalid date.",
              checkdate: "Invalid date."
          },//end message for month
          
          detailday:{
              valueNotEquals: "Invalid date.",
              checkdate: "Invalid date."
          },//end message for day
          
          detailhour:{
              valueNotEquals: "Invalid time.",
              validtime : "Invalid time."
          },//end message for hour
          
          detailminute:{
              valueNotEquals: "Invalid time.",
              validtime : "Invalid time."
          },//end message for minute
          
          
          numberofbodies:{
              valueNotEquals: "Please select the number of bodies."
          },//end message for number of bodies
          
          placefound:{
                required: "Please specify the address where the body was found."
            },//end messages for place found
            
            specialcircumstance:{
              valueNotEquals: "Please select a special circumstance."
          }//end message for specialcircumstances
            
        }//end of messages
        
    });//end of form validation
    
    
    /**
     * Custom rule to ensure that user has selected an item
     * in the drop down list
     */
    $.validator.addMethod("valueNotEquals", function(value, element, arg){
        return arg != value;
    });
    
    /**
     * Custom rule to check valid date
     */
    $.validator.addMethod("checkdate",function(value){
        var year = $("#detailyear").val();
        var month = $("#detailmonth").val();
        var day = $("#detailday").val();
        var nummonth = $("option:selected","#detailmonth").attr("num");
        var date = new Date();
        
        if(year == date.getFullYear()){  
            if(nummonth==(date.getMonth()+1)){
                if(day>date.getDate()){
                    return !value;
                }
            }
            
        }
        if(year == date.getFullYear()){
            if(nummonth > (date.getMonth()+1)){
                return !value;
            }
            
        }
        
        if((month=="April")|| (month=="June") || (month=="September") || (month=="November")){
            if(day >30){
                return !value;
            }
            return value;    
        }
        else if(month == "February"){         
            if((year%4) ==0){
                if(day>29){
                    return !value;
                }
                return value;
            }
            else if(day > 28){
                return !value;
            }
            return value;
        }
        
        return value;
        
    });
    
    /**
     * check for a valid time
     */
    $.validator.addMethod("validtime",function(value){
        var date = new Date();
        var year = $("#detailyear").val();
        var month = $("option:selected","#detailmonth").attr("num");
        var day = $("#detailday").val();
        if(year == (date.getFullYear())){
            if(month == (date.getMonth()+1)){
                if(day == date.getDate()){
                    var hour = $("#detailhour").val();
                    var min = $("#detailminute").val();
                    if(hour > date.getHours()){
                        return !value;
                    }
                    else if((hour == date.getHours()) && (min > date.getMinutes())){
                        return !value;
                    }
                }
            }
        }
        return value;
    });
    
    
    

});


