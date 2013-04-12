/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package mms.db;

/**
 *
 * @author Team 1 CoachLab 2013 Mortuary Manage Managemet System (Bandile)
 */
public class Organization {
    private String name;
    private String contactNumber;
    
    
    public Organization(){
        this.name = "";
        this.contactNumber = "";
    }
    
    public Organization(String inName, String inContactNumber){
        this.name = inName;
        this.contactNumber = inContactNumber;
        
        //SQL CODE:
        /*
         INSERT INTO organizations VALUES (NULL, 'this.name', 'this.contactNumber');
         
         */
    } 
    
    public String getName(){
        return this.name;
        
        //SQL CODE:
        /*
         INSERT INTO organizations VALUES (NULL, 'this.name', 'this.contactNumber');
         
         */
    }
    
    public String getContactNumber(){
        return this.contactNumber;
    }
    
    public void setName(String inName){
        this.name = inName;
        
        //SQL CODE:
        /*
         INSERT INTO organizations VALUES (NULL, 'this.name', 'this.contactNumber');
         
         */
    }
    public void setContactNumber(String inContactNumber){
        this.contactNumber = inContactNumber;
        
        //SQL CODE:
        /*
         INSERT INTO organizations VALUES (NULL, 'this.name', 'this.contactNumber');
         
         */
    }
}
