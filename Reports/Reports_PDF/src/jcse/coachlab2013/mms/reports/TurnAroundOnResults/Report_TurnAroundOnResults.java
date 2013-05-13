package jcse.coachlab2013.mms.reports.turnaroundonresults;

import java.sql.Connection;
import jcse.coachlab2013.mms.reports.ReportGenerator;
import jcse.coachlab2013.mms.reports.Template_Report;

/**
 *
 * @author Mubien Nakhooda Coachlab 2013
 */
public final class Report_TurnAroundOnResults extends Template_Report {
               
    public Report_TurnAroundOnResults(String destination, Connection connection)
    {        
            super(destination,connection);
            
            formatData();            
    }
    
    @Override
    protected void formatData() {
        
        source = "./build/classes/jcse/coachlab2013/mms/reports/turnaroundonresults/Report_TurnAroundOnResults.jrxml";
        
        parameters.put("ReportTitle", ""); 
                
        reportData = new DatabaseAccessor_TurnAroundOnResults(connection).read();
    }
    
    @Override
    public void createReport() {
        
        ReportGenerator rg = new ReportGenerator(source, parameters, reportData);
        rg.savePDF(destination); 
    }  
}