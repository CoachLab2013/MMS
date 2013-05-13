/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package database;

/**
 *
 * @author Chester
 */
public class BodyFile 
{
    private String dateFileOpened;
    private boolean bodyFileStatus;
    private boolean allSamplesRecevied;
    private boolean bodyIdentified;
    private boolean postMortemComplete;
    private String dateFileClosed;
    private String deathRegisterNumber;
    public BodyFile()
    {
        
    }
    public BodyFile(String dateFileOpened,boolean bodyFileStatus,boolean allSamplesRecevied,boolean bodyIdentified,boolean postMortemComplete,String dateFileClosed,String deathRegisterNumber)
    {
        this.dateFileOpened = dateFileOpened;
        this.bodyFileStatus = bodyFileStatus;
        this.allSamplesRecevied = allSamplesRecevied;
        this.bodyIdentified = bodyIdentified;
        this.postMortemComplete = postMortemComplete;
        this.dateFileClosed = dateFileClosed;
        this.deathRegisterNumber = deathRegisterNumber;
    }
    public String getDateFileOpened()
    {
        return dateFileOpened;
    }
    public boolean isClosed()
    {
        return bodyFileStatus;
    }
    public boolean isAllSamplesReceived()
    {
        return allSamplesRecevied;
    }
    public boolean isBodyIdentified()
    {
        return bodyIdentified;
    }
    public boolean isPostMortemCompleted()
    {
        return postMortemComplete;
    }
    public String getDateFileClosed()
    {
        return dateFileClosed;
    }
    public String getDeathRegisterNumber()
    {
        return deathRegisterNumber;
    }
    public void setDateFileOpened(String dateFileOpened)
    {
        this.dateFileOpened = dateFileOpened;
    }
    public void setBodyFileStatus(boolean bodyFileStatus)
    {
        this.bodyFileStatus = bodyFileStatus;
    }
    public void setAllSamplesReceived(boolean allSamplesReceived)
    {
        this.allSamplesRecevied = allSamplesReceived;
    }
    public void setBodyIdentified(boolean bodyIdentified)
    {
        this.bodyIdentified = bodyIdentified;
    }
    public void setPostMortemCompleted(boolean postMortemComplete)
    {
        this.postMortemComplete = postMortemComplete;
    }
    public void setDateFileClosed(String dateFileClosed)
    {
        this.dateFileClosed = dateFileClosed;
    }
    public void setDeathRegisterNumber(String deathRegisterNumber)
    {
        this.deathRegisterNumber = deathRegisterNumber;
    }
}
