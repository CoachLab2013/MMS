/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package database;

/**
 *
<<<<<<< HEAD
 * @author Cya
 */
public class Recipient {
    
    private String name;
    private String surname;
    private String ID;
    private String idType;
    private String address;
    private String contactNumber;
    private String Body_idDeathRegisterNumber;
    
=======
 * @author Chester
 */
public class Recipient 
{
    private String name;
    private String surname;
    private String ID;
    private String address;
    private String contactNumber;
    private String deathRegisterNumber;
>>>>>>> origin/master
    public Recipient()
    {
        name = "";
        surname = "";
        ID = "";
<<<<<<< HEAD
        idType = "";
        address = "";
        contactNumber = "";
        Body_idDeathRegisterNumber = "";
        
    }
    
    public Recipient(String name,String surname,String ID,String idType,String address,String contactNumber, String Body_idDeathRegisterNumber)
=======
        address = "";
        contactNumber = "";
        deathRegisterNumber = "";
    }
    public Recipient(String name,String surname,String ID,String address,String contactNumber,String deathRegisterNumber)
>>>>>>> origin/master
    {
        this.name = name;
        this.surname = surname;
        this.ID = ID;
<<<<<<< HEAD
        this.idType = idType;
        this.address = address;
        this.contactNumber = contactNumber;
        this.Body_idDeathRegisterNumber = Body_idDeathRegisterNumber;
         
    }
    
    public String getName()
    {
        return name;
        
    }
    public String getSurname()
    {
        return surname;
    }
    public String getID()
    {
        return ID;
    }
    public String getIdType()
    {
        return idType;
    }
     public String getAddress()
    {
        return address;
    }
      public String getContactNumber()
    {
        return contactNumber;
    }
      public String getBody_idDeathRegisterNumber()
    {
        return Body_idDeathRegisterNumber;
    }
    
    
    //Setters
     public void setName(String name)
    {
        this.name = name;
    }
    public void setSurname(String surname)
    {
        this.surname = surname;
    }
    public void setID(String ID)
    {
        this.ID = ID;
    }
    public void setIdType(String idType)
    {
        this.idType = idType;
    }
    public void setAddress(String address)
    {
        this.address = address;
    }
     public void setContactNumber(String contactNumber)
    {
        this.contactNumber = contactNumber;
    }
     
     public void setBody_idDeathRegisterNumber(String Body_idDeathRegisterNumber)
    {
        this.Body_idDeathRegisterNumber = Body_idDeathRegisterNumber;
=======
        this.address = address;
        this.contactNumber = contactNumber;
        this.deathRegisterNumber = deathRegisterNumber;
>>>>>>> origin/master
    }
    
}
