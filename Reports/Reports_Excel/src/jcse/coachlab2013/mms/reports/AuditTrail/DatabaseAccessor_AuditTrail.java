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
public final class DatabaseAccessor_AuditTrail extends Template_DatabaseAccessor {
                
    public DatabaseAccessor_AuditTrail(Connection connection){
        super(connection);
    }
    
    @Override
    public ResultSet read() {        
        ResultSet tempSet = null;
        
        try {
            
            preparedStatement = connection.prepareStatement("SELECT * FROM `test_db`.`dim_date`;");            
            tempSet = preparedStatement.executeQuery();
            
        } catch (SQLException ex) {
            Logger.getLogger(DatabaseAccessor_AuditTrail.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            
            return tempSet;
            
        }
    } 
    
}
