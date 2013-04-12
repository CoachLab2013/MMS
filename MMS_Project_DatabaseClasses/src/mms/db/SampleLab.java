/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package mms.db;

/**
 *
 * @author Team 1 CoachLab 2013 Mortuary Manage Managemet System (Bandile)
 */
public class SampleLab extends Organization {
    //variables
    
    
    
    //methods
    public SampleLab(){
        super();
    }
    public SampleLab(String inName, String inContactNumber){
        super(inName, inContactNumber);
    }
    
     @Override
    public void setName(String inName){
        super.setName(inName);
        
        //SQL CODE:
        /*
         UPDATE SampleLab SET name = 'inName' WHERE idSampleLab = 'this objects id';
         
         */
    }
    @Override
    public void setContactNumber(String inContactNumber){
        super.setContactNumber(inContactNumber);
        
        //SQL CODE:
        /*
         UPDATE SampleLab SET contactNumber = 'inContactNumber' WHERE idSampleLab = 'this objects id';
         
         */
    }
}
