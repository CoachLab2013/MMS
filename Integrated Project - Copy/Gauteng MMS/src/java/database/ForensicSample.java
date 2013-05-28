/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package database;

/**
 *
 * @author Cypril
 */
public class ForensicSample {

    private String sealNumber;
    private String deathRegisterNumber;
    private String reason;
    private String sealType;
    private String brokenSealNumber;
    private String typeOfAnalysis;
    private String institution;
    private String speacialInstructions;
    private boolean received;
    private String labNumber;
    private String dateSent;
    private String dateReceived;

    public ForensicSample() {

        sealNumber = "";
        deathRegisterNumber = "";
        reason = "";
        sealType = "";
        brokenSealNumber = "";
        typeOfAnalysis = "";
        institution = "";
        speacialInstructions = "";
        received = false;
        labNumber = "";
        dateSent = "";
        dateReceived = "";
    }

    public ForensicSample(String sealNumber, String deathRegisterNumber, String reason, String sealType, String brokenSealNumber, String typeOfAnalysis, String institution, String speacialInstructions, boolean received, String labNumber, String dateSent, String dateReceived) {

        this.sealNumber = sealNumber;
        this.deathRegisterNumber = deathRegisterNumber;
        this.reason = reason;
        this.sealType = sealType;
        this.brokenSealNumber = brokenSealNumber;
        this.typeOfAnalysis = typeOfAnalysis;
        this.institution = institution;
        this.speacialInstructions = speacialInstructions;
        this.received = received;
        this.labNumber = labNumber;
        this.dateSent = dateSent;
        this.dateReceived = dateReceived;
    }

//

    public String getSealNumber() {

        return sealNumber;
    }

    public String getDeathRegisterNumber() {

        return deathRegisterNumber;
    }

    public String getReason() {
        return reason;

    }

    public String getSealType() {
        return sealType;
    }

    public String getBrokenSealNumber() {
        return brokenSealNumber;
    }

    public String getTypeOfAnalysis() {
        return typeOfAnalysis;

    }

    public String getInstitution() {
        return institution;
    }

    public String getSpeacialInstructions() {
        return speacialInstructions;
    }

    public boolean getReceived() {
        return received;
    }

    public String getLabNumber() {
        return labNumber;
    }

    public String getDateSent() {
        return dateSent;
    }

    public String getDateReceived() {
        return dateReceived;
    } 
    
    
    /*     */ 
    
     public void setSealNumber(String sealNumber ) {

        this.sealNumber = sealNumber;
    }

    public void setDeathRegisterNumber(String deathRegisterNumber) {

        this.deathRegisterNumber = deathRegisterNumber;
    }

    public void setReason(String reason) {
        this.reason =  reason;

    }

    public void setSealType(String sealType) {
        this.sealType =  sealType;
    }

    public void setBrokenSealNumber(String brokenSealNumber) {
        this.brokenSealNumber =  brokenSealNumber;
    }

    public void setTypeOfAnalysis(String typeOfAnalysis) {
        this.typeOfAnalysis= typeOfAnalysis;
 
    }

    public void setInstitution(String institution) {
        this.institution =  institution;
    }

    public void setSpeacialInstructions(String speacialInstructions ) {
        this.speacialInstructions =  speacialInstructions;
    }

    public void setReceived(boolean received) {
        this.received =  received;
    }

    public void setLabNumber(String labNumber) {
        this.labNumber =  labNumber;
    }

    public void setDateSent(String dateSent) {
        this.dateSent = dateSent;
    }

    public void setDateReceived(String dateReceived) {
        this.dateReceived = dateReceived;
    }
    
    
    
}
