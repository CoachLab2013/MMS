/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package testapp;

/**
 *
 * @author Team 1 CoachLab 2013 Mortuary Manage Managemet System (Chester)
 */
public abstract class Body 
{
    protected String deathRegisterNumber;
    protected String gender;
    protected String race;
    protected String assignedTo;
    protected String nameOfDeceased;
    protected String surnameOfDeceased;
    protected String placeOfBirth;
    protected String dateOfBirth;
    protected int ageOnDateFound;
    protected String martitalStatus;
    protected String occupation;
    protected String citizen;
    protected String maidenName;
    protected String dateTimeIdentified;
    protected BodyAddress bodyAddress;
    public Body()
    {
        
    }
    public Body(String deathRegisterNumber,String gender,String race,String assignedTo,String nameOfDeceased,String surnameOfDeceased,String placeOfBirth,String dateOfBirth,int ageOnDateFound,String martitalStatus,String occupation,String citizen,String maidenName,String dateTimeIdentified,BodyAddress bodyAddress)
    {
        this.deathRegisterNumber = deathRegisterNumber;
        this.gender = gender;
        this.race = race;
        this.assignedTo = assignedTo;
        this.nameOfDeceased = nameOfDeceased;
        this.surnameOfDeceased = surnameOfDeceased;
        this.placeOfBirth = placeOfBirth;
        this.dateOfBirth = dateOfBirth;
        this.ageOnDateFound = ageOnDateFound;
        this.martitalStatus = martitalStatus;
        this.occupation = occupation;
        this.citizen = citizen;
        this.maidenName = maidenName;
        this.dateTimeIdentified = dateTimeIdentified;
        this.bodyAddress = bodyAddress;
    }
    public String getDeathRegisterNumber()
    {
        return deathRegisterNumber;
    }
    public String getGender()
    {
        return gender;
    }
    public String getRace()
    {
        return assignedTo;
    }
    public String getNameOfDeceased()
    {
        return nameOfDeceased;
    }
    public String getSurnameOfDeceased()
    {
        return surnameOfDeceased;
    }
    public String getPlaceOfBirth()
    {
        return placeOfBirth;
    }
    public String getDateOfBirth()
    {
        return dateOfBirth;
    }
    public int getAgeOnDateFound()
    {
        return ageOnDateFound;
    }
    public String  getMartitalStatus()
    {
        return martitalStatus;
    }
    public String getOccuption()
    {
        return occupation;
    }
    public String getCitizen()
    {
        return citizen;
    }
    public String getMaidenName()
    {
        return maidenName;
    }
    public String getDateTimeIdentified()
    {
        return dateTimeIdentified;
    }
    public BodyAddress getBodyAddress()
    {
        return bodyAddress;
    }
    
}
