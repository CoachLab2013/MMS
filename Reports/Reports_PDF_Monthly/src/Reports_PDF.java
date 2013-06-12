import java.io.File;
import java.sql.Connection;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import jcse.coachlab2013.mms.reports.AuditTrail.Report_AuditTrail;
import jcse.coachlab2013.mms.reports.BodiesByOrganisation.Report_BodiesByOrganisation;
import jcse.coachlab2013.mms.reports.DatabaseConnector;
import jcse.coachlab2013.mms.reports.DbDetail;
import jcse.coachlab2013.mms.reports.Statistics_MannerOfDeath.Report_MannerOfDeathStatistics;
import jcse.coachlab2013.mms.reports.Statistics_UnidentifiedBodies.Report_UnidentifiedBodiesStatistics;
import jcse.coachlab2013.mms.reports.FacilityStorage.Report_FacilityStorage;
import jcse.coachlab2013.mms.reports.MannerOfDeath.Report_MannerOfDeath;
import jcse.coachlab2013.mms.reports.TurnAroundOnResults.Report_TurnAroundOnResults;

/**
 * @author      Mubien Nakhooda <coachlab@jcse.org.za>
 * @since       2012-05-20          (the version of the package this class was first added to)
 */

public class Reports_PDF {

    /**
     * The code sets up the connection to the database through the DatabaseConnector class  
     * it takes all the reports and connect them to the database
     * @param args the command line arguments
     * @exception SQLException
    */
    public static void main(String[] args) {    
        Connection connection = new DatabaseConnector(DbDetail.staticDBDetail).init();
                
        new File("Reports/Monthly/Audit Trail").mkdirs();
        new File("Reports/Monthly/Bodies By Organisation").mkdirs();
        new File("Reports/Monthly/Facility Storage").mkdirs();
        new File("Reports/Monthly/Manner of Death").mkdirs();
        new File("Reports/Monthly/Unidentified Bodies").mkdirs();
        new File("Reports/Monthly/Turn Around on Results").mkdirs();
        
        new Report_AuditTrail("./Reports/Monthly/Audit Trail/" + new SimpleDateFormat("yyyy-MMMM").format(Calendar.getInstance().getTime()) + " Report - Audit Trail Statistics", connection).createReport();
        new Report_BodiesByOrganisation("./Reports/Monthly/Bodies By Organisation/" + new SimpleDateFormat("yyyy-MMMM").format(Calendar.getInstance().getTime()) + " Report - Bodies By Organisation", connection).createReport();
        new Report_FacilityStorage("./Reports/Monthly/Facility Storage/" + new SimpleDateFormat("yyyy-MMMM").format(Calendar.getInstance().getTime()) + " Report - Facility Storage", connection).createReport();
        new Report_MannerOfDeath("./Reports/Monthly/Manner of Death/" + new SimpleDateFormat("yyyy-MMMM").format(Calendar.getInstance().getTime()) + " Report - Manner of Death", connection).createReport();
        new Report_MannerOfDeathStatistics("./Reports/Monthly/Manner of Death/" + new SimpleDateFormat("yyyy-MMMM").format(Calendar.getInstance().getTime()) + " Report - Manner of Death Statistics", connection).createReport();
        new Report_UnidentifiedBodiesStatistics("./Reports/Monthly/Unidentified Bodies/" + new SimpleDateFormat("yyyy-MMMM").format(Calendar.getInstance().getTime()) + " Report - Unidentified Bodies Statistics", connection).createReport();
        new Report_TurnAroundOnResults("./Reports/Monthly/Turn Around on Results/" + new SimpleDateFormat("yyyy-MMMM").format(Calendar.getInstance().getTime()) + " Report - Turn Around on Results", connection).createReport();
    }
}