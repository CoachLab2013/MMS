
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
 */
public class Reports_Excel {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        try
        {
            try (Connection connection = new DatabaseConnector(DbDetail.staticDBDetail).init()) {
                new Report_AuditTrail("./" + new SimpleDateFormat("yyyy-MM-dd").format(Calendar.getInstance().getTime()) + " Audit Trail", connection).createReport();
                new Report_ClosedBodyFile("./" + new SimpleDateFormat("yyyy-MM-dd").format(Calendar.getInstance().getTime()) + " Body File - Open", connection).createReport();
                new Report_ClosedBodyFile("./" + new SimpleDateFormat("yyyy-MM-dd").format(Calendar.getInstance().getTime()) + " Body File - Closed", connection).createReport();
                new Report_IncidentHouseKeeping("./" + new SimpleDateFormat("yyyy-MM-dd").format(Calendar.getInstance().getTime()) + " Incident Housekeeping", connection).createReport();
                new Report_OutstandingResults("./" + new SimpleDateFormat("yyyy-MM-dd").format(Calendar.getInstance().getTime()) + " Outstanding Results", connection).createReport();
                new Report_UnidentifiedBodies("./" + new SimpleDateFormat("yyyy-MM-dd").format(Calendar.getInstance().getTime()) + " Unidentified Bodies", connection).createReport();
            }
        } catch (SQLException ex) {
            Logger.getLogger(Reports_Excel.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
