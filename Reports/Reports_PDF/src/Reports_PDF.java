import java.sql.Connection;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.logging.Level;
import java.util.logging.Logger;
import jcse.coachlab2013.mms.reports.AuditTrail.Report_AuditTrail;
import jcse.coachlab2013.mms.reports.DatabaseConnector;
import jcse.coachlab2013.mms.reports.DbDetail;
import jcse.coachlab2013.mms.reports.Statistics_MannerOfDeath.Report_MannerOfDeathStatistics;
import jcse.coachlab2013.mms.reports.Statistics_UnidentifiedBodies.Report_UnidentifiedBodiesStatistics;
import jcse.coachlab2013.mms.reports.bodiesbyorganisation.Report_BodiesByOrganisation;
import jcse.coachlab2013.mms.reports.facilitystorage.Report_FacilityStorage;
import jcse.coachlab2013.mms.reports.mannerofdeath.Report_MannerOfDeath;
import jcse.coachlab2013.mms.reports.turnaroundonresults.Report_TurnAroundOnResults;

/**
 *
 * @author Mubien Nakhooda Coachlab 2013
 */
public class Reports_PDF {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {    
        try
        {
            Connection connection = new DatabaseConnector(DbDetail.staticDBDetail).init();
                new Report_AuditTrail("./" + new SimpleDateFormat("yyyy-MM-dd").format(Calendar.getInstance().getTime()) + " Report - Audit Trail Statistics", connection).createReport();
                new Report_BodiesByOrganisation("./" + new SimpleDateFormat("yyyy-MM-dd").format(Calendar.getInstance().getTime()) + " Report - Bodies By Organisation", connection).createReport();
                //new Report_FacilityStorage("./" + new SimpleDateFormat("yyyy-MM-dd").format(Calendar.getInstance().getTime()) + " Report - Facility Storage", connection).createReport();
                new Report_MannerOfDeath("./" + new SimpleDateFormat("yyyy-MM-dd").format(Calendar.getInstance().getTime()) + " Report - Manner of Death", connection).createReport();
                new Report_MannerOfDeathStatistics("./" + new SimpleDateFormat("yyyy-MM-dd").format(Calendar.getInstance().getTime()) + " Report - Manner of Death Statistics", connection).createReport();
                new Report_UnidentifiedBodiesStatistics("./" + new SimpleDateFormat("yyyy-MM-dd").format(Calendar.getInstance().getTime()) + " Report - Unidentified Bodies Statistics", connection).createReport();
                new Report_TurnAroundOnResults("./" + new SimpleDateFormat("yyyy-MM-dd").format(Calendar.getInstance().getTime()) + " Report - Turn Around on Results", connection).createReport();  
            connection.close();
        } catch (SQLException ex) {
            Logger.getLogger(Reports_PDF.class.getName()).log(Level.SEVERE, null, ex);
        }    
    }
}
