$(document).ready(function(){
    
  $("#Deceasedform").validate({
      rules:{
          DeceasedName: {
              required: true
          },
          DeceasedSurname:{
              required: true
          },
          deceasedidentificationtype:{
              valueNotEquals: "Select"
          },
          DeceasedNumber:{
              required: true
          },
          deceasedgender:{
              valueNotEquals: "Select"
          },
          deceasedMaritalstatus:{
               valueNotEquals: "Select"
          },
          deceasedrace:{
               valueNotEquals: "Select"
          },
          deceasedOccupation:{
               valueNotEquals: "Select" 
          },
          deceasedCitizenship:{
               required: true
          },
          btnDeceasedNameDis:{
              valueNotEquals: "Confirm"
          },
          btnDeceasedSurnameDis:{
              valueNotEquals: "Confirm"
          },
          btnDeceasedNumberDis:{
              valueNotEquals: "Confirm"
          },
          btnDeceasedGenderDis:{
              valueNotEquals: "Confirm"
          },
          btnDeceasedRaceDis:{
              valueNotEquals: "Confirm"
          }
      },
      messages:{
          
          DeceasedName:{
              required: "Please enter in the name of the deceased"
          },
          DeceasedSurname:{
              required: "Please enter in the surname of the deceased"
          },
          deceasedidentificationtype:{
              valueNotEquals: "Please select an identification type"
          },
          DeceasedNumber:{
              required: "Please enter in an identification number"
          },
          deceasedgender:{
              valueNotEquals: "Please select the gender of the deceased"
          },
          deceasedMaritalstatus:{
               valueNotEquals: "Please select the marital status of the deceased"
          },
          deceasedrace:{
               valueNotEquals: "Please select the race of the deceased"
          },
          deceasedOccupation:{
               valueNotEquals: "Please select the occupation of the deceased"
          },
          deceasedCitizenship:{
               required: "Please enter in the citizenship of the deceased"
          },
          btnDeceasedNameDis:{
              valueNotEquals: "Please confirm the deceased's name"
          },
          btnDeceasedSurnameDis:{
              valueNotEquals: "Please confirm the deceased's surname"
          },
          btnDeceasedNumberDis:{
              valueNotEquals: "Please confirm the deceased's identification number"
          },
          btnDeceasedGenderDis:{
              valueNotEquals: "Please confirm the deceased's gender"
          },
          btnDeceasedRaceDis:{
              valueNotEquals: "Please confirm the deceased's gender"
          }
          
      }
  });
  
  $("#deceasedidentificationtype").click(function(){
      if($("#deceasedidentificationtype option").filter(':selected').text() == "ID"){
             $("#txtDeceasedNumberDis").rules("remove");
             $("#txtDeceasedNumberDis").rules("add",{
                 required:true,
                 number: true,
                 minlength: 13,
                 maxlength: 13,
                 messages:{
                    required: "Please enter in an ID number",
                   number: "Invalid ID number. It must contain exactly 13 numeric digits",
                   minlength: "Invalid ID number. It must contain exactly 13 numeric digits",
                   maxlength: "Invalid ID number. It must contain exactly 13 numeric digits" 
                 }
             });
        }
        else if($("#deceasedidentificationtype option").filter(':selected').text() == "Passport"){
             $("#txtDeceasedNumberDis").rules("remove");
             $("#txtDeceasedNumberDis").rules("add",{
                 required:true,
                 messages:{
                    required: "Please enter in an passport number"
                 }
             });
        }    
  });
  
  
    $("#btnDeceasedNameDis").click(function(){
        toggle("btnDeceasedNameDis","txtDeceasedNameDis");
    });
    
    $("#btnDeceasedSurnameDis").click(function(){
        toggle("btnDeceasedSurnameDis","txtDeceasedSurnameDis");
    });
    
    $("#btnDeceasedNumberDis").click(function(){
        toggle("btnDeceasedNumberDis","txtDeceasedNumberDis");
    });
    
    $("#btnDeceasedGenderDis").click(function(){
        toggle("btnDeceasedGenderDis","selDeceasedGenderDis");
    });
    
    $("#btnDeceasedRaceDis").click(function(){
        toggle("btnDeceasedRaceDis","selDeceasedRaceDis");
    });
    
    
    function toggle(button, text){
        if($("#"+button).val() == "Confirm"){
            $("#"+text).attr("readonly", true);
            $("#"+button).attr("value", "Edit");
        }
        else if($("#"+button).val() == "Edit"){
            $("#"+text).attr("readonly", false);
            $("#"+button).attr("value", "Confirm");
        }        
    };
    
    
    $.validator.addMethod("valueNotEquals", function(value, element, arg){
        return arg != value;
    }, "Value must not equal arg.");
    
});