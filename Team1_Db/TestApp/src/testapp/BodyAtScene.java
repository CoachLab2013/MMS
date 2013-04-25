/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package testapp;

/**
 *
 * @author
 */
public class BodyAtScene /*extends Body*/
{
    private String sceneIncidentOccured;
    private String sceneDateTime;
    private boolean pathOnScene;
    private String allegedInjuryDateTime;
    private String allegedDeathDateTime;
    private String externalCircumstanceOfInjury;
    private String placeOfDeath;
    private String dateTimeBodyFound;
    private BodyAtMortuary body;

    //CONSTRUCTORS
    public BodyAtScene(BodyAtMortuary body) {
        this.body = body;
    }
    public BodyAtScene(String sceneIncidentOccured, String sceneDateTime, boolean pathOnScene, String allegedInjuryDateTime, String allegedDeathDateTime, String externalCircumstanceOfInjury, String placeOfDeath, String dateTimeBodyFound, BodyAtMortuary body) {
        this.sceneIncidentOccured = sceneIncidentOccured;
        this.sceneDateTime = sceneDateTime;
        this.pathOnScene = pathOnScene;
        this.allegedInjuryDateTime = allegedInjuryDateTime;
        this.allegedDeathDateTime = allegedDeathDateTime;
        this.externalCircumstanceOfInjury = externalCircumstanceOfInjury;
        this.placeOfDeath = placeOfDeath;
        this.dateTimeBodyFound = dateTimeBodyFound;
        this.body = body;
    }

    /**
     * @return the sceneIncidentOccured
     */
    public String getSceneIncidentOccured() {
        return sceneIncidentOccured;
    }

    /**
     * @return the sceneDateTime
     */
    public String getSceneDateTime() {
        return sceneDateTime;
    }

    /**
     * @return the pathOnScene
     */
    public boolean isPathOnScene() {
        return pathOnScene;
    }

    /**
     * @return the allegedInjuryDateTime
     */
    public String getAllegedInjuryDateTime() {
        return allegedInjuryDateTime;
    }

    /**
     * @return the allegedDeathDateTime
     */
    public String getAllegedDeathDateTime() {
        return allegedDeathDateTime;
    }

    /**
     * @return the externalCircumstanceOfInjury
     */
    public String getExternalCircumstanceOfInjury() {
        return externalCircumstanceOfInjury;
    }

    /**
     * @return the placeOfDeath
     */
    public String getPlaceOfDeath() {
        return placeOfDeath;
    }

    /**
     * @return the dateTimeBodyFound
     */
    public String getDateTimeBodyFound() {
        return dateTimeBodyFound;
    }

    /**
     * @return the body
     */
    public Body getBody() {
        return body;
    }

    /**
     * @param sceneIncidentOccured the sceneIncidentOccured to set
     */
    public void setSceneIncidentOccured(String sceneIncidentOccured) {
        this.sceneIncidentOccured = sceneIncidentOccured;
    }

    /**
     * @param sceneDateTime the sceneDateTime to set
     */
    public void setSceneDateTime(String sceneDateTime) {
        this.sceneDateTime = sceneDateTime;
    }

    /**
     * @param pathOnScene the pathOnScene to set
     */
    public void setPathOnScene(boolean pathOnScene) {
        this.pathOnScene = pathOnScene;
    }

    /**
     * @param allegedInjuryDateTime the allegedInjuryDateTime to set
     */
    public void setAllegedInjuryDateTime(String allegedInjuryDateTime) {
        this.allegedInjuryDateTime = allegedInjuryDateTime;
    }

    /**
     * @param allegedDeathDateTime the allegedDeathDateTime to set
     */
    public void setAllegedDeathDateTime(String allegedDeathDateTime) {
        this.allegedDeathDateTime = allegedDeathDateTime;
    }

    /**
     * @param externalCircumstanceOfInjury the externalCircumstanceOfInjury to set
     */
    public void setExternalCircumstanceOfInjury(String externalCircumstanceOfInjury) {
        this.externalCircumstanceOfInjury = externalCircumstanceOfInjury;
    }

    /**
     * @param placeOfDeath the placeOfDeath to set
     */
    public void setPlaceOfDeath(String placeOfDeath) {
        this.placeOfDeath = placeOfDeath;
    }

    /**
     * @param dateTimeBodyFound the dateTimeBodyFound to set
     */
    public void setDateTimeBodyFound(String dateTimeBodyFound) {
        this.dateTimeBodyFound = dateTimeBodyFound;
    }

    /**
     * @param body the body to set
     */
    public void setBody(BodyAtMortuary body) {
        this.body = body;
    }
}
