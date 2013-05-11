package jcse.coachlab2013.mms.reports.Statistics_MannerOfDeath;

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
public class DatabaseAccessor_MannerOfDeathStatistics extends Template_DatabaseAccessor{
                
    public DatabaseAccessor_MannerOfDeathStatistics(Connection connection){
        super(connection);
    }
    
    @Override
    public ResultSet read() {        
        ResultSet tempSet = null;
        
        try {
            
            preparedStatement = connection.prepareStatement("");            
            tempSet = preparedStatement.executeQuery();
            
        } catch (SQLException ex) {
            Logger.getLogger(DatabaseAccessor_MannerOfDeathStatistics.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            
            return tempSet;
            
        }
    }     
}
