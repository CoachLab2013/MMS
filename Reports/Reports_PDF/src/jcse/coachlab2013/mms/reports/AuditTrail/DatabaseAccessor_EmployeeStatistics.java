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
