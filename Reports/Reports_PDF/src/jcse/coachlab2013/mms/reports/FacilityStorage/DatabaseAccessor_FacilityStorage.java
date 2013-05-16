package jcse.coachlab2013.mms.reports.FacilityStorage;

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
public class DatabaseAccessor_FacilityStorage extends Template_DatabaseAccessor{
                
    public DatabaseAccessor_FacilityStorage(Connection connection){
        super(connection);
    }
    
    @Override
    public ResultSet read() {        
        ResultSet tempSet = null;
        
        try {
            
            preparedStatement = connection.prepareStatement("SELECT \n" +
                "	IFNULL(SUM(`reporting_Body`.`countBody`), 0) AS `binsUsed` \n" +
                "		FROM `reporting database`.`fact_body` AS `reporting_Body`\n" +
                "			WHERE FK_DateReleased_SK = '19000101';");            
            tempSet = preparedStatement.executeQuery();
            
        } catch (SQLException ex) {
            Logger.getLogger(DatabaseAccessor_FacilityStorage.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            
            return tempSet;
            
        }
    }     
}
