 /*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package database;

/**
 *
 * @author Chester
 */
public class BodyAtMortuary extends Body
{
    //private BodyAtScene bodyAtScene;
    private String bodyReceivedFromPerNumber;
    private String bodyHandedOverToPerNumber;
    private String bodyHandOverFromOrganization;
   
    //CONSTRUCTORS
    public BodyAtMortuary() {
        super();
        this.bodyReceivedFromPerNumber = "null";
        this.bodyHandedOverToPerNumber = "null";
        this.bodyHandOverFromOrganization = "null";
    }
    public BodyAtMortuary(String deathRegisterNumber) 
    {
        super(deathRegisterNumber);
        this.bodyReceivedFromPerNumber = "null";
        this.bodyHandedOverToPerNumber = "null";
        this.bodyHandOverFromOrganization = "null";
    }

    //Constructors with at Scene
    public BodyAtMortuary(String bodyReceivedFromPerNum, String bodyHandOverFromPerNum, String deathRegisterNumber) {
        super(deathRegisterNumber);
        //this.bodyAtScene = bodyAtScene;
        this.bodyReceivedFromPerNumber = bodyReceivedFromPerNum;
        this.bodyHandedOverToPerNumber = bodyHandOverFromPerNum;
    }

    public BodyAtMortuary(String bodyReceivedFromPerNumber, String bodyHandedOverToPerNumber, String bodyHandOverFromOrganization, String deathRegisterNumber) {
        super(deathRegisterNumber);
        this.bodyReceivedFromPerNumber = bodyReceivedFromPerNumber;
        this.bodyHandedOverToPerNumber = bodyHandedOverToPerNumber;
        this.bodyHandOverFromOrganization = bodyHandOverFromOrganization;
    }
    

    public BodyAtMortuary(String bodyReceivedFromPerNum, String bodyHandOverFromPerNum, String deathRegisterNumber, String gender, String race, String assignedTo, String nameOfDeceased, String surnameOfDeceased, String placeOfBirth, String dateOfBirth, int ageOnDateFound, String martitalStatus, String occupation, String citizen, String maidenName, String inIdentifiedDateTime, BodyAddress bodyAddress, int estimatedAgeYear, int estimatedAgeMonth, String ID, String passport, boolean bodyStatus, String dateBodyReceived, boolean bodyReleased, Incident incident, String bodyType, String dateBodyReleased,String bodyReleasedTo) {
        super(deathRegisterNumber, gender, race, assignedTo, nameOfDeceased, surnameOfDeceased, placeOfBirth, dateOfBirth, ageOnDateFound, martitalStatus, occupation, citizen, maidenName, inIdentifiedDateTime, bodyAddress, estimatedAgeYear, estimatedAgeMonth, ID, passport, bodyStatus, dateBodyReceived, bodyReleased, incident, bodyType, dateBodyReleased,bodyReleasedTo);
        //this.bodyAtScene = bodyAtScene;
        this.bodyReceivedFromPerNumber = bodyReceivedFromPerNum;
        this.bodyHandedOverToPerNumber = bodyHandOverFromPerNum;
    }

    //GET METHODS
    /**
     * @return the bodyAtScene
     
    public BodyAtScene getBodyAtScene() {
        return bodyAtScene;
    }*/

    /**
     * @return the bodyReceivedFromPerNum
     */
    public String getBodyReceivedFromPerNumber() {
        return bodyReceivedFromPerNumber;
    }

    /**
     * @return the bodyHandOverFromPerNum
     */
    public String getBodyHandedOverToPerNumber() {
        return bodyHandedOverToPerNumber;
    }

    //SET METHODS
    /**
     * @param bodyAtScene the bodyAtScene to set
     
    public void setBodyAtScene(BodyAtScene bodyAtScene) {
        this.bodyAtScene = bodyAtScene;
    }*/

    /**
     * @param bodyReceivedFromPerNum the bodyReceivedFromPerNum to set
     */
    public void setBodyReceivedFromPerNumber(String bodyReceivedFromPerNumber) {
        this.bodyReceivedFromPerNumber = bodyReceivedFromPerNumber;
    }

    /**
     * @param bodyHandOverFromPerNum the bodyHandOverFromPerNum to set
     */
    public void setBodyHandedOverToPerNumber(String bodyHandedOverToPerNumber) {
        this.bodyHandedOverToPerNumber = bodyHandedOverToPerNumber;
    }

    public String getBodyHandOverFromOrganization() {
        return bodyHandOverFromOrganization;
    }

    public void setBodyHandOverFromOrganization(String bodyHandOverFromOrganization) {
        this.bodyHandOverFromOrganization = bodyHandOverFromOrganization;
    }
    
    
}
