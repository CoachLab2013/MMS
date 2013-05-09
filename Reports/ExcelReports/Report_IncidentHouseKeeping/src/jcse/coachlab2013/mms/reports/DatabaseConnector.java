package jcse.coachlab2013.mms.reports;

import java.sql.*;

/**
 *
 * @author Team 1 CoachLab 2013 Mortuary Manage Managemet System (Chester)
 */
public abstract class DatabaseConnector 
{
    private static final String CONNECTIONSTRING = "jdbc:mysql://";
    private static final String DBCONNECTOR = "com.mysql.jdbc.Driver";
    
    private String url;
    private String dbName;
    private String username;
    private String password;
    
    protected Connection connection = null;
    protected PreparedStatement  preparedStatement = null;
    
    public DatabaseConnector(DbDetail dbDetail)
    {
        this.username = dbDetail.getUsername();
        this.password = dbDetail.getPassword();
        this.url = dbDetail.getUrl();
        this.dbName = dbDetail.getDbName();
    }
    
    public boolean init()
    {
        try 
        {
            Class.forName(DBCONNECTOR).newInstance();
            connection = DriverManager.getConnection(CONNECTIONSTRING + url + dbName, username, password);            
        } 
        catch (ClassNotFoundException | InstantiationException | IllegalAccessException | SQLException ex) 
        {
            System.err.println(ex.getMessage());
            return false;
        }
        return true;
    }
    
    public abstract ResultSet read(); 
}
