package jcse.coachlab2013.mms.reports.OutstandingResults;

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
public final class DatabaseAccessor_OutstandingResults extends Template_DatabaseAccessor {
    
/**
 * The DatabaseAccessor_OutstandingResults passes connection to the superclass 
 * @param connection 
 */    
                
    public DatabaseAccessor_OutstandingResults(Connection connection){
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
                "	`reporting_Body`.`deathRegisterNumber_BK` AS `Death Register No.`, \n" +
                "	SUM(`reporting_Sample`.`countSample`) AS `Number of Samples Sent`, \n" +
                "	SUM(`reporting_Sample`.`countOutstanding`) AS `Number of Samples Received`, \n" +
                "	CAST((SUM(`countSample` - `countOutstanding`) / SUM(`countSample`) * 100) AS DECIMAL(5,2)) AS `% Samples Outstanding`,\n" +
                "	MAX(durationOutstanding) AS `Days Outstanding`\n" +
                "\n" +
                "	FROM `reporting database`.`fact_sample` AS `reporting_Sample`\n" +
                "		LEFT JOIN `reporting database`.`dim_body` AS `reporting_Body` ON `reporting_Body`.`body_SK` = `reporting_Sample`.`FK_Body_SK`\n" +
                "		LEFT JOIN `reporting database`.`dim_date` AS `reporting_DateSent` ON `reporting_DateSent`.`date_SK` = `reporting_Sample`.`FK_DateSent_SK`\n" +
                "		GROUP BY `reporting_Body`.`deathRegisterNumber_BK`;");            
            tempSet = preparedStatement.executeQuery();
            
        } catch (SQLException ex) {
            Logger.getLogger(DatabaseAccessor_OutstandingResults.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            
            return tempSet;
            
        }
    } 
    
}
