package jcse.coachlab2013.mms.reports.audittrail;

/**
 *
 * @author Mubien Nakhooda Coachlab 2013
 */
public class Bean_MonthlyStatistics {
    
    private String date;
    private Integer numberOfErrors;
    private Integer numberOfWarnings;
    private Integer numberOfEvents;

    public String getDate() { return date; }
    public Integer getNumberOfErrors() { return numberOfErrors; }
    public Integer getNumberOfWarnings() { return numberOfWarnings; }
    public Integer getNumberOfEvents() { return numberOfEvents; }
    
    public void setDate(String date) { this.date = date; }
    public void setNumberOfErrors(Integer numberOfErrors) { this.numberOfErrors = numberOfErrors; }
    public void setNumberOfWarnings(Integer numberOfWarnings) { this.numberOfWarnings = numberOfWarnings; }
    public void setNumberOfEvents(Integer numberOfEvents) { this.numberOfEvents = numberOfEvents; }
    
}
