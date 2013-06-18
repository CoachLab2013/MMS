/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
function SelectProvince()
{
    

    //Get id of the Region list
    var select = document.getElementById("RegionList");
    //Get the selected item from the Province  list in the region tab
    var pro = $("#ProvRegionList :selected").text()
    
      //Go to the FilterRegionServlet passing the variable province that contains pro
      //function(data) returns the data that was returned from the servlet using  out.println(regions);
    $.get("FilterRegionServlet", {province: pro}, function(data) {
                //data is the a list of regions in the 'pro' Provine, seperated by %
        data = data.toString().trim();
        var dataValues = data.split("%"); //create array f the regions
        while (select.options.length > 0) {
            select.remove(0); //clear the Region list
        }
        //add each item that is in the dataValues array in the region list  
        for (var i = 0; i < dataValues.length; i++)
        {
            var option = document.createElement('option');
            option.text = option.value = dataValues[i].toString().trim();
            select.add(option, i);

        }


    });



}

$(document).ready(function() {



})