
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.sql.Connection;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.logging.Level;
import java.util.logging.Logger;
import jcse.coachlab2013.mms.reports.AuditTrail.Report_AuditTrail;
import jcse.coachlab2013.mms.reports.BodyFile.Report_ClosedBodyFile;
import jcse.coachlab2013.mms.reports.DatabaseConnector;
import jcse.coachlab2013.mms.reports.DbDetail;
import jcse.coachlab2013.mms.reports.IncidentHousekeeping.Report_IncidentHouseKeeping;
import jcse.coachlab2013.mms.reports.OutstandingResults.Report_OutstandingResults;
import jcse.coachlab2013.mms.reports.UnidentifiedBodies.Report_UnidentifiedBodies;

/**
 *
 * @author Mubien Nakhooda Coachlab 2013
 * @since 2012-05-20 the version of the package this class was first added to)
 */
public class Reports_Excel {

    /**
     * The code sets up the connection to the database through the DatabaseConnector class  
     * it takes all the reports and connect them to the database
     * @param args the command line arguments
     * @exception SQLException
     */
    public static void main(String[] args) {
        try
        {
            try (Connection connection = new DatabaseConnector(DbDetail.staticDBDetail).init()) {
                
                Files.createDirectories(Paths.get("./Reports/Excel"));
                
                new Report_AuditTrail("./Reports/Excel/" + new SimpleDateFormat("yyyy-MM-dd").format(Calendar.getInstance().getTime()) + " Report - Audit Trail", connection).createReport();
                new Report_ClosedBodyFile("./Reports/Excel/" + new SimpleDateFormat("yyyy-MM-dd").format(Calendar.getInstance().getTime()) + " Report - Body File - Open", connection).createReport();
                new Report_ClosedBodyFile("./Reports/Excel/" + new SimpleDateFormat("yyyy-MM-dd").format(Calendar.getInstance().getTime()) + " Report - Body File - Closed", connection).createReport();
                new Report_IncidentHouseKeeping("./Reports/Excel/" + new SimpleDateFormat("yyyy-MM-dd").format(Calendar.getInstance().getTime()) + " Report - Incident Housekeeping", connection).createReport();
                new Report_OutstandingResults("./Reports/Excel/" + new SimpleDateFormat("yyyy-MM-dd").format(Calendar.getInstance().getTime()) + " Report - Outstanding Results", connection).createReport();
                new Report_UnidentifiedBodies("./Reports/Excel/" + new SimpleDateFormat("yyyy-MM-dd").format(Calendar.getInstance().getTime()) + " Report - Unidentified Bodies", connection).createReport();
            } 
        } catch (SQLException | IOException ex) {
            Logger.getLogger(Reports_Excel.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
