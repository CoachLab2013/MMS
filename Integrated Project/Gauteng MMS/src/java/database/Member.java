/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package database;

/**
 *
 * @author Chester
 */
public class Member 
{
    private String name;
    private String surname;
    private String rank;
    private String personnelNumber;
    private String organization;
    private String contactNumber;
    private String deathRegisterNumber;
    public Member()
    {
        this.name = "null";
        this.surname = "null";
        this.rank = "null";
        this.personnelNumber = "null";
        this.organization = "null";
        this.contactNumber = "null";
        this.deathRegisterNumber = "null";
    }
    public Member(String name,String surname,String rank,String personnelNumber,String organization,String contactNumber,String deathRegisterNumber)
    {
        this.name = name;
        this.surname = surname;
        this.rank = rank;
        this.personnelNumber = personnelNumber;
        this.organization = organization;
        this.contactNumber = contactNumber;
        this.deathRegisterNumber = deathRegisterNumber;
    }
    public String getName()
    {
        return name;
    }
    public String getSurname()
    {
        return surname;
    }
    public String getRank()
    {
        return rank;
    }
    public String getPersonnelNumber()
    {
       return personnelNumber;
    }
    public String getOrganization()
    {
        return organization;
    }
    public String getContactNumber()
    {
        return contactNumber;
    }
    public String getDeathRegisterNumber()
    {
        return deathRegisterNumber;
    }
    public void setName(String name)
    {
        this.name = name;
    }
    public void setSurname(String surname)
    {
        this.surname = surname;
    }
    public void setRank(String rank)
    {
        this.rank = rank;
    }
    public void setPersonnelNumber(String personnelNumber)
    {
       this.personnelNumber = personnelNumber;
    }
    public void setOrganization(String organization)
    {
        this.organization = organization;
    }
    public void setContactNumber(String contactNumber)
    {
        this.contactNumber = contactNumber;
    }
    public void setDeathRegisterNumber(String deathRegisterNumber)
    {
        this.deathRegisterNumber = deathRegisterNumber;
    }
}
