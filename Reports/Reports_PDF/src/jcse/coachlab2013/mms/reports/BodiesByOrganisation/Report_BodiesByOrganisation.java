<<<<<<< HEAD
=======

>>>>>>> origin/master
package jcse.coachlab2013.mms.reports.BodiesByOrganisation;

import java.io.IOException;
import java.sql.Connection;
import java.util.logging.Level;
import java.util.logging.Logger;
import jcse.coachlab2013.mms.reports.ReportGenerator;
import jcse.coachlab2013.mms.reports.Template_Report;

/**
 * @author      Mubien Nackoda <coachlab@jcse.org.za>
 * @since       2012-05-20          (the version of the package this class was first added to)
 */

public final class Report_BodiesByOrganisation extends Template_Report {
    
/**
 * The code creates the Bodies by Organisation 
 * It creates the report by fetching data from the database using the 
 * parameter connection, fill the data using the parameter formatData 
 * and saves the report in a specified directory using the parameter destination 
 * @param destination connects to the database
 * @param connection gives the place where the Bodies by Organization report is going to be saved
 * the it passes the parameters to the superclass
 */               
    public Report_BodiesByOrganisation(String destination, Connection connection)
    {        
            super(destination,connection);
            
            formatData();            
    }

    @Override
/**
 * The method formatData populates the Bodies by Organisation report  
 */    
    protected void formatData() {
        try {
            source = getClass().getResource("/jcse/coachlab2013/mms/reports/BodiesByOrganisation/Report_BodiesByOrganisation.jrxml").openStream();
        } catch (IOException ex) {
            Logger.getLogger(Report_BodiesByOrganisation.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        parameters.put("ReportTitle", "Bodies by Organisation Report"); 
                
        reportData = new DatabaseAccessor_BodiesByOrganisation(connection).read();
    }
    
    @Override
/**
 * The method createReport creates the Bodies by Organisation using the class "ReportGenerator"  
 * and the object rg. After the creating the report it is saved to destination 
 */    
    public void createReport() {
        
        ReportGenerator rg = new ReportGenerator(source, parameters, reportData);
        rg.savePDF(destination); 
    }  
}