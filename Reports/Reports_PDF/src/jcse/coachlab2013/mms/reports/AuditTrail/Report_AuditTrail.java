package jcse.coachlab2013.mms.reports.AuditTrail;

import java.io.IOException;
import java.sql.Connection;
import jcse.coachlab2013.mms.reports.ReportGenerator;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import jcse.coachlab2013.mms.reports.Template_Report;

/**
 *
 * @author Mubien Nakhooda Coachlab 2013
 */
public final class Report_AuditTrail extends Template_Report {
               
    public Report_AuditTrail(String destination, Connection connection)
    {        
            super(destination,connection);
            
            formatData();            
    }
    
    @Override
    protected void formatData() {
        try {
        sourceArray = new ArrayList<>();        
        sourceArray.add(getClass().getResource("/jcse/coachlab2013/mms/reports/AuditTrail/Report_MonthlyStatistics.jrxml").openStream());
        sourceArray.add(getClass().getResource("/jcse/coachlab2013/mms/reports/AuditTrail/Report_EmployeeStatistics.jrxml").openStream());
        sourceArray.add(getClass().getResource("/jcse/coachlab2013/mms/reports/AuditTrail/Report_LocationStatistics.jrxml").openStream());
       
        } catch (IOException ex) {
            Logger.getLogger(Report_AuditTrail.class.getName()).log(Level.SEVERE, null, ex);
        }
        parameters.put("ReportTitle", "Audit Trail - Statistics Report"); 
        
        parameterArray = new ArrayList<>();
        parameterArray.add(parameters);
        parameterArray.add(parameters);
        parameterArray.add(parameters);
        
        reportDataArray = new ArrayList<>();
        reportDataArray.add(new DatabaseAccessor_MonthlyStatistics(connection).read());
        reportDataArray.add(new DatabaseAccessor_EmployeeStatistics(connection).read());
        reportDataArray.add(new DatabaseAccessor_LocationStatistics(connection).read());
    }
    
    @Override
    public void createReport() {
        ReportGenerator rg = new ReportGenerator(sourceArray, parameterArray, reportDataArray);
        rg.savePDF(destination);         
    }
}  

