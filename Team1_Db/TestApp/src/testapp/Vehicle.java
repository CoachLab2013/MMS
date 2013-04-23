/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package testapp;

/**
 *
 * @author Chester
 */
public class Vehicle 
{
    private String registrationNumber;
    private int crew;
    /**
     * default constructor for creating a vehicle object
     */
    public Vehicle()
    {
        registrationNumber = "";
        crew = 0;
    }
    /**
     * parameter constructor taking registration number of a vehicle and crew number to create a vehicle object
     * @param registrationNumber String unique license number to identify a specific vehicle
     * @param crew Integer number of people in a vehicle
     */
    public Vehicle(String registrationNumber,int crew)
    {
        this.registrationNumber = registrationNumber;
        this.crew = crew;
    }
    /**
     * 
     * @return String the registration number
     */
    public String getRegistrationNumber()
    {
        return registrationNumber;
    }
    /**
     * 
     * @return Integer number people been assigned to a vehicle
     */
    public int getCrew()
    {
        return crew;
    }
    /**
     * 
     * @param registrationNumber String
     */
    public void setRegistrationNumber(String registrationNumber)
    {
        this.registrationNumber = registrationNumber;
    }
    /**
     * 
     * @param crew Integer
     */
    public void setCrew(int crew)
    {
        this.crew = crew;
    }
}


