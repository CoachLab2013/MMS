/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package database;

/** 
 *
 * @author
 * @JCSE
 * Date : 16/04/2013
 */

/**
 * 
 * the callers details will be captured as soon as they get a call
 */
public class DeathCall {
    private Incident incident;
    private String timeOfCall;
    private String dateOfCall;
    private String numberOfCaller;
    private String institution;
    private String sceneAddress;
    private String province;
    private String region;
    private String sceneConditions;
    private String nameOfCaller;

    public DeathCall() {
    }

    public DeathCall(Incident incident) {
        this.incident = incident;
    }

    public DeathCall(Incident incident, String timeOfCall, String dateOfCall, String numberOfCaller, String institution, String sceneAddress, String province, String region, String sceneConditions, String nameOfCaller) {
        this.incident = incident;
        this.timeOfCall = timeOfCall;
        this.dateOfCall = dateOfCall;
        this.numberOfCaller = numberOfCaller;
        this.institution = institution;
        this.sceneAddress = sceneAddress;
        this.province = province;
        this.region = region;
        this.sceneConditions = sceneConditions;
        this.nameOfCaller = nameOfCaller;
    }

    /**
     * @return the incident
     */
    public Incident getIncident() {
        return incident;
    }

    /**
     * @return the timeOfCall
     */
    public String getTimeOfCall() {
        return timeOfCall;
    }

    /**
     * @return the dateOfCall
     */
    public String getDateOfCall() {
        return dateOfCall;
    }

    /**
     * @return the numberOfCaller
     */
    public String getNumberOfCaller() {
        return numberOfCaller;
    }

    /**
     * @return the institution
     */
    public String getInstitution() {
        return institution;
    }

    /**
     * @return the sceneAddress
     */
    public String getSceneAddress() {
        return sceneAddress;
    }

    /**
     * @return the province
     */
    public String getProvince() {
        return province;
    }

    /**
     * @return the region
     */
    public String getRegion() {
        return region;
    }

    /**
     * @return the sceneConditions
     */
    public String getSceneConditions() {
        return sceneConditions;
    }

    /**
     * @return the nameOfCaller
     */
    public String getNameOfCaller() {
        return nameOfCaller;
    }

    /**
     * @param incident the incident to set
     */
    public void setIncident(Incident incident) {
        this.incident = incident;
    }

    /**
     * @param timeOfCall the timeOfCall to set
     */
    public void setTimeOfCall(String timeOfCall) {
        this.timeOfCall = timeOfCall;
    }

    /**
     * @param dateOfCall the dateOfCall to set
     */
    public void setDateOfCall(String dateOfCall) {
        this.dateOfCall = dateOfCall;
    }

    /**
     * @param numberOfCaller the numberOfCaller to set
     */
    public void setNumberOfCaller(String numberOfCaller) {
        this.numberOfCaller = numberOfCaller;
    }

    /**
     * @param institution the institution to set
     */
    public void setInstitution(String institution) {
        this.institution = institution;
    }

    /**
     * @param sceneAddress the sceneAddress to set
     */
    public void setSceneAddress(String sceneAddress) {
        this.sceneAddress = sceneAddress;
    }

    /**
     * @param province the province to set
     */
    public void setProvince(String province) {
        this.province = province;
    }

    /**
     * @param region the region to set
     */
    public void setRegion(String region) {
        this.region = region;
    }

    /**
     * @param sceneConditions the sceneConditions to set
     */
    public void setSceneConditions(String sceneConditions) {
        this.sceneConditions = sceneConditions;
    }

    /**
     * @param nameOfCaller the nameOfCaller to set
     */
    public void setNameOfCaller(String nameOfCaller) {
        this.nameOfCaller = nameOfCaller;
    }
    
    
}
