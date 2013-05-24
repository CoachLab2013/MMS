package jcse.coachlab2013.mms.reports.SpecificBody;

import java.io.IOException;
import java.sql.Connection;
import java.util.logging.Level;
import java.util.logging.Logger;
import jcse.coachlab2013.mms.reports.ReportGenerator;
import jcse.coachlab2013.mms.reports.Template_Report;

/**
 *
 * @author Mubien Nakhooda Coachlab 2013
 * 
 */
public final class Report_SpecificBody extends Template_Report {
               
    public Report_SpecificBody(String destination, Connection connection)
    {        
            super(destination,connection);
            
            formatData();            
    }
    
    @Override
    protected void formatData() {
        try {
            source = getClass().getResource("/jcse/coachlab2013/mms/reports/SpecificBody/Report_SpecificBody.jrxml").openStream();
        } catch (IOException ex) {
            Logger.getLogger(Report_SpecificBody.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        parameters.put("ReportTitle", "Specific Body Report"); 
                
        reportData = new DatabaseAccessor_SpecificBody(connection).read();
    }
    
    @Override
    public void createReport() {
        
        ReportGenerator rg = new ReportGenerator(source, parameters, reportData);
        rg.savePDF(destination); 
    }  
}