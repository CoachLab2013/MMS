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
    
    //CONSTUCTORS
    public VehicleDispatch(){
        this.notificationDateTime = "";
        this.departureDateTime = "";
        this.dispatchMessage = "";
        this.vehicle = new Vehicle();
    }
    
    public VehicleDispatch(String inNotificationDateTime, String inDepartureDateTime, String inDispatchMessage, Vehicle inVehicle ){
        //this.idVehicleDispatch = inIdVehicleDispatch;
        this.notificationDateTime = inNotificationDateTime;
        this.departureDateTime = inDepartureDateTime;
        this.dispatchMessage = inDispatchMessage;
        this.vehicle = inVehicle;
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
}
