/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package database;

/**
 *
 * @author Chester
 */
public class LabRecord 
{
    private boolean receivedAllSamples;
    private int numberOfSamples;
    private int sampleCount;
    public LabRecord()
    {
        
    }
    public LabRecord(boolean receivedAllSamples,int numberOfSamples,int sampleCount)
    {
        this.receivedAllSamples = receivedAllSamples;
        this.numberOfSamples = numberOfSamples;
        this.sampleCount = sampleCount;
    }
    public boolean isAllSammplesReceived()
    {
        return receivedAllSamples;
    }
    public int getNumberOfSamples()
    {
        return numberOfSamples;
    }
    public int getSampleCount()
    {
        return sampleCount;
    }
    public void setAllSammplesReceived(boolean receivedAllSamples)
    {
       this.receivedAllSamples = receivedAllSamples;
    }
    public void setNumberOfSamples(int numberOfSamples)
    {
        this.numberOfSamples = numberOfSamples;
    }
    public void setSampleCount(int sampleCount)
    {
        this.sampleCount = sampleCount;
    }
}
