/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package mms.db;

/**
 *
 * @author Team 1 CoachLab 2013 Mortuary Manage Managemet System (Bandile)
 */
public class PathologyUnit extends Organization {
    //variables
    
    
    
    //methods
    public PathologyUnit(){
        super();
    }
    public PathologyUnit(String inName, String inContactNumber){
        super(inName, inContactNumber);
    }
    
     @Override
    public void setName(String inName){
        super.setName(inName);
        
        //SQL CODE:
        /*
         UPDATE PathologyUnit SET name = 'inName' WHERE idPathologyUnit = 'this objects id';
         
         */
    }
    @Override
    public void setContactNumber(String inContactNumber){
        super.setContactNumber(inContactNumber);
        
        //SQL CODE:
        /*
         UPDATE PathologyUnit SET contactNumber = 'inContactNumber' WHERE idPathologyUnit = 'this objects id';
         
         */
    }
}
