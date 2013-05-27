/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package database;

/**
 *
 * @author Chester
 */
public class BodyStorage 
{
    private int numberOfBins;
    private String nameOfMortuary;
    
    public BodyStorage()
    {
        
    }
    public BodyStorage(int numberOfBins,String nameOfMortuary)
    {
        this.numberOfBins = numberOfBins;
        this.nameOfMortuary = nameOfMortuary;
    }
    public String getNameOfMortuary()
    {
        return nameOfMortuary;
    }
    public int getNumberOfBins()
    {
        return numberOfBins;
    }
    public void setNameOfMortuary(String nameOfMortuary)
    {
        this.nameOfMortuary = nameOfMortuary;
    }
    public  void setNumberOfBins(int numberOfBins)
    {
        this.numberOfBins = numberOfBins;
    }
}
