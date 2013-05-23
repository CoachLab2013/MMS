package jcse.coachlab2013.mms.reports;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 * @author      Mubien Nackoda <coachlab@jcse.org.za>
 * @since       2012-05-20          (the version of the package this class was first added to)
 */
public abstract class Template_DatabaseAccessor {
    
    protected Connection connection = null;
    protected PreparedStatement preparedStatement = null;
            
    public Template_DatabaseAccessor(Connection connection){
        this.connection = connection;
    }
      
    protected abstract ResultSet read();    
}
