/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package database;

/**
 *
 * @author Bandile
 */
public class PostMortem {
    private String labNumber;
    private String icd10;
    private String chiefFind;
    private String causeOfDeath;
    private boolean status;
    private boolean approved;
    private String DHA1663number;
    private Body body;

    public PostMortem() {
    }

    public PostMortem(String labNumber, String icd10, String chiefFind, String causeOfDeath, boolean status, boolean approved, String DHA1663number, Body body) {
        this.labNumber = labNumber;
        this.icd10 = icd10;
        this.chiefFind = chiefFind;
        this.causeOfDeath = causeOfDeath;
        this.status = status;
        this.approved = approved;
        this.DHA1663number = DHA1663number;
        this.body = body;
    }

    /**
     * @return the labNumber
     */
    public String getLabNumber() {
        return labNumber;
    }

    /**
     * @return the icd10
     */
    public String getIcd10() {
        return icd10;
    }

    /**
     * @return the chiefFind
     */
    public String getChiefFind() {
        return chiefFind;
    }

    /**
     * @return the causeOfDeath
     */
    public String getCauseOfDeath() {
        return causeOfDeath;
    }

    /**
     * @return the status
     */
    public boolean isStatus() {
        return status;
    }

    /**
     * @return the approved
     */
    public boolean isApproved() {
        return approved;
    }

    /**
     * @return the DHA1663number
     */
    public String getDHA1663number() {
        return DHA1663number;
    }

    /**
     * @return the body
     */
    public Body getBody() {
        return body;
    }

    /**
     * @param labNumber the labNumber to set
     */
    public void setLabNumber(String labNumber) {
        this.labNumber = labNumber;
    }

    /**
     * @param icd10 the icd10 to set
     */
    public void setIcd10(String icd10) {
        this.icd10 = icd10;
    }

    /**
     * @param chiefFind the chiefFind to set
     */
    public void setChiefFind(String chiefFind) {
        this.chiefFind = chiefFind;
    }

    /**
     * @param causeOfDeath the causeOfDeath to set
     */
    public void setCauseOfDeath(String causeOfDeath) {
        this.causeOfDeath = causeOfDeath;
    }

    /**
     * @param status the status to set
     */
    public void setStatus(boolean status) {
        this.status = status;
    }

    /**
     * @param approved the approved to set
     */
    public void setApproved(boolean approved) {
        this.approved = approved;
    }

    /**
     * @param DHA1663number the DHA1663number to set
     */
    public void setDHA1663number(String DHA1663number) {
        this.DHA1663number = DHA1663number;
    }

    /**
     * @param body the body to set
     */
    public void setBody(Body body) {
        this.body = body;
    }
}
