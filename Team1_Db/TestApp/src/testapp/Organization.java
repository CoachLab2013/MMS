/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package testapp;

/**
 *
 * @author Team 1 CoachLab 2013 Mortuary Manage Managemet System (Bandile)
 */
public class Organization {
    private String name;
    private String contactNumber;
    private int idOrganization;
    private String type;
    
    public Organization(){
        this.name = "";
        this.contactNumber = "";
        this.type = "";
    }
    
    public Organization(String inName, String inContactNumber, String inType){
        this.name = inName;
        this.contactNumber = inContactNumber;
        this.type = inType;
        
        //SQL CODE:
        /*
         INSERT INTO organizations VALUES (NULL, 'this.name', 'this.contactNumber');
         */
    } 
    
    public int getIdOrganization(){
        return this.idOrganization;
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
    
    public String getType(){
        return this.type;
    }
    
    public void setIdOrganization(int id){
        this.idOrganization = id;
    }
    
    public void setName(String inName){
        this.name = inName;
        
    }
    public void setContactNumber(String inContactNumber){
        this.contactNumber = inContactNumber;
        
        //SQL CODE:
        /*
         INSERT INTO organizations VALUES (NULL, 'this.name', 'this.contactNumber');
         
         */
    }
    public void setType(String inType){
        this.type = inType;
    }
}
