package jcse.coachlab2013.mms.reports.facilitystorage;

import java.sql.Connection;
import jcse.coachlab2013.mms.reports.ReportGenerator;
import jcse.coachlab2013.mms.reports.Template_Report;

/**
 *
 * @author Mubien Nakhooda Coachlab 2013
 */
public final class Report_FacilityStorage extends Template_Report {
               
    public Report_FacilityStorage(String destination, Connection connection)
    {        
            super(destination,connection);
            
            formatData();            
    }
    
    @Override
    protected void formatData() {
        
        source = "./build/classes/jcse/coachlab2013/mms/reports/facilitystorage/Report_FacilityStorage.jrxml";
        
        parameters.put("ReportTitle", ""); 
        parameters.put("TotalBins", "");  
        parameters.put("avgIntake", "'");  
        parameters.put("avgOutput", "");   
        parameters.put("timeTillFull", "");
        
        reportData = new DatabaseAccessor_FacilityStorage(connection).read();
    }
    
    @Override
    public void createReport() {
        
        ReportGenerator rg = new ReportGenerator(source, parameters, reportData);
        rg.savePDF(destination); 
    }  
}


        
