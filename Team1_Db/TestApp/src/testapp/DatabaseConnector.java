package testapp;
import java.sql.*;

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

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
    protected Connection connection;
    protected Statement statement;
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
            connection = DriverManager.getConnection(CONNECTIONSTRING+url+dbName,username,password);
            statement = connection.createStatement();
        } 
        catch (Exception ex) 
        {
            System.err.println(ex.getMessage());
            return false;
        }
        return true;
    }
    public abstract String add();
    public abstract String read(); 
    public abstract String edit(); //not needed here
    public abstract String delete(); //not needed here
}
