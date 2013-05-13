package jcse.coachlab2013.mms.reports;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author Mubien Nakhooda Coachlab 2013
 */
public abstract class Template_DatabaseAccessor {
    
    protected Connection connection = null;
    protected PreparedStatement preparedStatement = null;
            
    public Template_DatabaseAccessor(Connection connection){
        this.connection = connection;
    }
    
    protected abstract ResultSet read();    
}
