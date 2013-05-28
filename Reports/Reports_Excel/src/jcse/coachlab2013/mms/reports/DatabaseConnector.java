<<<<<<< HEAD
package jcse.coachlab2013.mms.reports;

import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 * @author      Mubien Nackoda <coachlab@jcse.org.za>
 * @since       2012-05-20          (the version of the package this class was first added to)
 */
public class DatabaseConnector 
{
/**
 * This gives the connection string
 * and the database connector
 */     
    
    private static final String CONNECTIONSTRING = "jdbc:mysql://";
    private static final String DBCONNECTOR = "com.mysql.jdbc.Driver";
    
    private String url;
    private String dbName;
    private String username;
    private String password;
    
    private Connection connection = null;
/**
 * The public method DatabaseConnector sets up the database name, 
 * the url, the username, and the password for the database                         
 * @param  dbDetail sets up the access to the database.
 * 
 */ 
    public DatabaseConnector(DbDetail dbDetail)
    {
        this.username = dbDetail.getUsername();
        this.password = dbDetail.getPassword();
        this.url = dbDetail.getUrl();
        this.dbName = dbDetail.getDbName();
    }
/**
 * The method Connection creates the connection to the database and returns it
 * @return connection  
 */
    public Connection init()
    {
        try 
        {
            Class.forName(DBCONNECTOR).newInstance();
            connection = DriverManager.getConnection(CONNECTIONSTRING + url + dbName, username, password);            
        } 
        catch (ClassNotFoundException | InstantiationException | IllegalAccessException | SQLException ex) 
        {
            Logger.getLogger(DatabaseConnector.class.getName()).log(Level.SEVERE, null, ex);
            return connection;
        }
        return connection;
    }
}
=======
package jcse.coachlab2013.mms.reports;

import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 * @author      Mubien Nakhooda <coachlab@jcse.org.za>
 * @since       2012-05-20          (the version of the package this class was first added to)
 */
public class DatabaseConnector 
{
/**
 * This gives the connection string
 * and the database connector
 */     
    
    private static final String CONNECTIONSTRING = "jdbc:mysql://";
    private static final String DBCONNECTOR = "com.mysql.jdbc.Driver";
    
    private String url;
    private String dbName;
    private String username;
    private String password;
    
    private Connection connection = null;
/**
 * The public method DatabaseConnector sets up the database name, 
 * the url, the username, and the password for the database                         
 * @param  dbDetail sets up the access to the database.
 * 
 */ 
    public DatabaseConnector(DbDetail dbDetail)
    {
        this.username = dbDetail.getUsername();
        this.password = dbDetail.getPassword();
        this.url = dbDetail.getUrl();
        this.dbName = dbDetail.getDbName();
    }
/**
 * The method Connection creates the connection to the database and returns it
 * @return connection  
 */
    public Connection init()
    {
        try 
        {
            Class.forName(DBCONNECTOR).newInstance();
            connection = DriverManager.getConnection(CONNECTIONSTRING + url + dbName, username, password);            
        } 
        catch (ClassNotFoundException | InstantiationException | IllegalAccessException | SQLException ex) 
        {
            Logger.getLogger(DatabaseConnector.class.getName()).log(Level.SEVERE, null, ex);
            return connection;
        }
        return connection;
    }
}
>>>>>>> origin/master
