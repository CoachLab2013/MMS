/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package testapp;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author Chester
 */
public class VehicleDb extends DatabaseConnector
{
    private Vehicle vehicle;
    public VehicleDb(DbDetail dbDetail)
    {
        super(dbDetail);
        vehicle = null;
    }
    public VehicleDb(Vehicle vehicle,DbDetail dbDetail)
    {
        super(dbDetail);
        this.vehicle = vehicle;
    }
    @Override
    public String add() 
    {
        try 
        {
            statement.executeUpdate("insert into vehicle (registrationNumber,crew) values"
                                    +"('" 
                                    + vehicle.getRegistrationNumber() + "',"+vehicle.getCrew()  +")");
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
    public  ArrayList<Vehicle> vehicleList() throws SQLException
    {
        ArrayList<Vehicle> vehicles = new ArrayList<Vehicle>();
        try 
        {
            statement.executeQuery("select registrationNumber,crew from vehicle;");
            ResultSet resultSet = statement.getResultSet();
            while(resultSet.next())
            {
                 vehicles.add(new Vehicle(resultSet.getString("registrationNumber"), resultSet.getInt("crew")));
            }
            statement.close();
            connection.close();
        } 
        catch (SQLException ex) 
        {
            throw new SQLException(ex.getMessage());
        }
        return vehicles;
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
            statement.executeUpdate("update vehicle set crew=" + vehicle.getCrew() + " where registrationNumber='" + vehicle.getRegistrationNumber() +"';" );
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
            statement.executeUpdate("delete from vehicle where  registrationNumber='"+vehicle.getRegistrationNumber()+"';" );
            statement.close();
            connection.close();
        } 
        catch (SQLException ex) 
        {
            return "fail " + ex.getMessage();
        }
        return "successful";
    }
    public String assignDriver(Driver driver)
    {
        try 
        {
            statement.executeUpdate("update vehicle set Driver_idDriver=" + driver.getDriverId() + " where registrationNumber='" + vehicle.getRegistrationNumber() +"';" );
            statement.close();
            connection.close();
        } 
        catch (SQLException ex) 
        {
            return "fail " + ex.getMessage();
        }
        return "successful";
    }
    /**
     * 
     * @return Vehicle object
     */
    public Vehicle getVehicle()
    {
        return vehicle;
    }
    /**
     * 
     * @param vehicle sets vehicle details object
     */
    public void setVehicle(Vehicle vehicle)
    {
        this.vehicle = vehicle;
    }
    
}
