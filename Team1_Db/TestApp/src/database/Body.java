/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package database;

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
    protected String maritalStatus;
    protected String occupation;
    protected String citizen;
    protected String maidenName;
    protected String identifiedDateTime;
    protected BodyAddress bodyAddress;
    protected int estimatedAgeYear;
    protected int estimatedAgeMonth;
    protected String ID;
    protected String passport;
    protected boolean bodyStatus;
    protected String dateBodyReceived;
    protected boolean bodyReleased;
    protected Incident incident;
    protected String bodyType;
    protected String dateBodyReleased;
    protected String bodyReleasedTo;
    public Body()
    {
        deathRegisterNumber = "";
        gender = "";
        race = "";
        assignedTo = "";
        nameOfDeceased = "";
        surnameOfDeceased = "";
        placeOfBirth = "";
        dateOfBirth = "0000-00-00";
        ageOnDateFound = 0;
        maritalStatus = "";
        occupation = "";
        citizen = "";
        maidenName = "";
        identifiedDateTime = "0000-00-00";
        bodyAddress = new BodyAddress();
        estimatedAgeYear = 0;
        estimatedAgeMonth = 0;
        ID = "";
        passport = "";
        bodyStatus = false;
        dateBodyReceived = "0000-00-00";
        bodyReleased = false;
        incident = new Incident();
        bodyType = "";
        dateBodyReleased = "0000-00-00";
        bodyReleasedTo = "";
    }
    public Body(String deathRegisterNumber)
    {
        this.deathRegisterNumber = deathRegisterNumber;
    }
    public Body(String deathRegisterNumber,String gender,String race,String assignedTo,String nameOfDeceased,String surnameOfDeceased,String placeOfBirth,String dateOfBirth,int ageOnDateFound,String martitalStatus,String occupation,String citizen,String maidenName,String inIdentifiedDateTime,BodyAddress bodyAddress, int estimatedAgeYear, int estimatedAgeMonth, String ID, String passport, boolean bodyStatus, String dateBodyReceived, boolean bodyReleased, Incident incident, String bodyType, String dateBodyReleased,String bodyReleasedTo)
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
        this.maritalStatus = martitalStatus;
        this.occupation = occupation;
        this.citizen = citizen;
        this.maidenName = maidenName;
        this.identifiedDateTime = inIdentifiedDateTime;
        this.bodyAddress = bodyAddress;
        this.estimatedAgeYear = estimatedAgeYear;
        this.estimatedAgeMonth = estimatedAgeMonth;
        this.ID = ID;
        this.passport = passport;
        this.bodyStatus = bodyStatus;
        this.dateBodyReceived = dateBodyReceived;
        this.bodyReleased = bodyReleased;
        this.incident = incident;
        this.bodyType = bodyType;
        this.dateBodyReleased = dateBodyReleased;
        this.bodyReleasedTo = bodyReleasedTo;
    }

    //GET METHODS
    public String getBodyReleasedTo()
    {
        return bodyReleasedTo;
    }
    public BodyAddress getBodyAddress()
    {
        return bodyAddress;
    }
    /**
     * @return the deathRegisterNumber
     */
    public String getDeathRegisterNumber() {
        return deathRegisterNumber;
    }

    /**
     * @return the gender
     */
    public String getGender() {
        return gender;
    }

    /**
     * @return the race
     */
    public String getRace() {
        return race;
    }

    /**
     * @return the assignedTo
     */
    public String getAssignedTo() {
        return assignedTo;
    }

    /**
     * @return the nameOfDeceased
     */
    public String getNameOfDeceased() {
        return nameOfDeceased;
    }

    /**
     * @return the surnameOfDeceased
     */
    public String getSurnameOfDeceased() {
        return surnameOfDeceased;
    }

    /**
     * @return the placeOfBirth
     */
    public String getPlaceOfBirth() {
        return placeOfBirth;
    }

    /**
     * @return the dateOfBirth
     */
    public String getDateOfBirth() {
        return dateOfBirth;
    }

    /**
     * @return the ageOnDateFound
     */
    public int getAgeOnDateFound() {
        return ageOnDateFound;
    }

    /**
     * @return the martitalStatus
     */
    public String getMaritalStatus() {
        return maritalStatus;
    }

    /**
     * @return the occupation
     */
    public String getOccupation() {
        return occupation;
    }

    /**
     * @return the citizen
     */
    public String getCitizen() {
        return citizen;
    }

    /**
     * @return the maidenName
     */
    public String getMaidenName() {
        return maidenName;
    }

    /**
     * @return the identifiedDateTime
     */
    public String getIdentifiedDateTime() {
        return identifiedDateTime;
    }

    /**
     * @return the bodyAddress
     */
   /* public BodyAddress getBodyAddress() {
        return bodyAddress;
    }*/

    /**
     * @return the estimatedAgeYear
     */
    public int getEstimatedAgeYear() {
        return estimatedAgeYear;
    }

    /**
     * @return the estimatedAgeMonth
     */
    public int getEstimatedAgeMonth() {
        return estimatedAgeMonth;
    }

    /**
     * @return the ID
     */
    public String getID() {
        return ID;
    }

    /**
     * @return the passport
     */
    public String getPassport() {
        return passport;
    }

    /**
     * @return the bodyStatus
     */
    public boolean isBodyStatus() {
        return bodyStatus;
    }

    /**
     * @return the dateBodyReceived
     */
    public String getDateBodyReceived() {
        return dateBodyReceived;
    }

    /**
     * @return the bodyReleased
     */
    public boolean isBodyReleased() {
        return bodyReleased;
    }

    /**
     * @return the incident
     */
    public Incident getIncident() {
        return incident;
    }

    /**
     * @return the bodyType
     */
    public String getBodyType() {
        return bodyType;
    }

    /**
     * @return the dateBodyReleased
     */
    public String getDateBodyReleased() {
        return dateBodyReleased;
    }
    
    //SET METHODS

    /**
     * @param deathRegisterNumber the deathRegisterNumber to set
     */
    public void setDeathRegisterNumber(String deathRegisterNumber) {
        this.deathRegisterNumber = deathRegisterNumber;
    }

    /**
     * @param gender the gender to set
     */
    public void setGender(String gender) {
        this.gender = gender;
    }

    /**
     * @param race the race to set
     */
    public void setRace(String race) {
        this.race = race;
    }

    /**
     * @param assignedTo the assignedTo to set
     */
    public void setAssignedTo(String assignedTo) {
        this.assignedTo = assignedTo;
    }

    /**
     * @param nameOfDeceased the nameOfDeceased to set
     */
    public void setNameOfDeceased(String nameOfDeceased) {
        this.nameOfDeceased = nameOfDeceased;
    }

    /**
     * @param surnameOfDeceased the surnameOfDeceased to set
     */
    public void setSurnameOfDeceased(String surnameOfDeceased) {
        this.surnameOfDeceased = surnameOfDeceased;
    }

    /**
     * @param placeOfBirth the placeOfBirth to set
     */
    public void setPlaceOfBirth(String placeOfBirth) {
        this.placeOfBirth = placeOfBirth;
    }

    /**
     * @param dateOfBirth the dateOfBirth to set
     */
    public void setDateOfBirth(String dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }

    /**
     * @param ageOnDateFound the ageOnDateFound to set
     */
    public void setAgeOnDateFound(int ageOnDateFound) {
        this.ageOnDateFound = ageOnDateFound;
    }

    /**
     * @param martitalStatus the martitalStatus to set
     */
    public void setMaritalStatus(String maritalStatus) {
        this.maritalStatus = maritalStatus;
    }

    /**
     * @param occupation the occupation to set
     */
    public void setOccupation(String occupation) {
        this.occupation = occupation;
    }

    /**
     * @param citizen the citizen to set
     */
    public void setCitizen(String citizen) {
        this.citizen = citizen;
    }

    /**
     * @param maidenName the maidenName to set
     */
    public void setMaidenName(String maidenName) {
        this.maidenName = maidenName;
    }

    /**
     * @param identifiedDateTime the identifiedDateTime to set
     */
    public void setIdentifiedDateTime(String identifiedDateTime) {
        this.identifiedDateTime = identifiedDateTime;
    }

    /**
     * @param bodyAddress the bodyAddress to set
     */
    /*public void setBodyAddress(BodyAddress bodyAddress) {
        this.bodyAddress = bodyAddress;
    }*/

    /**
     * @param estimatedAgeYear the estimatedAgeYear to set
     */
    public void setEstimatedAgeYear(int estimatedAgeYear) {
        this.estimatedAgeYear = estimatedAgeYear;
    }

    /**
     * @param estimatedAgeMonth the estimatedAgeMonth to set
     */
    public void setEstimatedAgeMonth(int estimatedAgeMonth) {
        this.estimatedAgeMonth = estimatedAgeMonth;
    }

    /**
     * @param ID the ID to set
     */
    public void setID(String ID) {
        this.ID = ID;
    }

    /**
     * @param passport the passport to set
     */
    public void setPassport(String passport) {
        this.passport = passport;
    }

    /**
     * @param bodyStatus the bodyStatus to set
     */
    public void setBodyStatus(boolean bodyStatus) {
        this.bodyStatus = bodyStatus;
    }

    /**
     * @param dateBodyReceived the dateBodyReceived to set
     */
    public void setDateBodyReceived(String dateBodyReceived) {
        this.dateBodyReceived = dateBodyReceived;
    }

    /**
     * @param bodyReleased the bodyReleased to set
     */
    public void setBodyReleased(boolean bodyReleased) {
        this.bodyReleased = bodyReleased;
    }

    /**
     * @param incident the incident to set
     */
    public void setIncident(Incident incident) {
        this.incident = incident;
    }

    /**
     * @param bodyType the bodyType to set
     */
    public void setBodyType(String bodyType) {
        this.bodyType = bodyType;
    }

    /**
     * @param dateBodyReleased the dateBodyReleased to set
     */
    public void setDateBodyReleased(String dateBodyReleased) {
        this.dateBodyReleased = dateBodyReleased;
    }
    /**
     * 
     * @param bodyAddress
     */
    public void setBodyAddress(BodyAddress bodyAddress)
    {
        this.bodyAddress = bodyAddress;
    }
    public void setBodyReleaseTo(String bodyReleasedTo)
    {
        this.bodyReleasedTo = bodyReleasedTo;
    }
    
    
}
