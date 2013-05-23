<<<<<<< HEAD
package jcse.coachlab2013.mms.reports.TurnAroundOnResults;

import java.io.IOException;
import java.sql.Connection;
import java.util.logging.Level;
import java.util.logging.Logger;
import jcse.coachlab2013.mms.reports.ReportGenerator;
import jcse.coachlab2013.mms.reports.Template_Report;
import jcse.coachlab2013.mms.reports.BodiesByOrganisation.Report_BodiesByOrganisation;

/**
 * @author      Mubien Nackoda <coachlab@jcse.org.za>
 * @since       2012-05-20          (the version of the package this class was first added to)
 */
public final class Report_TurnAroundOnResults extends Template_Report {
    
/**
 * The code creates the Turn Around on Results Report
 * parameter connection, fill the data using the parameter formatData
 * and saves the report in a specified directory using the parameter destination  
 * @param destination connects to the database
 * @param connection gives the place where the Manner of Death Report is going to be saved
 */    
    public Report_TurnAroundOnResults(String destination, Connection connection)
    {        
            super(destination,connection);
            
            formatData();            
    }
    
    @Override
/**
 * The method formatData populates the Turn Around on Results Report  
 */     
    protected void formatData() {
        
        try {
            source = getClass().getResource("/jcse/coachlab2013/mms/reports/TurnAroundOnResults/Report_TurnAroundOnResults.jrxml").openStream();
        } catch (IOException ex) {
            Logger.getLogger(Report_BodiesByOrganisation.class.getName()).log(Level.SEVERE, null, ex);
        }
        parameters.put("ReportTitle", "Turn Around on Results Report"); 
                
        reportData = new DatabaseAccessor_TurnAroundOnResults(connection).read();
    }
 
    @Override
/**
 * The method createReport creates theTurn Around on Results Report using the class "ReportGenerator"  
 * and the object rg. After the creating the report it is saved to destination 
 */    
    public void createReport() {
        
        ReportGenerator rg = new ReportGenerator(source, parameters, reportData);
        rg.savePDF(destination); 
    }  
=======
package jcse.coachlab2013.mms.reports.TurnAroundOnResults;

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
public final class Report_TurnAroundOnResults extends Template_Report {
               
    public Report_TurnAroundOnResults(String destination, Connection connection)
    {        
            super(destination,connection);
            
            formatData();            
    }
    
    @Override
    protected void formatData() {
        
        try {
            source = getClass().getResource("/jcse/coachlab2013/mms/reports/TurnAroundOnResults/Report_TurnAroundOnResults.jrxml").openStream();
        } catch (IOException ex) {
            Logger.getLogger(Report_BodiesByOrganisation.class.getName()).log(Level.SEVERE, null, ex);
        }
        parameters.put("ReportTitle", "Turn Around on Results Report"); 
                
        reportData = new DatabaseAccessor_TurnAroundOnResults(connection).read();
    }
    
    @Override
    public void createReport() {
        
        ReportGenerator rg = new ReportGenerator(source, parameters, reportData);
        rg.savePDF(destination); 
    }  
>>>>>>> origin/HEAD
}