/* 
 * This is all the validation rules for incident details
 */

/**
 * Need to begin with $(document).ready(function)
 * This ensures that the document if fully loaded before the script is executed
 */

$(document).ready(function(){
    /**
     * validation for the login form
     */
    
    $("#detailform").validate({
        rules:{
            
            year:{
              valueNotEquals: "Year",
              validdate : true
          },//end rule for year
          
          month:{
              valueNotEquals: "Month",
              validdate: true
          },//end rule for month
          
          day:{
              valueNotEquals: "Day",
              validdate: true
          },//end rule for day
          
          hour:{
              valueNotEquals: "Hour",
              validtime: true
          },//end rule for hour
          
          minute:{
              valueNotEquals: "Minute",
              validtime: true
          },//end rule for minute
            
            numberofbodies:{
              valueNotEquals: "Select"
          },//end rule for number of bodies
          
            placefound:{
                required: true
            },//end rules for place found
            
            specialcircumstances:{
              valueNotEquals: "Select"
          }//end rule for specialcircumstances
            
        },//end of rules
        
               groups: {
                date: "year month day",
                time: "hour minute"
        },
        errorPlacement: function(error, element) {
            if ((element.attr("name") == "year") || (element.attr("name") == "month") || (element.attr("name") == "day")){
                error.insertAfter("#day");
            } 
            else if((element.attr("name") == "hour") || (element.attr("name") == "minute")){
                error.insertAfter("#minute");
            }
            else {
                error.insertAfter(element);
            }
        },
        
        messages:{
          
          year:{
              valueNotEquals: "Invalid date.",
              validdate: "Invalid date."
          },//end message for year
          
          month:{
              valueNotEquals: "Invalid date.",
              validdate: "Invalid date."
          },//end message for month
          
          day:{
              valueNotEquals: "Invalid date.",
              validdate: "Invalid date."
          },//end message for day
          
          hour:{
              valueNotEquals: "Invalid time.",
              validtime : "Invalid time."
          },//end message for hour
          
          minute:{
              valueNotEquals: "Invalid time.",
              validtime : "Invalid time."
          },//end message for minute
          
          
          numberofbodies:{
              valueNotEquals: "Plase select the number of bodies."
          },//end message for number of bodies
          
          placefound:{
                required: "Please specify the address where the body was found."
            },//end messages for place found
            
            specialcircumstances:{
              valueNotEquals: "Plase select a special circumstance."
          }//end message for specialcircumstances
            
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
     * Custom rule to check valid date
     */
    $.validator.addMethod("validdate",function(value){
        var year = $("#year").val();
        var month = $("#month").val();
        var day = $("#day").val();
       if((month=="April")|| (month=="June") || (month=="September") || (month=="November")){
            if(day >30){
                return !value;
            }
            return value;    
        }
        else if(month == "February"){
            if(!(year%4 ==0) && day > 29){
                return !value;
            }
            else if(day > 28){
                return !value;
            }
            return value;
        }
        return value;
    },"must be a valid date");
    
    /**
     * check for a valid time
     */
    $.validator.addMethod("validtime",function(value){
        var date = new Date();
        var year = $("#year").val();
        var month = $("option:selected","#month").attr("num");
        var day = $("#day").val();
        if((year == (date.getFullYear()))  && (month == (date.getMonth()+1)) &&(day == date.getDate()) ){
            var hour = $("#hour").val();
            var min = $("#minute").val();
            if(hour > date.getHours()){
                return !value;
            }
            else if((hour == date.getHours()) && (min > date.getMinutes())){
                return !value;
            }
        }
        return value;
    });
    
}); 
//end $(document).ready(function())


