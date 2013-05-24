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
   
 
    $("#editdetailform").validate({
        rules:{
            
            editdetailyear:{
              valueNotEquals: "Year",
              checkdate : true
          },//end rule for year
          
          edit_incident_month:{
              valueNotEquals: "Month",
              checkdate: true
          },//end rule for month
          
          edit_incident_day:{
              valueNotEquals: "Day",
              checkdate: true
          },//end rule for day
          
          edit_incident_hour:{
              valueNotEquals: "Hour",
              validtime: true
          },//end rule for hour
          
          edit_incident_minute:{
              valueNotEquals: "Minute",
              validtime: true
          },//end rule for minute
            
            editnumberofbodies:{
              valueNotEquals: "Select"
          },//end rule for number of bodies
          
            editplacefound:{
                required: true
            },//end rules for place found
            
            specialcircumstance:{
              valueNotEquals: "Select"
          }//end rule for specialcircumstances
            
        },//end of rules
        
               groups: {
                date: "editdetailyear edit_incident_month edit_incident_day",
                time: "edit_incident_hour edit_incident_minute"
        },
        errorPlacement: function(error, element) {
            if ((element.attr("name") == "editdetailyear") || (element.attr("name") == "edit_incident_month") || (element.attr("name") == "edit_incident_day")){
                error.insertAfter("#edit_incident_day");
            } 
            else if((element.attr("name") == "edit_incident_hour") || (element.attr("name") == "edit_incident_minute")){
                error.insertAfter("#edit_incident_minute");
            }
            else {
                error.insertAfter(element);
            }
        },
        
        messages:{
          
          editdetailyear:{
              valueNotEquals: "Invalid date.",
              checkdate: "Invalid date."
          },//end message for year
          
          edit_incident_month:{
              valueNotEquals: "Invalid date.",
              checkdate: "Invalid date."
          },//end message for month
          
          edit_incident_day:{
              valueNotEquals: "Invalid date.",
              checkdate: "Invalid date."
          },//end message for day
          
          edit_incident_hour:{
              valueNotEquals: "Invalid time.",
              validtime : "Invalid time."
          },//end message for hour
          
          edit_incident_minute:{
              valueNotEquals: "Invalid time.",
              validtime : "Invalid time."
          },//end message for minute
          
          
          editnumberofbodies:{
              valueNotEquals: "Please select the number of bodies."
          },//end message for number of bodies
          
          editplacefound:{
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
        var year = $("#editdetailyear").val();
        var month = $("#edit_incident_month").val();
        var day = $("#edit_incident_day").val();
        var nummonth = $("option:selected","#edit_incident_month").attr("num");
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
        var year = $("#editdetailyear").val();
        var month = $("option:selected","#edit_incident_month").attr("num");
        var day = $("#edit_incident_day").val();
        if(year == (date.getFullYear())){
            if(month == (date.getMonth()+1)){
                if(day == date.getDate()){
                    var hour = $("#edit_incident_hour").val();
                    var min = $("#edit_incident_minute").val();
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


