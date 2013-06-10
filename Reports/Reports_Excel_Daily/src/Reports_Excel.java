import java.io.File;
import java.sql.Connection;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import jcse.coachlab2013.mms.reports.DatabaseConnector;
import jcse.coachlab2013.mms.reports.DbDetail;
import jcse.coachlab2013.mms.reports.IncidentHousekeeping.Report_IncidentHouseKeeping;

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

        new File("Reports/Daily/").mkdirs();

        new Report_IncidentHouseKeeping("./Reports/Daily/" + new SimpleDateFormat("yyyy-MMMM-dd").format(Calendar.getInstance().getTime()) + " Report - Incident Housekeeping", connection).createReport();
    }
}
