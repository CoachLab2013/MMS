/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Chester
 */
public class DutyRoster 
{
    private String startTime;
    private String endTime;
    public DutyRoster()
    {
        startTime = "";
        endTime = "";
    }
    /**
     * 
     * @param startTime date and time of when employee checks in
     * @param endTime date and time of when employee checks out
     */
    public DutyRoster(String startTime,String endTime)
    {
        this.startTime = startTime;
        this.endTime = endTime;
    }
    /**
     * 
     * @return date and time of employee check in
     */
    public String getStartTime()
    {
        return startTime;
    }
    /**
     * 
     * @return date and time of employee check out
     */
    public String getEndTime()
    {
        return endTime;
    }
    /**
     * 
     * @param startTime date and time of when employee checks in
     */
    public void setStartTime(String startTime)
    {
        this.startTime = startTime;
    }
    /**
     * 
     * @param endTime date and time of when employee checks out
     */
    public void setEndTime(String endTime)
    {
        this.endTime = endTime;
    }
}
