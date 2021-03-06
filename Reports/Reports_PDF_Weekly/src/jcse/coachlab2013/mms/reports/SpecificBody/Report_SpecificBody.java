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
=======
 * @author      Mubien Nakhooda <coachlab@jcse.org.za>
 * @since       2012-05-20          (the version of the package this class was first added to)
*/

public final class Report_SpecificBody extends Template_Report {
    
/**
 * The code creates the Manner of Death Report                            
 * It creates the report by fetching data from the database using the 
 * parameter connection, fill the data using the parameter formatData 
 * and saves the report in a specified directory using the parameter destination     
 * @param  connection connects to the database          
 * @param  destination gives the place where the Manner of Death Report is going to be saved
 */               
    public Report_SpecificBody(String destination, Connection connection)
    {        
            super(destination,connection);
            
            formatData();            
    }

    @Override
/**
 * The method formatData populates the Manner of Death Report 
 */    
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
/**
 * The method createReport creates the Manner of Death Report using the class "ReportGenerator"  
 * and the object rg. After the creating the report it is saved to destination 
 */    
    public void createReport() {
        
        ReportGenerator rg = new ReportGenerator(source, parameters, reportData);
        rg.savePDF(destination); 
    }  
}
