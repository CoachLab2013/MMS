package jcse.coachlab2013.mms.reports.AuditTrail;

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
public final class DatabaseAccessor_AuditTrail extends Template_DatabaseAccessor {
    
/**
 * The DatabaseAccessor_AuditTrail passes connection to the superclass 
 * @param connection 
 */                
    public DatabaseAccessor_AuditTrail(Connection connection){
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
                "`reporting_EventDate`.`dateStamp` AS `Date`,\n" +
                "`reporting_EventType`.`typeDescription` AS `Event Type`,\n" +
                "`reporting_EventLocation`.`locationName` AS `Event Location`,\n" +
                "`reporting_Employee`.`employeeName` AS `User`,\n" +
                "`reporting_Event`.`eventMessage` AS `Event Message`\n" +
                "\n" +
                "FROM `reporting database`.`fact_audittrail` AS `reporting_AuditTrail`\n" +
                "	LEFT JOIN `reporting database`.`dim_event` AS `reporting_Event` ON `reporting_Event`.`event_SK` = `reporting_AuditTrail`.`FK_Event_SK`\n" +
                "	LEFT JOIN `reporting database`.`dim_date` AS `reporting_EventDate` ON `reporting_EventDate`.`date_SK` = `reporting_AuditTrail`.`FK_DateOccured_SK`\n" +
                "	LEFT JOIN `reporting database`.`dim_employee` AS `reporting_Employee` ON `reporting_Employee`.`employee_SK` = `reporting_AuditTrail`.`FK_Employee_SK`\n" +
                "	LEFT JOIN `reporting database`.`dim_eventtype` AS `reporting_EventType` ON `reporting_EventType`.`type_SK` = `reporting_AuditTrail`.`FK_EventType_SK`\n" +
                "	LEFT JOIN `reporting database`.`dim_eventlocation` AS `reporting_EventLocation` ON `reporting_EventLocation`.`location_SK` = `reporting_AuditTrail`.`FK_EventLocation_SK`;");            
            tempSet = preparedStatement.executeQuery();
            
        } catch (SQLException ex) {
            Logger.getLogger(DatabaseAccessor_AuditTrail.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            
            return tempSet;
            
        }
    } 
    
}
