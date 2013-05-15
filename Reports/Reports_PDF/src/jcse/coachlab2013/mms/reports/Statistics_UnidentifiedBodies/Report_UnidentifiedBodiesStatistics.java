package jcse.coachlab2013.mms.reports.Statistics_UnidentifiedBodies;

import java.sql.Connection;
import jcse.coachlab2013.mms.reports.ReportGenerator;
import jcse.coachlab2013.mms.reports.Template_Report;

/**
 *
 * @author Mubien Nakhooda Coachlab 2013
 */
public final class Report_UnidentifiedBodiesStatistics extends Template_Report {
               
    public Report_UnidentifiedBodiesStatistics(String destination, Connection connection)
    {        
            super(destination,connection);
            
            formatData();            
    }
    
    @Override
    protected void formatData() {
        
        source = "./build/classes/jcse/coachlab2013/mms/reports/Statistics_UnidentifiedBodies/Report_UnidentifiedBodiesStatistics.jrxml";
        
        parameters.put("ReportTitle", "Unidentified Bodies Statistics"); 
                
        reportData = new DatabaseAccessor_UnidentifiedBodiesStatistics(connection).read();
    }
    
    @Override
    public void createReport() {
        
        ReportGenerator rg = new ReportGenerator(source, parameters, reportData);
        rg.savePDF(destination); 
    }  
}
