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
    
    //GET METHODS
    public VehicleDispatch getVehicleDispatch(){
        return this.vehicleDispatch;
    }
    
    //SET METHODS
    public void setVehicleDispatch(VehicleDispatch inVehicleDispatch){
        this.vehicleDispatch = inVehicleDispatch;
    }
    
    //DATBASE METHODS
    @Override
    public String add(){
        try 
        {
            statement.executeUpdate("INSERT INTO VehicleDispatch (notificationDateTime, departureDateTime, Incident_incidentLogNumber, Vehicle_registrationNumber) VALUES ('" + this.vehicleDispatch.getNotificationDateTime() + "', '" + this.vehicleDispatch.getDepartureDateTime() +"', '" + this.vehicleDispatch.getIncident().getIncidentLogNumber() + "', '" + this.vehicleDispatch.getVehicle().getRegistrationNumber() +"';)");
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
        String vehicleRegistration, incidentLogNumber;
        try 
        {
            statement.executeQuery("SELECT * FROM VehicleDispatch;" /*WHERE Something= criteria*/);
            ResultSet resultSet = statement.getResultSet(); 
            resultSet.next();
            vehicleDispatch.setDepartureDateTime(resultSet.getString("departureDateTime"));
            vehicleDispatch.setNotificationDateTime(resultSet.getString("notificationDateTime"));
            vehicleRegistration = resultSet.getString("Vehicle_registrationNumber");
            incidentLogNumber = resultSet.getString("Incident_incidentLogNumber");
            //statement.executeQuery("SELECT * FROM Vehicle WHERE registrationNumber = '" + vehicleRegistration+ "';");
            vehicleDispatch.setVehicle(new Vehicle(vehicleRegistration));
            statement.executeQuery("SELECT * FROM Incident WHERE incidentLogNumber = '" + incidentLogNumber + "';");
            ResultSet resultSet2 = statement.getResultSet();
            resultSet2.next();
            //String incidentLogNumber ,String referenceNumber , int numberOfBodies ,String dateOfIncident,String timeOfIncident , String circumstanceOfDeath , String placeBodyFound , String specialCircumstances,String reason,int bodyCount,boolean status
            String referenceNumber = resultSet2.getString("referenceNumber");
            int numberOfBodies = resultSet2.getInt("numberOfBodies");
            String dateOfIncident = resultSet2.getString("dateOfIncident");
            String timeOfIncident = resultSet2.getString("timeOfIncident");
            String circumstanceOfDeath = resultSet2.getString("circumstanceOfDeath");
            String placeBodyFound = resultSet2.getString("placeBodyFound");
            String specialCircumstances = resultSet2.getString("specialCircumstances");
            String reason = resultSet2.getString("reason");
            int bodyCount = resultSet2.getInt("bodyCount");
            boolean status = resultSet2.getBoolean("status");
            String dateIncidentClosed = resultSet2.getString("dateIncidentClosed");
            vehicleDispatch.setIncident(new Incident(incidentLogNumber, referenceNumber, numberOfBodies, dateOfIncident, timeOfIncident, circumstanceOfDeath, placeBodyFound, specialCircumstances, reason, bodyCount, status,dateIncidentClosed));
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
    public String edit(){//!!!!!NEED TO PASS PRIMARY KEY VALUE!!!!!
        try 
        {
            statement.executeUpdate("UPDATE VehicleDispatch SET departureDateTime='" + vehicleDispatch.getDepartureDateTime() + "', notificationDateTime='" + vehicleDispatch.getNotificationDateTime() +"', Vehicle_registrationNumber='" + vehicleDispatch.getVehicle().getRegistrationNumber() + "', Incident_incidentLogNumber = '"+vehicleDispatch.getIncident().getIncidentLogNumber()+"' WHERE Incident_incidentLogNumber = '" + vehicleDispatch.getIncident().getIncidentLogNumber() + "';" );
            statement.close();
            connection.close();
        } 
        catch (SQLException ex) 
        {
            return "fail " + ex.getMessage();
        }
        return "Update Successful";
    }
    
    @Override
    public String delete(){//MAY NEED TO SEND IN PRIMARY KEY VALUE
        try 
        {
            statement.executeUpdate("DELETE FROM VehicleDispatch WHERE Incident_incidentLogNumber = '" + vehicleDispatch.getIncident().getIncidentLogNumber() +"'");
            statement.close();
            connection.close();
        } 
        catch (SQLException ex) 
        {
            return "fail " + ex.getMessage();
        }
        return "delete successful";
    }
}
