/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package testapp;

/**
 *
 * @author Chester
 */
public class Driver 
{
    private int driverId;
    private String name;
    private String surname;
    /**
     * constructor to create a driver object
     */
    public Driver()
    {
        driverId = 0;
        name = "";
        surname = "";
    }
    /**
     * 
     * @param driverId an integer for the for a specific driver
     * @param name string name for a driver
     * @param surname string surname for a driver
     */
    public Driver(int driverId,String name,String surname)
    {
        this.driverId = driverId;
        this.name = name;
        this.surname = surname;
    }
    /**
     * 
     * @param name string name for a driver
     * @param surname string surname for a driver
     */
    public Driver(String name,String surname)
    {
        this.name = name;
        this.surname = surname;
    }
    /**
     * 
     * @return an integer for the for a specific driver
     */
    public int getDriverId()
    {
        return driverId;
    }
    /**
     * 
     * @return string name for a driver
     */
    public String getName()
    {
        return name;
    }
    /**
     * 
     * @return string surname for a driver
     */
    public String getSurname()
    {
        return surname;
    }
    /**
     * 
     * @param driverId set a integer value according to the number of drivers in the database
     */
    public void setDriverId(int driverId)
    {
        this.driverId = driverId;
    }
    /**
     * 
     * @param name set the name of the driver
     */
    public void setName(String name)
    {
        this.name = name;
    }
    /**
     * 
     * @param surname set the surname of the driver
     */
    public void setSurname(String surname)
    {
        this.surname = surname;
    }
}
