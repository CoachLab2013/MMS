/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package database;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author Chester
 */
public class DriverDb extends DatabaseConnector
{
    private Driver driver;
    public DriverDb(DbDetail dbDetail)
    {
        super(dbDetail);
        driver = null;
    }
    public DriverDb(Driver driver,DbDetail dbDetail)
    {
        super(dbDetail);
        this.driver = driver;
    }
    @Override
    public String add() 
    {
        try 
        {
            statement.executeUpdate("insert into driver (name,surname) values"
                                    +"('" 
                                    + driver.getName() + "','"+driver.getSurname()  +"')");
            statement.close();
            connection.close();
        } 
        catch (SQLException ex) 
        {
            return "failed "+ex.getMessage();
        }
        catch (Exception ex)
        {
            return "failed "+ex.getMessage();
        }
        return "successful";
    }
    public  ArrayList<Driver> driverList() throws SQLException
    {
        ArrayList<Driver> drivers = new ArrayList<Driver>();
        try 
        {
            statement.executeQuery("select name,surname from driver;");
            ResultSet resultSet = statement.getResultSet();
            while(resultSet.next())
            {
                 drivers.add(new Driver(resultSet.getString("name"), resultSet.getString("surname")));
            }
            statement.close();
            connection.close();
        } 
        catch (SQLException ex) 
        {
            throw new SQLException(ex.getMessage());
        }
        return drivers;
    } 
    @Override
    public String read()
    {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    @Override
    public String edit() 
    {
        try 
        {
            statement.executeUpdate("update driver set name='" + driver.getName()+"',surname='" + driver.getSurname() + "' where idDriver=" + driver.getDriverId() +";" );
            statement.close();
            connection.close();
        } 
        catch (SQLException ex) 
        {
            return "fail " + ex.getMessage();
        }
        return "successful";
    }

    @Override
    public String delete() 
    {
        try 
        {
            statement.executeUpdate("delete from driver where idDriver="+driver.getDriverId()+";" );
            statement.close();
            connection.close();
        } 
        catch (SQLException ex) 
        {
            return "fail " + ex.getMessage();
        }
        return "successful";
    }
    
}
