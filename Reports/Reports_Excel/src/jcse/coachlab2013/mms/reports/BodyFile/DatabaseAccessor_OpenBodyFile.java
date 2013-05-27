<<<<<<< HEAD
package jcse.coachlab2013.mms.reports.BodyFile;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import jcse.coachlab2013.mms.reports.Template_DatabaseAccessor;

/**
 * @author      Mubien Nackoda <coachlab@jcse.org.za>
 * @since       2012-05-20          (the version of the package this class was first added to)
 */
public final class DatabaseAccessor_OpenBodyFile extends Template_DatabaseAccessor {
    
/**
 * The DatabaseAccessor_OpenBodyFile passes connection to the superclass 
 * @param connection 
 * and passes it to the superclass
 */                
    public DatabaseAccessor_OpenBodyFile(Connection connection){
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
            
            preparedStatement = connection.prepareStatement("SELECT * FROM `test_db`.`dim_date`;");            
            tempSet = preparedStatement.executeQuery();
            
        } catch (SQLException ex) {
            Logger.getLogger(DatabaseAccessor_OpenBodyFile.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            
            return tempSet;
            
        }
    } 
    
}
=======
package jcse.coachlab2013.mms.reports.BodyFile;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import jcse.coachlab2013.mms.reports.Template_DatabaseAccessor;

/**
 *
 * @author Mubien Nakhooda Coachlab 2013
 */
public final class DatabaseAccessor_OpenBodyFile extends Template_DatabaseAccessor {
                
    public DatabaseAccessor_OpenBodyFile(Connection connection){
        super(connection);
    }
    
    @Override
    public ResultSet read() {        
        ResultSet tempSet = null;
        
        try {
            
            preparedStatement = connection.prepareStatement("Select\n" +
                "	`reporting_DimBody`.`deathRegisterNumber_BK` AS `Death Register No.`,\n" +
                "	`reporting_DateReceived`.`dateStamp` AS `Date Received`,\n" +
                "	`reporting_MannerOfDeath`.`deathType` AS `Manner of Death`,\n" +
                "	`reporting_Location`.`locationName` AS `Location`,\n" +
                "	`reporting_PostMortemStatus`.`StatusDescription` AS `Post Mortem Status`,\n" +
                "	`reporting_SamplesStatus`.`StatusDescription` AS `Results Outstanding`,\n" +
                "	`reporting_DateReleased`.`dateStamp` AS `Date Released`,\n" +
                "	`reporting_DimBody`.`releasedTo` AS `Released To`,\n" +
                "	`reporting_Body`.`durationBodyStored` AS `Duration Stored At Facility`,\n" +
                "	`reporting_BodyStatus`.`bodyStatusDescription` AS `Identification Status`\n" +
                "\n" +
                "	FROM `reporting database`.`fact_body` AS `reporting_Body`\n" +
                "		LEFT JOIN `reporting database`.`dim_body` AS `reporting_DimBody` ON `reporting_DimBody`.`body_SK` = `reporting_Body`.`FK_Body_SK`\n" +
                "		LEFT JOIN `reporting database`.`dim_location`  AS `reporting_Location` ON `reporting_Location`.`location_SK` = `reporting_Body`.`FK_Location`\n" +
                "		LEFT JOIN `reporting database`.`dim_date` AS `reporting_DateReleased` ON `reporting_DateReleased`.`date_SK` = `reporting_Body`.`FK_DateReleased_SK`\n" +
                "		LEFT JOIN `reporting database`.`dim_date` AS `reporting_DateReceived` ON `reporting_DateReceived`.`date_SK` = `reporting_Body`.`FK_DateReceived_SK`\n" +
                "		LEFT JOIN `reporting database`.`dim_bodystatus`  AS `reporting_BodyStatus` ON `reporting_BodyStatus`.`BodyStatus_SK` = `reporting_Body`.`FK_BodyStatus_SK`\n" +
                "		LEFT JOIN `reporting database`.`dim_status`  AS `reporting_SamplesStatus` ON `reporting_SamplesStatus`.`Status_SK` = `reporting_Body`.`FK_SamplesStatus_SK`\n" +
                "		LEFT JOIN `reporting database`.`dim_status`  AS `reporting_PostMortemStatus` ON `reporting_PostMortemStatus`.`Status_SK` = `reporting_Body`.`FK_PostMortemStatus_SK`\n" +
                "		LEFT JOIN `reporting database`.`dim_mannerofdeath` AS `reporting_MannerOfDeath` ON `reporting_MannerOfDeath`.`mannerOfDeath_SK` = `reporting_Body`.`FK_MannerOfDeath_SK`\n" +
                "	WHERE `reporting_SamplesStatus`.`status_BK` = FALSE AND `reporting_DateReleased`.`date_SK` = '19000101';");            
            tempSet = preparedStatement.executeQuery();
            
        } catch (SQLException ex) {
            Logger.getLogger(DatabaseAccessor_OpenBodyFile.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            
            return tempSet;
            
        }
    } 
    
}
>>>>>>> origin/HEAD
