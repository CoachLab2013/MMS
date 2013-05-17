package jcse.coachlab2013.mms.reports.MannerOfDeath;

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
public final class Report_MannerOfDeath extends Template_Report {
               
    public Report_MannerOfDeath(String destination, Connection connection)
    {        
            super(destination,connection);
            
            formatData();            
    }
    
    @Override
    protected void formatData() {
        
        try {
            source = getClass().getResource("/jcse/coachlab2013/mms/reports/MannerOfDeath/Report_MannerOfDeath.jrxml").openStream();
        } catch (IOException ex) {
            Logger.getLogger(Report_BodiesByOrganisation.class.getName()).log(Level.SEVERE, null, ex);
        }
        parameters.put("ReportTitle", "Manner of Death Report"); 
                
        reportData = new DatabaseAccessor_MannerOfDeath(connection).read();
    }
    
    @Override
    public void createReport() {
        
        ReportGenerator rg = new ReportGenerator(source, parameters, reportData);
        rg.savePDF(destination); 
    } 
}
