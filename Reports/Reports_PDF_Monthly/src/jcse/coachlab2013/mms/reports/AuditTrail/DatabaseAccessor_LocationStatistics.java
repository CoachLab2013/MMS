
/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package jcse.coachlab2013.mms.reports.AuditTrail;

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
public class DatabaseAccessor_LocationStatistics extends Template_DatabaseAccessor{
    
/**
 * connects to the database through the parameter connection
 * @param connection 
 */                
    public DatabaseAccessor_LocationStatistics(Connection connection){
        super(connection);
    }

/**
 * creates an sql statement, executes it and returns results as a results set. 
 * @return tempSet
 */    
    @Override
    public ResultSet read() {        
        ResultSet tempSet = null;
        
        try {
            
            preparedStatement = connection.prepareStatement("SELECT `reporting_EventLocation`.`locationName` AS `locationName`,\n" +
                "SUM(`reporting_AuditTrail`.`countWarning`) AS `numberOfErrors`,\n" +
                "SUM(`reporting_AuditTrail`.`countError`) AS `numberOfWarnings`\n" +
                "\n" +
                "FROM `reporting database`.`fact_audittrail`	AS `reporting_AuditTrail`\n" +
                "	LEFT JOIN `reporting database`.`dim_date` AS `reporting_EventDate` ON `reporting_EventDate`.`date_SK` = `reporting_AuditTrail`.`FK_DateOccured_SK`\n" +
                "	LEFT JOIN `reporting database`.`dim_eventlocation` AS `reporting_EventLocation` ON `reporting_EventLocation`.`location_SK` = `reporting_AuditTrail`.`FK_EventLocation_SK`\n" +
                "	GROUP BY `reporting_EventLocation`.`location_SK`");            
            tempSet = preparedStatement.executeQuery();
            
        } catch (SQLException ex) {
            Logger.getLogger(DatabaseAccessor_LocationStatistics.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            
            return tempSet;
            
        }
    }     
}
