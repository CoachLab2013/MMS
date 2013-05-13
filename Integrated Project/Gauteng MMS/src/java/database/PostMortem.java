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
}
