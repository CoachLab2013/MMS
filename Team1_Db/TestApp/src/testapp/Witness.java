/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package testapp;

/**
 *
 * @author Chester
 */
public class Witness 
{
    private String name;
    private String surname;
    public Witness()
    {
        
    }
    public Witness(String name,String surname)
    {
        this.name = name;
        this.surname = surname;
    }
    public String getName()
    {
        return name;
    }
    public String getSurname()
    {
        return surname;
    }
    public void setName(String name)
    {
        this.name = name;
    }
    public void setSurname(String surname)
    {
        this.surname = surname;
    }
}
