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
    private int idVehicleDispatch;
    private String notificationDateTime;
    private String departureDateTime;
    private String dispatchMessage;
    private Vehicle vehicle;
    private Incident incident;
    
    //CONSTUCTORS
    public VehicleDispatch(){
        this.notificationDateTime = "";
        this.departureDateTime = "";
        this.dispatchMessage = "";
        this.vehicle = new Vehicle();
        this.incident = new Incident();
    }
    
    public VehicleDispatch(String inNotificationDateTime, String inDepartureDateTime, String inDispatchMessage, Vehicle inVehicle, Incident inIncident ){
        this.notificationDateTime = inNotificationDateTime;
        this.departureDateTime = inDepartureDateTime;
        this.dispatchMessage = inDispatchMessage;
        this.vehicle = inVehicle;
        this.incident = inIncident;
    }
    
    // GET  METHODS
    public int getIdVehicleDispatch(){
        return this.idVehicleDispatch;
    }
    
    public String getNotificationDateTime(){
        return this.notificationDateTime;
    }
    
    public String getDepartureDateTime(){
        return this.departureDateTime;
    }
    
    public String getDispatchMessage(){
        return this.dispatchMessage;
    }
    
    public Vehicle getVehicle(){
        return this.vehicle;
    }
    
    public Incident getIncident(){
        return this.incident;
    }
    
    // SET METHODS
    public void setIdVehicleDispatch(int inIdVehicleDispatch){
        this.idVehicleDispatch = inIdVehicleDispatch;
    }
    
    public void setNotificationDateTime(String inNotificationDateTime){
        this.notificationDateTime = inNotificationDateTime;
    }
    
    public void setDepartureDateTime(String inDepartureDateTime){
        this.departureDateTime = inDepartureDateTime;
    }
    
    public void setDispatchMessage(String inDispatchMessage){
        this.dispatchMessage = inDispatchMessage;
    }
    
    public void setVehicle(Vehicle inVehicle){
        this.vehicle = inVehicle;
    }
    
    public void setIncident(Incident inIncident){
        this.incident = inIncident;
    }
}
