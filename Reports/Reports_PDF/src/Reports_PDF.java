import jcse.coachlab2013.mms.reports.AuditTrail.Report_AuditTrail;
import jcse.coachlab2013.mms.reports.DatabaseConnector;
import jcse.coachlab2013.mms.reports.DbDetail;
import jcse.coachlab2013.mms.reports.Statistics_MannerOfDeath.Report_MannerOfDeathStatistics;
import jcse.coachlab2013.mms.reports.Statistics_UnidentifiedBodies.Report_UnidentifiedBodiesStatistics;
import jcse.coachlab2013.mms.reports.bodiesbyorganisation.Report_BodiesByOrganisation;
import jcse.coachlab2013.mms.reports.facilitystorage.Report_FacilityStorage;
import jcse.coachlab2013.mms.reports.mannerofdeath.Report_MannerOfDeath;
import jcse.coachlab2013.mms.reports.turnaroundonresults.Report_TurnAroundOnResults;
import jcse.coachlab2013.mms.reports.specificbody.Report_SpecificBody;

/**
 *
 * @author Mubien Nakhooda Coachlab 2013
 */
public class Reports_PDF {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {    
        
        new Report_AuditTrail("./test_report1.pdf", new DatabaseConnector(DbDetail.staticDBDetail).init()).createReport();
        new Report_BodiesByOrganisation("./test_report2.pdf", new DatabaseConnector(DbDetail.staticDBDetail).init()).createReport();
        new Report_FacilityStorage("./test_report3.pdf", new DatabaseConnector(DbDetail.staticDBDetail).init()).createReport();
        new Report_MannerOfDeath("./test_report4.pdf", new DatabaseConnector(DbDetail.staticDBDetail).init()).createReport();
        new Report_MannerOfDeathStatistics("./test_report5.pdf", new DatabaseConnector(DbDetail.staticDBDetail).init()).createReport();
        new Report_UnidentifiedBodiesStatistics("./test_report6.pdf", new DatabaseConnector(DbDetail.staticDBDetail).init()).createReport();
        new Report_TurnAroundOnResults("./test_report7.pdf", new DatabaseConnector(DbDetail.staticDBDetail).init()).createReport();
        new Report_SpecificBody("./test_report.pdf", new DatabaseConnector(DbDetail.staticDBDetail).init()).createReport();
    }
}
