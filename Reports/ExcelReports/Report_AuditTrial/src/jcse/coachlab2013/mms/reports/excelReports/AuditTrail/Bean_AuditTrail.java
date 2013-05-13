/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package jcse.coachlab2013.mms.reports.excelReports.AuditTrail;

import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

/**
 *
 * @author 417341
 */
public class Bean_AuditTrail {
    private String date;
    private String time;
    private String eventtype;
    private String eventlocation;
    private String user;
    private String eventmessage;

    public Bean_AuditTrail() {
    }

    public Bean_AuditTrail(String date, String time, String eventtype, String eventlocation, String user, String eventmessage) {
        this.date = date;
        this.time = time;
        this.eventtype = eventtype;
        this.eventlocation = eventlocation;
        this.user = user;
        this.eventmessage = eventmessage;
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

    public String getEventtype() {
        return eventtype;
    }

    public void setEventtype(String eventtype) {
        this.eventtype = eventtype;
    }

    public String getEventlocation() {
        return eventlocation;
    }

    public void setEventlocation(String eventlocation) {
        this.eventlocation = eventlocation;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getEventmessage() {
        return eventmessage;
    }

    public void setEventmessage(String eventmessage) {
        this.eventmessage = eventmessage;
    }
    
}
