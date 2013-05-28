/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package database;

/**
 *
 * @author Team 1 CoachLab 2013 Mortuary Manage Managemet System (Bandile)
 */
public class Organization {
    private String name;
    private String contactNumber;
    private int idOrganization;
    private String type;
    
    //CONSTRUCTORS
    public Organization(){
        this.name = "";
        this.contactNumber = "";
        this.type = "";
    }
    
    public Organization(int inIdOrganization, String inName, String inContactNumber, String inType){
        this.name = inName;
        this.contactNumber = inContactNumber;
        this.type = inType;
        this.idOrganization = inIdOrganization;
    }
    
    public Organization(String inName, String inContactNumber, String inType){
        this.name = inName;
        this.contactNumber = inContactNumber;
        this.type = inType;
    }
    
    //GET METHODS
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
    
    //SET METHODS
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
