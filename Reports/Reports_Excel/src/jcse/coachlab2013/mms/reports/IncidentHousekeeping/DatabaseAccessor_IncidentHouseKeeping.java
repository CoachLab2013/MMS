<<<<<<< HEAD
package jcse.coachlab2013.mms.reports.IncidentHousekeeping;

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
public final class DatabaseAccessor_IncidentHouseKeeping extends Template_DatabaseAccessor {
    
/**
 * The DatabaseAccessor_IncidentHouseKeeping passes connection to the superclass 
 * @param connection 
 */                
    public DatabaseAccessor_IncidentHouseKeeping(Connection connection){
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
                "	`reporting_DimIncident`.`incidentNumber_BK` AS `Incident ID`,\n" +
                "	`reporting_DimIncident`.`SAPSReference` AS `SAPS Reference`,\n" +
                "	`reporting_DateOpened`.`dateStamp` AS `Date of Incident`,\n" +
                "	`reporting_MannerOfDeath`.`deathType` AS `Manner of Death`,\n" +
                "	`reporting_Location`.`locationName` AS `Location`,\n" +
                "	`reporting_Organisation`.`organisationName` AS `Organisation`,\n" +
                "	CONCAT(`reporting_Caller`.`callerName`, \" \", `reporting_Caller`.`callerContact`) AS `Caller Details`,\n" +
                "	`reporting_Incident`.`incidentDuration` AS `Duration Incident Open (Days)`\n" +
                "\n" +
                "	FROM `reporting database`.`fact_incident` AS `reporting_Incident`\n" +
                "		LEFT JOIN `reporting database`.`dim_date` AS `reporting_DateOpened` ON `reporting_DateOpened`.`date_SK` = `reporting_Incident`.`FK_DateOfIncident_SK`\n" +
                "		LEFT JOIN `reporting database`.`dim_caller` AS `reporting_Caller` ON `reporting_Caller`.`caller_SK` = `reporting_Incident`.`FK_Incident_SK`\n" +
                "		LEFT JOIN `reporting database`.`dim_location` AS `reporting_Location` ON `reporting_Location`.`location_SK` = `reporting_Incident`.`FK_Location_SK`\n" +
                "		LEFT JOIN `reporting database`.`dim_incident` AS `reporting_DimIncident` ON `reporting_DimIncident`.`incident_SK` = `reporting_Incident`.`FK_Incident_SK`\n" +
                "		LEFT JOIN `reporting database`.`dim_organisation` AS `reporting_Organisation` ON `reporting_Organisation`.`organisation_SK` = `reporting_Incident`.`FK_Organisation_SK`\n" +
                "		LEFT JOIN `reporting database`.`dim_mannerofdeath` AS `reporting_MannerOfDeath` ON `reporting_MannerOfDeath`.`mannerOfDeath_SK` = `reporting_Incident`.`FK_MannerOfDeath_SK`\n" +
                "\n" +
                "		WHERE `reporting_Incident`.`incidentDuration` > 1;");            
            tempSet = preparedStatement.executeQuery();
            
        } catch (SQLException ex) {
            Logger.getLogger(DatabaseAccessor_IncidentHouseKeeping.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            
            return tempSet;
            
        }
    }    
=======
package jcse.coachlab2013.mms.reports.IncidentHousekeeping;

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
public final class DatabaseAccessor_IncidentHouseKeeping extends Template_DatabaseAccessor {
                
    public DatabaseAccessor_IncidentHouseKeeping(Connection connection){
        super(connection);
    }
    
    @Override
    public ResultSet read() {        
        ResultSet tempSet = null;
        
        try {
            
            preparedStatement = connection.prepareStatement("SELECT \n" +
                "	`reporting_DimIncident`.`incidentNumber_BK` AS `Incident ID`,\n" +
                "	`reporting_DimIncident`.`SAPSReference` AS `SAPS Reference`,\n" +
                "	`reporting_DateOpened`.`dateStamp` AS `Date of Incident`,\n" +
                "	`reporting_MannerOfDeath`.`deathType` AS `Manner of Death`,\n" +
                "	`reporting_Location`.`locationName` AS `Location`,\n" +
                "	`reporting_Organisation`.`organisationName` AS `Organisation`,\n" +
                "	CONCAT(`reporting_Caller`.`callerName`, \" \", `reporting_Caller`.`callerContact`) AS `Caller Details`,\n" +
                "	`reporting_Incident`.`incidentDuration` AS `Duration Incident Open (Days)`\n" +
                "\n" +
                "	FROM `reporting database`.`fact_incident` AS `reporting_Incident`\n" +
                "		LEFT JOIN `reporting database`.`dim_date` AS `reporting_DateOpened` ON `reporting_DateOpened`.`date_SK` = `reporting_Incident`.`FK_DateOfIncident_SK`\n" +
                "		LEFT JOIN `reporting database`.`dim_caller` AS `reporting_Caller` ON `reporting_Caller`.`caller_SK` = `reporting_Incident`.`FK_Incident_SK`\n" +
                "		LEFT JOIN `reporting database`.`dim_location` AS `reporting_Location` ON `reporting_Location`.`location_SK` = `reporting_Incident`.`FK_Location_SK`\n" +
                "		LEFT JOIN `reporting database`.`dim_incident` AS `reporting_DimIncident` ON `reporting_DimIncident`.`incident_SK` = `reporting_Incident`.`FK_Incident_SK`\n" +
                "		LEFT JOIN `reporting database`.`dim_organisation` AS `reporting_Organisation` ON `reporting_Organisation`.`organisation_SK` = `reporting_Incident`.`FK_Organisation_SK`\n" +
                "		LEFT JOIN `reporting database`.`dim_mannerofdeath` AS `reporting_MannerOfDeath` ON `reporting_MannerOfDeath`.`mannerOfDeath_SK` = `reporting_Incident`.`FK_MannerOfDeath_SK`\n" +
                "\n" +
                "		WHERE `reporting_Incident`.`incidentDuration` > 1;");            
            tempSet = preparedStatement.executeQuery();
            
        } catch (SQLException ex) {
            Logger.getLogger(DatabaseAccessor_IncidentHouseKeeping.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            
            return tempSet;
            
        }
    }    
>>>>>>> origin/HEAD
}