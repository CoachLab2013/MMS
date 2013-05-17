package jcse.coachlab2013.mms.reports;

import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Team 1 CoachLab 2013 Mortuary Manage Managemet System (Chester)
 */
public class DatabaseConnector 
{
    private static final String CONNECTIONSTRING = "jdbc:mysql://";
    private static final String DBCONNECTOR = "com.mysql.jdbc.Driver";
    
    private String url;
    private String dbName;
    private String username;
    private String password;
    
    private Connection connection = null;
    
    public DatabaseConnector(DbDetail dbDetail)
    {
        this.username = dbDetail.getUsername();
        this.password = dbDetail.getPassword();
        this.url = dbDetail.getUrl();
        this.dbName = dbDetail.getDbName();
    }
    
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
