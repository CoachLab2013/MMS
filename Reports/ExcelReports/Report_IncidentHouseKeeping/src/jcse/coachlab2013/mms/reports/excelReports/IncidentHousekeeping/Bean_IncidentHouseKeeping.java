/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package jcse.coachlab2013.mms.reports.excelReports.IncidentHousekeeping;

/**
 *
 * @author Amazing
 */
public class Bean_IncidentHouseKeeping {
    private String incidentID;
    private String reference;
    private String date;
    private String time;
    private String mannerOfDeath;
    private String location;
    private String organisation;
    private String caller;
    private String contact;

    public Bean_IncidentHouseKeeping() {
    }

    public Bean_IncidentHouseKeeping(String incidentID, String reference, String date, String time, String mannerOfDeath, String location, String organisation, String caller, String contact) {
        this.incidentID = incidentID;
        this.reference = reference;
        this.date = date;
        this.time = time;
        this.mannerOfDeath = mannerOfDeath;
        this.location = location;
        this.organisation = organisation;
        this.caller = caller;
        this.contact = contact;
    }
    
    

    public String getIncidentID() {
        return incidentID;
    }

    public void setIncidentID(String incidentID) {
        this.incidentID = incidentID;
    }

    public String getReference() {
        return reference;
    }

    public void setReference(String reference) {
        this.reference = reference;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getMannerOfDeath() {
        return mannerOfDeath;
    }

    public void setMannerOfDeath(String mannerOfDeath) {
        this.mannerOfDeath = mannerOfDeath;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getOrganisation() {
        return organisation;
    }

    public void setOrganisation(String organisation) {
        this.organisation = organisation;
    }

    public String getCaller() {
        return caller;
    }

    public void setCaller(String caller) {
        this.caller = caller;
    }

    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }
    
    
    
    
    
    
}
