package testapp;

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Administrator
 */
public class VehicleDispatch {
    private String notificationDateTime;
    private String departureDateTime;
    //private String dispatchMessage;
    private Vehicle vehicle;
    private Incident incident;
    
    //CONSTUCTORS
    public VehicleDispatch(){
        this.notificationDateTime = "";
        this.departureDateTime = "";
        this.vehicle = new Vehicle();
        this.incident = new Incident();
    }
    
    public VehicleDispatch(String inNotificationDateTime, String inDepartureDateTime, String inDispatchMessage, Vehicle inVehicle, Incident inIncident ){
        this.notificationDateTime = inNotificationDateTime;
        this.departureDateTime = inDepartureDateTime;
        this.vehicle = inVehicle;
        this.incident = inIncident;
    }
    
    // GET  METHODS
    public String getNotificationDateTime(){
        return this.notificationDateTime;
    }
    
    public String getDepartureDateTime(){
        return this.departureDateTime;
    }
    
    public Vehicle getVehicle(){
        return this.vehicle;
    }
    
    public Incident getIncident(){
        return this.incident;
    }
    
    // SET METHODS
    public void setNotificationDateTime(String inNotificationDateTime){
        this.notificationDateTime = inNotificationDateTime;
    }
    
    public void setDepartureDateTime(String inDepartureDateTime){
        this.departureDateTime = inDepartureDateTime;
    }
    
    public void setVehicle(Vehicle inVehicle){
        this.vehicle = inVehicle;
    }
    
    public void setIncident(Incident inIncident){
        this.incident = inIncident;
    }
}
