package jcse.coachlab2013.mms.reports.FacilityStorage;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import jcse.coachlab2013.mms.reports.ReportGenerator;
import jcse.coachlab2013.mms.reports.Template_Report;
import jcse.coachlab2013.mms.reports.BodiesByOrganisation.Report_BodiesByOrganisation;

/**
 * @author      Mubien Nackoda <coachlab@jcse.org.za>
 * @since       2012-05-20          (the version of the package this class was first added to)
 */

public final class Report_FacilityStorage extends Template_Report {
    
/**
 * The code creates the Facility Storage Report
 * It creates the report by fetching data from the database using the 
 * parameter connection, fill the data using the parameter formatData 
 * and saves the report in a specified directory using the parameter destination 
 * @param destination connects to the database
 * @param connection gives the place where the Facility Storage Report is going to be saved
 */               
    public Report_FacilityStorage(String destination, Connection connection)
    {        
            super(destination,connection);
            
            formatData();            
    }
    
    @Override
/**
 * The method formatData populates the Facility Storage Report 
 * The method populates arrays with the following parameters 
 */    
    protected void formatData() {
        try {
            source = getClass().getResource("/jcse/coachlab2013/mms/reports/FacilityStorage/Report_FacilityStorage.jrxml").openStream();
                    
            parameters.put("ReportTitle", "Facility Storage Report");
            
            ResultSet param = connection.prepareStatement("SELECT `facilityTotalStorageCapacity` AS `TotalBins` FROM `reporting database`.`dim_facility` WHERE `facility_SK` = 1;").executeQuery();
            param.first();            
            parameters.put("TotalBins", param.getInt("TotalBins"));  
            
            param = connection.prepareStatement("SELECT IFNULL(SUM(`reporting_Body`.`countBody`) / DAY(LAST_DAY(NOW())), 0) AS `avgIntake` \n" +
                "		FROM `reporting database`.`fact_body` AS `reporting_Body`\n" +
                "			LEFT JOIN `reporting database`.`dim_date` AS `etl_DateReceived` ON (`etl_DateReceived`.`date_SK` = `reporting_Body`.`FK_DateReceived_SK`)\n" +
                "				WHERE MONTH(`etl_DateReceived`.`datestamp`) = MONTH(NOW());").executeQuery();
            param.first();            
            parameters.put("avgIntake", param.getInt("avgIntake"));  
            
            param = connection.prepareStatement("SELECT IFNULL(SUM(`reporting_Body`.`countBody`) / DAY(LAST_DAY(NOW())), 0) AS `avgOutput` \n" +
                "		FROM `reporting database`.`fact_body` AS `reporting_Body`\n" +
                "			LEFT JOIN `reporting database`.`dim_date` AS `etl_DateReleased` ON (`etl_DateReleased`.`date_SK` = `reporting_Body`.`FK_DateReleased_SK`)\n" +
                "				WHERE MONTH(`etl_DateReleased`.`datestamp`) = MONTH(NOW());").executeQuery();
            param.first();
            parameters.put("avgOutput", param.getInt("avgOutput")); 
                        
            reportData = new DatabaseAccessor_FacilityStorage(connection).read();
            
        } catch (IOException ex) {
            Logger.getLogger(Report_BodiesByOrganisation.class.getName()).log(Level.SEVERE, null, ex);

        } catch (SQLException ex) {
            Logger.getLogger(Report_FacilityStorage.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    @Override
/**
 * The method createReport creates the Facility Storage Report using the class "ReportGenerator"  
 * and the object rg. After the creating the report it is saved to destination 
 */    
    public void createReport() {
        
        ReportGenerator rg = new ReportGenerator(source, parameters, reportData);
        rg.savePDF(destination); 
    }  
}


        
