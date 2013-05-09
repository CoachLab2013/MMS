/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package testapp;

/**
 *
 * @author Chester
 */
public class Member 
{
    private String name;
    private String surname;
    private int rank;
    private String personnelNumber;
    private String organization;
    private String contactNumber;
    private String deathRegisterNumber;
    public Member()
    {
        
    }
    public Member(String name,String surname,int rank,String personnelNumber,String organization,String contactNumber,String deathRegisterNumber)
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
    public int getRank()
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
}
