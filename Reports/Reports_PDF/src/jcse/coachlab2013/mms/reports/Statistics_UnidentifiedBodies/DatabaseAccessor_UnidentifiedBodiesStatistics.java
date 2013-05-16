package jcse.coachlab2013.mms.reports.Statistics_UnidentifiedBodies;

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
public class DatabaseAccessor_UnidentifiedBodiesStatistics extends Template_DatabaseAccessor{
                
    public DatabaseAccessor_UnidentifiedBodiesStatistics(Connection connection){
        super(connection);
    }
    
    @Override
    public ResultSet read() {        
        ResultSet tempSet = null;
        
        try {
            
            preparedStatement = connection.prepareStatement("SELECT `dim_mannerofdeath`.`deathType` AS `deathManner`, sum(countBody) AS `numPeople`\n" +
                "FROM `reporting database`.`fact_body`\n" +
                "\n" +
                "LEFT JOIN `reporting database`.`dim_mannerofdeath` ON `dim_mannerofdeath`.`mannerofdeath_SK` = `reporting database`.`fact_body`.`FK_MannerOfDeath_SK`\n" +
                "LEFT JOIN `reporting database`.`dim_bodystatus` ON `dim_bodystatus`.`bodyStatus_SK` = `reporting database`.`fact_body`.`FK_BodyStatus_SK`\n" +
                "WHERE `dim_bodystatus`.`bodyStatusDescription` = \"Unidentified\"\n" +
                "GROUP BY `dim_mannerofdeath`.`deathType`;");           
            tempSet = preparedStatement.executeQuery();
            
        } catch (SQLException ex) {
            Logger.getLogger(DatabaseAccessor_UnidentifiedBodiesStatistics.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            
            return tempSet;
            
        }
    }     
}
