import java.io.File;
import java.sql.Connection;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import jcse.coachlab2013.mms.reports.AuditTrail.Report_AuditTrail;
import jcse.coachlab2013.mms.reports.BodyFile.Report_ClosedBodyFile;
import jcse.coachlab2013.mms.reports.BodyFile.Report_OpenBodyFile;
import jcse.coachlab2013.mms.reports.DatabaseConnector;
import jcse.coachlab2013.mms.reports.DbDetail;
import jcse.coachlab2013.mms.reports.UnidentifiedBodies.Report_UnidentifiedBodies;

/**
 *
 * @author Mubien Nakhooda Coachlab 2013
 * @since 2012-05-20 the version of the package this class was first added to)
 */
public class Reports_Excel {

    /**
     * The code sets up the connection to the database through the
     * DatabaseConnector class it takes all the reports and connect them to the
     * database
     *
     * @param args the command line arguments
     * @exception SQLException
     */
    public static void main(String[] args) {
        Connection connection = new DatabaseConnector(DbDetail.staticDBDetail).init();

        new File("Reports/Monthly/Audit Trail").mkdirs();
        new File("Reports/Monthly/Body File").mkdirs();
        new File("Reports/Monthly/Unidentified Bodies").mkdirs();

        new Report_AuditTrail("./Reports/Monthly/Audit Trail/" + new SimpleDateFormat("yyyy-MMMM").format(Calendar.getInstance().getTime()) + " Report - Audit Trail", connection).createReport();
        new Report_OpenBodyFile("./Reports/Monthly/Body File/" + new SimpleDateFormat("yyyy-MMMM").format(Calendar.getInstance().getTime()) + " Report - Body File - Open", connection).createReport();
        new Report_ClosedBodyFile("./Reports/Monthly/Body File/" + new SimpleDateFormat("yyyy-MMMM").format(Calendar.getInstance().getTime()) + " Report - Body File - Closed", connection).createReport();
        new Report_UnidentifiedBodies("./Reports/Monthly/Unidentified Bodies/" + new SimpleDateFormat("yyyy-MMMM").format(Calendar.getInstance().getTime()) + " Report - Unidentified Bodies", connection).createReport();

    }
}
