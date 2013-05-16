package jcse.coachlab2013.mms.reports.AuditTrail;

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
public class DatabaseAccessor_EmployeeStatistics extends Template_DatabaseAccessor{
                
    public DatabaseAccessor_EmployeeStatistics(Connection connection){
        super(connection);
    }
    
    @Override
    public ResultSet read() {        
        ResultSet tempSet = null;
        
        try {
            
            preparedStatement = connection.prepareStatement("SELECT\n" +
                "`dim_employee`.`employeeName` AS `employeeName`,\n" +
                "SUM(`countError` + `countWarning`) AS `numberOfErrorsAndWarnings`\n" +
                "FROM `reporting database`.`fact_audittrail`\n" +
                "LEFT JOIN `reporting database`.`dim_employee` ON `dim_employee`.`employee_SK` = `reporting database`.`fact_audittrail`.`FK_Employee_SK`\n" +
                "LEFT JOIN `reporting database`.`dim_date` ON `dim_date`.`date_SK` = `reporting database`.`fact_audittrail`.`FK_DateOccured_SK`\n" +
                "LEFT JOIN `reporting database`.`dim_eventtype` ON `dim_eventtype`.`type_SK` = `reporting database`.`fact_audittrail`.`FK_EventType_SK`\n" +
                "GROUP BY `reporting database`.`fact_audittrail`.`FK_Employee_SK`;");            
            tempSet = preparedStatement.executeQuery();
            
        } catch (SQLException ex) {
            Logger.getLogger(DatabaseAccessor_EmployeeStatistics.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            
            return tempSet;
            
        }
    }     
}
