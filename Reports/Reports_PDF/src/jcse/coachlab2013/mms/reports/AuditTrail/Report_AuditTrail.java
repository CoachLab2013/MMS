package jcse.coachlab2013.mms.reports.AuditTrail;

import java.io.IOException;
import java.sql.Connection;
import jcse.coachlab2013.mms.reports.ReportGenerator;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import jcse.coachlab2013.mms.reports.Template_Report;

/**
 * @author      Mubien Nackoda <coachlab@jcse.org.za>
 * @since       2012-05-20          (the version of the package this class was first added to)
 */

public final class Report_AuditTrail extends Template_Report {
    
/**
 * The code creates the Audit Trail report
 * It creates the report by fetching data from the database using the 
 * parameter connection, fill the data using the parameter formatData 
 * and saves the report in a specified directory using the parameter destination 
 * @param destination connects to the database
 * @param connection gives the place where the Audit trail report is going to be saved
 */               
    public Report_AuditTrail(String destination, Connection connection)
    {        
            super(destination,connection);
            
            formatData();            
    }
        
    @Override
/**
 * The method formatData populates the Audit trail report 
 * @exception IOException
 */    
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
/**
 * The method createReport creates the Audit trail report using the class "ReportGenerator"  
 * and the object rg. After the creating the report it is saved to destination 
 */    
    public void createReport() {
        ReportGenerator rg = new ReportGenerator(sourceArray, parameterArray, reportDataArray);
        rg.savePDF(destination);         
    }
}  

