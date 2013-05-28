/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package database;

/**
 *
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
    public Recipient()
    {
        name = "";
        surname = "";
        ID = "";
        address = "";
        contactNumber = "";
        deathRegisterNumber = "";
    }
    public Recipient(String name,String surname,String ID,String address,String contactNumber,String deathRegisterNumber)
    {
        this.name = name;
        this.surname = surname;
        this.ID = ID;
        this.address = address;
        this.contactNumber = contactNumber;
        this.deathRegisterNumber = deathRegisterNumber;
    }
    
}
