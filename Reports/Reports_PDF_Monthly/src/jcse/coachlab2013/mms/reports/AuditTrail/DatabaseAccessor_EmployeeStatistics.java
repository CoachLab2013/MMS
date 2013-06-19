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
public class DatabaseAccessor_EmployeeStatistics extends Template_DatabaseAccessor{
    
/**
 *  The code allows access to the connection to database
 * @param connection connects to the database
 */                
    public DatabaseAccessor_EmployeeStatistics(Connection connection){
        super(connection);
    }
   
/**
 * creates an sql statement, executes it and returns results as a results set 
 * @return tempSet
 */
    
    @Override   
    public ResultSet read() {        
        ResultSet tempSet = null;
        
        try {
            
            preparedStatement = connection.prepareStatement("SELECT `reporting_Employee`.`employeeName` AS `employeeName`, `reporting_EventType`.`typeDescription` AS `type`,\n" +
                "	SUM(`reporting_AuditTrail`.`count`) AS `numberOfEvents`\n" +
                "	FROM `reporting database`.`fact_audittrail` AS `reporting_AuditTrail`\n" +
                "		LEFT JOIN `reporting database`.`dim_employee` AS `reporting_Employee` ON `reporting_Employee`.`employee_SK` = `reporting_AuditTrail`.`FK_Employee_SK`\n" +
                "		LEFT JOIN `reporting database`.`dim_date` AS `reporting_EventDate` ON `reporting_EventDate`.`date_SK` = `reporting_AuditTrail`.`FK_DateOccured_SK`\n" +
                "		LEFT JOIN `reporting database`.`dim_eventtype` AS `reporting_EventType` ON `reporting_EventType`.`type_SK` = `reporting_AuditTrail`.`FK_EventType_SK`\n" +
                "			WHERE `reporting_EventDate`.`CalenderMonthKey` = MONTH(NOW())                \n" +
                "				GROUP BY `reporting_AuditTrail`.`FK_Employee_SK`, `reporting_EventType`.`typeDescription`;");            
            tempSet = preparedStatement.executeQuery();
            
        } catch (SQLException ex) {
            Logger.getLogger(DatabaseAccessor_EmployeeStatistics.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            
            return tempSet;
            
        }
    }     
}
