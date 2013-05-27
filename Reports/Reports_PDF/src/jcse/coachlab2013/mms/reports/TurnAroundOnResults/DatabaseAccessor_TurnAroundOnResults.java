package jcse.coachlab2013.mms.reports.TurnAroundOnResults;

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
public class DatabaseAccessor_TurnAroundOnResults extends Template_DatabaseAccessor{
    
/**
 * connects to the database through the parameter connection
 * @param connection 
 */                
    public DatabaseAccessor_TurnAroundOnResults(Connection connection){
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
            
            preparedStatement = connection.prepareStatement("SELECT \n" +
                "	`dim_sample`.`analysisType`  AS `analysisType`, \n" +
                "	AVG(`durationOutstanding`) AS `averageTurnAroundTime`\n" +
                "		FROM `reporting database`.`fact_sample`\n" +
                "			LEFT JOIN `reporting database`.`dim_sample` ON `dim_sample`.`sample_SK` = `reporting database`.`fact_sample`.`FK_Sample_SK`\n" +
                "			GROUP BY `dim_sample`.`analysisType`;");            
            tempSet = preparedStatement.executeQuery();
            
        } catch (SQLException ex) {
            Logger.getLogger(DatabaseAccessor_TurnAroundOnResults.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            
            return tempSet;
            
        }
    }     
}
