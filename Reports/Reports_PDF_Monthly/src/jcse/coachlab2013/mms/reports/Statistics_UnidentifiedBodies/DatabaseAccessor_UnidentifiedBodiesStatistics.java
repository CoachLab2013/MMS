package jcse.coachlab2013.mms.reports.Statistics_UnidentifiedBodies;

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

public class DatabaseAccessor_UnidentifiedBodiesStatistics extends Template_DatabaseAccessor{
    
/**
 * connects to the database through the parameter connection
 * @param connection 
 */                
    public DatabaseAccessor_UnidentifiedBodiesStatistics(Connection connection){
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
            
            preparedStatement = connection.prepareStatement("SELECT `dim_mannerofdeath`.`deathType` AS `deathManner`, sum(countBody) AS `numPeople`\n" +
"FROM `reporting database`.`fact_body`\n" +
"LEFT JOIN `reporting database`.`dim_mannerofdeath`\n" +
"ON `dim_mannerofdeath`.`mannerofdeath_SK` = `reporting database`.`fact_body`.`FK_MannerOfDeath_SK`\n" +
"LEFT JOIN `reporting database`.`dim_bodystatus` \n" +
"ON `dim_bodystatus`.`bodyStatus_SK` = `reporting database`.`fact_body`.`FK_BodyStatus_SK`\n" +
"WHERE `dim_bodystatus`.`bodyStatusDescription` = \"Unidentified\" and \n" +
"EXTRACT(MONTH FROM TIMESTAMP (`reporting database`.fact_body.dateInserted))=MONTH(NOW())\n" +
"GROUP BY `dim_mannerofdeath`.`deathType`;");           
            tempSet = preparedStatement.executeQuery();
            
        } catch (SQLException ex) {
            Logger.getLogger(DatabaseAccessor_UnidentifiedBodiesStatistics.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            
            return tempSet;
            
        }
    }     
}
