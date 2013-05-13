package jcse.coachlab2013.mms.reports.facilitystorage;

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
            
            preparedStatement = connection.prepareStatement("SELECT 145 AS `binsUsed`;");            
            tempSet = preparedStatement.executeQuery();
            
        } catch (SQLException ex) {
            Logger.getLogger(DatabaseAccessor_FacilityStorage.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            
            return tempSet;
            
        }
    }     
}
