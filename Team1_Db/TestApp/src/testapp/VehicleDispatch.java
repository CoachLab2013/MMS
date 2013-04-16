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
    private String Vehicle_registrationNumber;
    
    //CONSTUCTORS
    public VehicleDispatch(){
        this.notificationDateTime = "";
        this.departureDateTime = "";
        this.dispatchMessage = "";
        this.Vehicle_registrationNumber = "";
    }
    
    public VehicleDispatch(int inIdVehicleDispatch, String inNotificationDateTime, String inDepartureDateTime, String inDispatchMessage, String inVehicle_registrationNumber ){
        this.idVehicleDispatch = inIdVehicleDispatch;
        this.notificationDateTime = inNotificationDateTime;
        this.departureDateTime = inDepartureDateTime;
        this.dispatchMessage = inDispatchMessage;
        this.Vehicle_registrationNumber = inVehicle_registrationNumber;
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
    
    public String getVehicle_registrationNumber(){
        return this.Vehicle_registrationNumber;
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
    
    public void setVehicle_registrationNumber(String inVehicle_registrationNumber){
        this.Vehicle_registrationNumber = inVehicle_registrationNumber;
    }
}
