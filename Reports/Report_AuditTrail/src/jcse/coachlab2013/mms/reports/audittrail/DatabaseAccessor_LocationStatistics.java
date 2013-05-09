/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package jcse.coachlab2013.mms.reports.audittrail;

/**
 *
 * @author Mubien Nakhooda Coachlab 2013
 */
public class Bean_LocationStatistics {
    private String locationName;
    private Integer numberOfErrors;
    private Integer numberOfWarnings;

    public String getLocationName() { return locationName; }
    public Integer getNumberOfErrors() { return numberOfErrors; }
    public Integer getNumberOfWarnings() { return numberOfWarnings; }

    public void setLocationName(String locationName) { this.locationName = locationName;
    }

    public void setNumberOfErrors(Integer numberOfErrors) { this.numberOfErrors = numberOfErrors;
    }

    public void setNumberOfWarnings(Integer numberOfWarnings) { this.numberOfWarnings = numberOfWarnings;
    }
    
    
    
}
