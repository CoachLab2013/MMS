/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package database;

/**
 *
 * @author Chester
 */
public class IncidentMessage
{
    private String date;
    private String time;
    private String mannerOfDeath;
    private String nameOfDeceased;
    private boolean vip;
    private boolean bodyFileStatus;
    private Incident incident;//added by Bandile
    public IncidentMessage()
    {
        
    }
    /**
     * 
     * @param date
     * @param time
     * @param mannerOfDeath
     * @param nameOfDeceased
     * @param vip
     * @param caseStatus 
     */
    public IncidentMessage(String date,String time,String mannerOfDeath,String nameOfDeceased,boolean vip,boolean bodyFileStatus, Incident inIncident)
    {
        this.date = date;
        this.time = time;
        this.mannerOfDeath = mannerOfDeath;
        this.nameOfDeceased = nameOfDeceased;
        this.vip = vip;
        this.bodyFileStatus = bodyFileStatus;
        this.incident = inIncident;
    }
    
    //GET METHODS
    /**
     * 
     * @return String date
     */
    public String getDate()
    {
        return date;
    }
    /**
     * 
     * @return String time
     */
    public String getTime()
    {
        return time;
    }
    /**
     * 
     * @return String mannerOfDeath
     */
    public String getMannerOfDeath()
    {
        return mannerOfDeath;
    }
    /**
     * 
     * @return String nameOfDeceased
     */
    public String getNameOfDeceased()
    {
        return nameOfDeceased;
    }
    /**
     * 
     * @return boolean vip
     */
    public boolean isVip()
    {
        return vip;
    }
    /**
     * 
     * @return boolean is case closed
     */
    public boolean isClosed()
    {
        return bodyFileStatus;
    }
    
    public Incident getIncident(){
        return this.incident;
    }
    
    //SET METHODS
    /**
     * 
     * @param date format yyyy-MM-dd
     */
    public void setDate(String date)
    {
        this.date = date;
    }
    /**
     * 
     * @param time format hh:MM:ss
     */
    public void setTime(String time)
    {
        this.time = time;
    }
    /**
     * 
     * @param mannerOfDeath String
     */
    public void setMannerOfDeath(String mannerOfDeath)
    {
        this.mannerOfDeath = mannerOfDeath;
    }
    /**
     * 
     * @param nameOfDeceased String
     */
    public void setNameOfDeceased(String nameOfDeceased)
    {
        this.nameOfDeceased = nameOfDeceased;
    }
    /**
     * 
     * @param vip boolean
     */
    public void setVip(boolean vip)
    {
        this.vip = vip;
    }
    /**
     * 
     * @param caseStatus boolean
     */
    public void setBodyFileStatus(boolean bodyFileStatus)
    {
        this.bodyFileStatus = bodyFileStatus;
    }
    
    public void setIncident(Incident inIncident){
        this.incident = inIncident;
    }
}
