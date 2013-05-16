package jcse.coachlab2013.mms.reports.Statistics_MannerOfDeath;

import java.io.IOException;
import java.sql.Connection;
import java.util.logging.Level;
import java.util.logging.Logger;
import jcse.coachlab2013.mms.reports.ReportGenerator;
import jcse.coachlab2013.mms.reports.Template_Report;
import jcse.coachlab2013.mms.reports.BodiesByOrganisation.Report_BodiesByOrganisation;

/**
 *
 * @author Mubien Nakhooda Coachlab 2013
 */
public final class Report_MannerOfDeathStatistics extends Template_Report {
               
    public Report_MannerOfDeathStatistics(String destination, Connection connection)
    {        
            super(destination,connection);
            
            formatData();            
    }
    
    @Override
    protected void formatData() {
        
        try {
            source = getClass().getResource("/jcse/coachlab2013/mms/reports/Statistics_MannerOfDeath/Report_MannerOfDeathStatistics.jrxml").openStream();
        } catch (IOException ex) {
            Logger.getLogger(Report_BodiesByOrganisation.class.getName()).log(Level.SEVERE, null, ex);
        }
        parameters.put("ReportTitle", "Manner of Death Statistics Report"); 
                
        reportData = new DatabaseAccessor_MannerOfDeathStatistics(connection).read();
    }
    
    @Override
    public void createReport() {
        
        ReportGenerator rg = new ReportGenerator(source, parameters, reportData);
        rg.savePDF(destination); 
    } 
}
