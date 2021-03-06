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
    private String bodyReceivedFromPerNum;
    private String bodyHandOverFromPerNum;
   
    //CONSTRUCTORS
    public BodyAtMortuary() {
    }
    public BodyAtMortuary(String deathRegisterNumber) 
    {
        super(deathRegisterNumber);
    }

    //Constructors with at Scene
    public BodyAtMortuary(String bodyReceivedFromPerNum, String bodyHandOverFromPerNum, String deathRegisterNumber) {
        super(deathRegisterNumber);
        //this.bodyAtScene = bodyAtScene;
        this.bodyReceivedFromPerNum = bodyReceivedFromPerNum;
        this.bodyHandOverFromPerNum = bodyHandOverFromPerNum;
    }

    public BodyAtMortuary(String bodyReceivedFromPerNum, String bodyHandOverFromPerNum, String deathRegisterNumber, String gender, String race, String assignedTo, String nameOfDeceased, String surnameOfDeceased, String placeOfBirth, String dateOfBirth, int ageOnDateFound, String martitalStatus, String occupation, String citizen, String maidenName, String inIdentifiedDateTime, BodyAddress bodyAddress, int estimatedAgeYear, int estimatedAgeMonth, String ID, String passport, boolean bodyStatus, String dateBodyReceived, boolean bodyReleased, Incident incident, String bodyType, String dateBodyReleased,String bodyReleasedTo) {
        super(deathRegisterNumber, gender, race, assignedTo, nameOfDeceased, surnameOfDeceased, placeOfBirth, dateOfBirth, ageOnDateFound, martitalStatus, occupation, citizen, maidenName, inIdentifiedDateTime, bodyAddress, estimatedAgeYear, estimatedAgeMonth, ID, passport, bodyStatus, dateBodyReceived, bodyReleased, incident, bodyType, dateBodyReleased,bodyReleasedTo);
        //this.bodyAtScene = bodyAtScene;
        this.bodyReceivedFromPerNum = bodyReceivedFromPerNum;
        this.bodyHandOverFromPerNum = bodyHandOverFromPerNum;
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
    public String getBodyReceivedFromPerNum() {
        return bodyReceivedFromPerNum;
    }

    /**
     * @return the bodyHandOverFromPerNum
     */
    public String getBodyHandOverFromPerNum() {
        return bodyHandOverFromPerNum;
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
    public void setBodyReceivedFromPerNum(String bodyReceivedFromPerNum) {
        this.bodyReceivedFromPerNum = bodyReceivedFromPerNum;
    }

    /**
     * @param bodyHandOverFromPerNum the bodyHandOverFromPerNum to set
     */
    public void setBodyHandOverFromPerNum(String bodyHandOverFromPerNum) {
        this.bodyHandOverFromPerNum = bodyHandOverFromPerNum;
    }
    
    
}
