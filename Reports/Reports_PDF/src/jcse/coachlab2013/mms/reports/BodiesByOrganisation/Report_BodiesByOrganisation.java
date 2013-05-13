package jcse.coachlab2013.mms.reports.bodiesbyorganisation;

import java.sql.Connection;
import jcse.coachlab2013.mms.reports.BodiesByOrganisation.DatabaseAccessor_BodiesByOrganisation;
import jcse.coachlab2013.mms.reports.ReportGenerator;
import jcse.coachlab2013.mms.reports.Template_Report;

/**
 *
 * @author Mubien Nakhooda Coachlab 2013
 * 
 */
public final class Report_BodiesByOrganisation extends Template_Report {
               
    public Report_BodiesByOrganisation(String destination, Connection connection)
    {        
            super(destination,connection);
            
            formatData();            
    }
    
    @Override
    protected void formatData() {
        
        source = "./build/classes/jcse/coachlab2013/mms/reports/bodiesbyorganisation/Report_BodiesByOrganisation.jrxml";
        
        parameters.put("ReportTitle", ""); 
                
        reportData = new DatabaseAccessor_BodiesByOrganisation(connection).read();
    }
    
    @Override
    public void createReport() {
        
        ReportGenerator rg = new ReportGenerator(source, parameters, reportData);
        rg.savePDF(destination); 
    }  
}