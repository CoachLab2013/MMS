/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package jcse.coachlab2013.mms.reports.excelReports.unidentifiedbodies;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Member;
import static java.lang.System.out;

/**
 *
 * @author 417341
 */
public class Bean_UnidentifiedBodies{
    private String incidentId;
    private String deatthNumber;
    private String dateReceived;
    private String sapsStation;
    private String dateReleased;
    private String daysAtFacility;

    public Bean_UnidentifiedBodies() {
    }
    
    

    public Bean_UnidentifiedBodies(String incidentId, String deatthNumber, String dateReceived, String sapsStation, String dateReleased, String daysAtFacility) {
        this.incidentId = incidentId;
        this.deatthNumber = deatthNumber;
        this.dateReceived = dateReceived;
        this.sapsStation = sapsStation;
        this.dateReleased = dateReleased;
        this.daysAtFacility = daysAtFacility;
    }
    
    

    public String getIncidentId() {
        return incidentId;
    }

    public void setIncidentId(String incidentId) {
        this.incidentId = incidentId;
    }

    public String getDeatthNumber() {
        return deatthNumber;
    }

    public void setDeatthNumber(String deatthNumber) {
        this.deatthNumber = deatthNumber;
    }

    public String getDateReceived() {
        return dateReceived;
    }

    public void setDateReceived(String dateReceived) {
        this.dateReceived = dateReceived;
    }

    public String getSapsStation() {
        return sapsStation;
    }

    public void setSapsStation(String sapsStation) {
        this.sapsStation = sapsStation;
    }

    public String getDateReleased() {
        return dateReleased;
    }

    public void setDateReleased(String dateReleased) {
        this.dateReleased = dateReleased;
    }

    public String getDaysAtFacility() {
        return daysAtFacility;
    }

    public void setDaysAtFacility(String daysAtFacility) {
        this.daysAtFacility = daysAtFacility;
    }
    


    
}
