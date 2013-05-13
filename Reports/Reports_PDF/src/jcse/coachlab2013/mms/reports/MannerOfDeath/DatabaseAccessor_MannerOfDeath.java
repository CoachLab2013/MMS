/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package jcse.coachlab2013.mms.reports.mannerofdeath;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import jcse.coachlab2013.mms.reports.Template_DatabaseAccessor;

/**
 *
 * @author Cya
 */
public class DatabaseAccessor_MannerOfDeath extends Template_DatabaseAccessor{
                
    public DatabaseAccessor_MannerOfDeath(Connection connection){
        super(connection);
    }
    
    @Override
    public ResultSet read() {        
        ResultSet tempSet = null;
        
        try {
            
            preparedStatement = connection.prepareStatement("");            
            tempSet = preparedStatement.executeQuery();
            
        } catch (SQLException ex) {
            Logger.getLogger(DatabaseAccessor_MannerOfDeath.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            
            return tempSet;
            
        }
    }     
}
