/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package mms.db;

/**
 *
 * @author Team 1 CoachLab 2013 Mortuary Manage Managemet System (Bandile)
 */
public class Hospital extends Organization {
    //variables
    
    
    
    //methods
    public Hospital(){
        super();
    }
    public Hospital(String inName, String inContactNumber){
        super(inName, inContactNumber);
        //SQL CODE:
        /*
         INSERT INTO Hospital VALUES (NULL, 'inName', 'inContactNumber');
         
         */
    }
    
    @Override
    public void setName(String inName){
        super.setName(inName);
        
        //SQL CODE:
        /*
         UPDATE Hospital SET name = 'inName' WHERE idHospital = 'this objects id';
         
         */
    }
    @Override
    public void setContactNumber(String inContactNumber){
        super.setContactNumber(inContactNumber);
        
        //SQL CODE:
        /*
         UPDATE Hospital SET contactNumber = 'inContactNumber' WHERE idHospital = 'this objects id';
         
         */
    }
}
