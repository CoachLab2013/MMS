/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package mms.db;

/**
 *
 * @author Team 1 CoachLab 2013 Mortuary Manage Managemet System (Bandile)
 */
public class PoliceStation extends Organization {
    //variables
    
    
    
    //methods
    public PoliceStation(){
        super();
    }
    public PoliceStation(String inName, String inContactNumber){
        super(inName, inContactNumber);
    }
    
     @Override
    public void setName(String inName){
        super.setName(inName);
        
        //SQL CODE:
        /*
         UPDATE PoliceStation SET name = 'inName' WHERE idPoliceStation = 'this objects id';
         
         */
    }
    @Override
    public void setContactNumber(String inContactNumber){
        super.setContactNumber(inContactNumber);
        
        //SQL CODE:
        /*
         UPDATE PoliceStation SET contactNumber = 'inContactNumber' WHERE idPoliceStation = 'this objects id';
         
         */
    }
}
