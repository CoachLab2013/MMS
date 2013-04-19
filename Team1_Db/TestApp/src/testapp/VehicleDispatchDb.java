/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package testapp;

import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Administrator
 */
public class VehicleDispatchDb extends DatabaseConnector {
    private VehicleDispatch vehicleDispatch;
    
    //CONSTRUCTORS
    public VehicleDispatchDb(DbDetail dbDetail){
        super(dbDetail);
        this.vehicleDispatch = new VehicleDispatch();
    }
    
    public VehicleDispatchDb(DbDetail dbDetail, VehicleDispatch inVehicleDispatch){
        super(dbDetail);
        this.vehicleDispatch = inVehicleDispatch;
    }
    
    //DATBASE METHODS
    @Override
    public String add(){
        try 
        {
            statement.executeUpdate("INSERT INTO VehicleDispatch (idVehicleDispatch, notificationDateTime, departureDateTime, dispatchMessage, Incident_incidentLogNumber, Vehicle_registrationNumber) VALUES ( '1234567891', '" + this.vehicleDispatch.getNotificationDateTime() + "', '" + this.vehicleDispatch.getDepartureDateTime() +"', '" + this.vehicleDispatch.getDispatchMessage() + "', '" + this.vehicleDispatch.getIncident().getIncidentLogNumber() + "', '" + this.vehicleDispatch.getVehicle().getRegistrationNumber() +"' )");
            statement.close();
            connection.close(); 
        } 
        catch (SQLException ex) 
        {
            return "failed " + ex.getMessage();
        }
        catch (Exception ex)
        {
            return "error " + ex.getMessage();
        }
        return "Added Vehicle Dispatch Details";
    }
    
    @Override
    public String read(/*what user will search by*/){ //Strange
        String vehicleRegistration;
        try 
        {
            statement.executeQuery("SELECT * FROM VehicleDispatch;" /*WHERE Something= criteria*/);
            ResultSet resultSet = statement.getResultSet(); 
            resultSet.next();
            vehicleDispatch.setDepartureDateTime(resultSet.getString("departureDateTime"));
            vehicleDispatch.setDispatchMessage(resultSet.getString("dispatchMessage"));
            vehicleDispatch.setIdVehicleDispatch(resultSet.getInt("idVehicleDispatch"));
            vehicleDispatch.setNotificationDateTime(resultSet.getString("notificationDateTime"));
            vehicleRegistration = resultSet.getString("Vehicle_registrationNumber");
            statement.executeQuery("SELECT * FROM Vehicle WHERE registrationNumber = '" + vehicleRegistration+ "';"  );
            statement.close();
            connection.close();
        } 
        catch (SQLException ex) 
        {
            return "fail " + ex.getMessage();
        }
        return "read successful"; /*Should return vehicle dispatch object*/
    }
    
    @Override
    public String edit(){
        try 
        {
            statement.executeUpdate("UPDATE VehicleDispatch SET departureDateTime='" + vehicleDispatch.getDepartureDateTime() + "', dispatchMessage='" + vehicleDispatch.getDispatchMessage() +"', notificationDateTime='" + vehicleDispatch.getNotificationDateTime() +"', Vehicle_registrationNumber='" + vehicleDispatch.getVehicle().getRegistrationNumber() +"' WHERE idVehicleDispatch = '" + vehicleDispatch.getIdVehicleDispatch() + "';" );
            statement.close();
            connection.close();
        } 
        catch (SQLException ex) 
        {
            return "fail " + ex.getMessage();
        }
        return "Update Successful";
    }
    /*public String edit(VehicleDispatch inVehicleDispatch){
        try 
        {
            statement.executeUpdate("UPDATE VehicleDispatch SET departureDateTime='" + inVehicleDispatch.getDepartureDateTime() + "', dispatchMessage='" + inVehicleDispatch.getDispatchMessage() +"', notificationDateTime='" + inVehicleDispatch.getNotificationDateTime() +"', Vehicle_registrationNumber='" + inVehicleDispatch.getVehicle_registrationNumber() +"' WHERE idVehicleDispatch = '" + inVehicleDispatch.getIdVehicleDispatch() + "';" );
            statement.close();
            connection.close();
        } 
        catch (SQLException ex) 
        {
            return "fail " + ex.getMessage();
        }
        return "Update Successful";
    }*/
    
    @Override
    public String delete(){
        try 
        {
            statement.executeUpdate("DELETE FROM VehicleDispatch WHERE idVehicleDispatch = '" + vehicleDispatch.getIdVehicleDispatch() +"'");
            statement.close();
            connection.close();
        } 
        catch (SQLException ex) 
        {
            return "fail " + ex.getMessage();
        }
        return "delete successful";
    }
    /*public String delete(VehicleDispatch inVehicleDispatch){
        try 
        {
            statement.executeUpdate("DELETE FROM VehicleDispatch WHERE idVehicleDispatch = '" + inVehicleDispatch.getIdVehicleDispatch() +"'");
            statement.close();
            connection.close();
        } 
        catch (SQLException ex) 
        {
            return "fail " + ex.getMessage();
        }
        return "delete successful";
    }*/
}
