package jcse.coachlab2013.mms.reports.BodyFile;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import jcse.coachlab2013.mms.reports.ExcelGenerator;
import jcse.coachlab2013.mms.reports.Template_Report;

/**
 *
 * @author Mubien Nakhooda Coachlab 2013
 */
public final class Report_ClosedBodyFile extends Template_Report {
    
    public Report_ClosedBodyFile(String destination, Connection connection)
    {
        super(destination, connection);
        
        formatData();
    }
    
    @Override
    protected void formatData() {
        
        reportData = new DatabaseAccessor_ClosedBodyFile(connection).read();                            
    }
    
    @Override
    public void createReport() {
        ArrayList<String> headings = new ArrayList<>();
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
