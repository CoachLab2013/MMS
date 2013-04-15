package jcse.coachlab2013.mms.reports.audittrail;

/**
 *
 * @author Mubien Nakhooda Coachlab 2013
 */
public class Bean_EmployeeStatistics {
    private String employeeName;
    private Integer numberOfErrorsAndWarnings;

    public String getEmployeeName() { return employeeName; }

    public Integer getNumberOfErrorsAndWarnings() { return numberOfErrorsAndWarnings; }

    public void setEmployeeName(String employeeName) {
        this.employeeName = employeeName; }

    public void setNumberOfErrorsAndWarnings(Integer numberOfErrorsAndWarnings) { 
        this.numberOfErrorsAndWarnings = numberOfErrorsAndWarnings; }
    
    
}
