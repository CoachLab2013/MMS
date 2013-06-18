        
        $("input#txtDeceasedDateBirth").datepicker({
            dateFormat:"yy-mm-dd",
            maxDate: 0            
        });
        
        $("#txtDeceasedBodyIdentifiedDate").datepicker(
        {            
                dateFormat: "yy-mm-dd",
                maxDate: 0,
                minDate: -1            
        });
    
    
        $("#txtDeceasedBodyIdentifiedTime").timepicker(
        {
                    showTime: false,
                    showButtonPanel: false  
        });
