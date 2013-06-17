
        $("#txtDeceasedBodyIdentifiedDate").datepicker(
        {            
                dateFormat: "yy-mm-dd",
                maxDate: 0,
                minDate: -1            
        });
    
        $("#txtDeceasedDateBirth").datepicker({
            dateFormat:"yy-mm-dd",
            maxDate: 0
        });
    
        $("#txtDeceasedBodyIdentifiedTime").timepicker(
        {
                    showTime: false,
                    showButtonPanel: false  
        });

   var counter = 0;
    var ini;
    function confirmText(txtId,btnId,v)
    {
       ini = v;
       if(counter == v)
       {
                    document.getElementById(txtId).disabled = true;
                    document.getElementById(btnId).value ="Edit";
                    counter = 1;
       }
       else
       {
                    counter = 0;
                    document.getElementById(txtId).disabled = false;  
                    document.getElementById(btnId).value = "Confirm";
       }
    }