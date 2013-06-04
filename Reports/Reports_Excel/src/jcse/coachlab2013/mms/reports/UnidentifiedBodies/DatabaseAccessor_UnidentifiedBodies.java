package jcse.coachlab2013.mms.reports.UnidentifiedBodies;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import jcse.coachlab2013.mms.reports.Template_DatabaseAccessor;

/**
 * @author      Mubien Nakhooda <coachlab@jcse.org.za>
 * @since       2012-05-20          (the version of the package this class was first added to)
 */
public final class DatabaseAccessor_UnidentifiedBodies extends Template_DatabaseAccessor {
    
/**
 * The DatabaseAccessor_UnidentifiedBodies passes connection to the superclass 
 * @param connection 
 */                
    public DatabaseAccessor_UnidentifiedBodies(Connection connection){
        super(connection);
    }
    
    @Override
/**
 * creates an sql statement, executes it and returns results as a results set 
 * @return tempSet
 */    
    public ResultSet read() {        
        ResultSet tempSet = null;
        
        try {
            
            preparedStatement = connection.prepareStatement("SELECT \n" +
                "	`reporting_Incident`.`incidentNumber_BK` AS `Incident ID`,\n" +
                "	`reporting_DimBody`.`deathRegisterNumber_BK` AS `Death Register Number`,\n" +
                "	`reporting_DateReceived`.`dateStamp` AS `Date Received`,\n" +
                "	`reporting_Organisation`.`organisationName` AS `Organiation`,\n" +
                "	`reporting_DateReleased`.`dateStamp` AS `Date Released`,\n" +
                "	`reporting_MannerOfDeath`.`deathType` AS `Manner of Death`,\n" +
                "	`reporting_Status`.`StatusDescription` AS `PostMortem Status`,\n" +
                "	`reporting_Body`.`durationBodyStored` AS `Duration at Facility (Days)`\n" +
                "\n" +
                "	FROM `reporting database`.`fact_body` AS `reporting_Body`\n" +
                "		LEFT JOIN `reporting database`.`dim_body` AS `reporting_DimBody` ON `reporting_DimBody`.`body_SK` = `reporting_Body`.`FK_Body_SK`\n" +
                "		LEFT JOIN `reporting database`.`dim_status` AS `reporting_Status` ON `reporting_Status`.`Status_SK` = `reporting_Body`.`FK_BodyStatus_SK`\n" +
                "		LEFT JOIN `reporting database`.`dim_incident` AS `reporting_Incident` ON `reporting_Incident`.`incident_SK` = `reporting_Body`.`FK_Incident_SK`\n" +
                "		LEFT JOIN `reporting database`.`dim_date` as `reporting_DateReleased` ON `reporting_DateReleased`.`date_SK` = `reporting_Body`.`FK_DateReleased_SK`\n" +
                "		LEFT JOIN `reporting database`.`dim_date` as `reporting_DateReceived` ON `reporting_DateReceived`.`date_SK` = `reporting_Body`.`FK_DateReceived_SK`\n" +
                "		LEFT JOIN `reporting database`.`dim_organisation` AS `reporting_Organisation` ON `reporting_Organisation`.`organisation_SK` = `reporting_Body`.`FK_Organisation_SK`\n" +
                "		LEFT JOIN `reporting database`.`dim_mannerofdeath` AS `reporting_MannerOfDeath` ON `reporting_MannerOfDeath`.`mannerOfDeath_SK` = `reporting_Body`.`FK_MannerOfDeath_SK`\n" +
                "	\n" +
                "	WHERE `reporting_DateReceived`.`CalenderMonthKey` = MONTH(NOW());");            
            tempSet = preparedStatement.executeQuery();
            
        } catch (SQLException ex) {
            Logger.getLogger(DatabaseAccessor_UnidentifiedBodies.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            
            return tempSet;
            
        }
    } 
    
}
