
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
        
        new Report_AuditTrail("./test_report1", new DatabaseConnector(DbDetail.staticDBDetail).init()).createReport();
        new Report_ClosedBodyFile("./test_report2", new DatabaseConnector(DbDetail.staticDBDetail).init()).createReport();
        new Report_ClosedBodyFile("./test_report3", new DatabaseConnector(DbDetail.staticDBDetail).init()).createReport();
        new Report_IncidentHouseKeeping("./test_report4", new DatabaseConnector(DbDetail.staticDBDetail).init()).createReport();
        new Report_OutstandingResults("./test_report5", new DatabaseConnector(DbDetail.staticDBDetail).init()).createReport();
        new Report_UnidentifiedBodies("./test_report6", new DatabaseConnector(DbDetail.staticDBDetail).init()).createReport();
    }
}
