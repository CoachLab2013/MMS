package jcse.coachlab2013.mms.reports.BodyFile;

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
public final class DatabaseAccessor_OpenBodyFile extends Template_DatabaseAccessor {
    
/**
 * The DatabaseAccessor_OpenBodyFile passes connection to the superclass 
 * @param connection 
 * and passes it to the superclass
 */                
    public DatabaseAccessor_OpenBodyFile(Connection connection){
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
            
            preparedStatement = connection.prepareStatement("SELECT * FROM `test_db`.`dim_date`;");            
            tempSet = preparedStatement.executeQuery();
            
        } catch (SQLException ex) {
            Logger.getLogger(DatabaseAccessor_OpenBodyFile.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            
            return tempSet;
            
        }
    } 
    
}
