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
    public DatabaseConnector(String username,String password,String url,String dbName)
    {
        this.username = username;
        this.password = password;
        this.url = url;
        this.dbName = dbName;
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
