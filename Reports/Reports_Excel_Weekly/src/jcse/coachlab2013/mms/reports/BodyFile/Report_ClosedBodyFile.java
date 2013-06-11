package jcse.coachlab2013.mms.reports.BodyFile;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import jcse.coachlab2013.mms.reports.ExcelGenerator;
import jcse.coachlab2013.mms.reports.Template_Report;

/**
 * @author      Mubien Nakhooda <coachlab@jcse.org.za>
 * @since       2012-05-20          (the version of the package this class was first added to)
 */
public final class Report_ClosedBodyFile extends Template_Report {
    
/**
 * The code creates the Report_ClosedBodyFile 
 * It creates the report by fetching data from the database using the 
 * parameter connection, fill the data using the parameter formatData 
 * and saves the report in a specified directory using the parameter destination 
 * @param destination connects to the database
 * @param connection gives the place where the Report_ClosedBodyFile report is going to be saved
 * the it passes the parameters to the superclass
 */    
    public Report_ClosedBodyFile(String destination, Connection connection)
    {
        super(destination, connection);
        
        formatData();
    }
    
    @Override
/**
 * The method formatData populates the Report_ClosedBodyFile  
 */    
    protected void formatData() {
        
        reportData = new DatabaseAccessor_ClosedBodyFile(connection).read();                            
    }
    
    @Override
/**
 * The method createReport creates the Report_ClosedBodyFile using the class "ExcelGenerator"  
 * After the creating the report it is saved to destination 
 */    
    public void createReport() {
        ArrayList<String> headings = new ArrayList<String>();
        try {
            for (int i = 1; i <= reportData.getMetaData().getColumnCount(); i++) {
                headings.add(reportData.getMetaData().getColumnLabel(i));
            }
        } catch (SQLException ex) {
            Logger.getLogger(Report_ClosedBodyFile.class.getName()).log(Level.SEVERE, null, ex);
        }
        ExcelGenerator excel = new ExcelGenerator("Body File Report \nClosed Files", headings, reportData);
        excel.printReport(destination);
        
    }    
}
