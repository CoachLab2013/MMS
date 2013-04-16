/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package deathcall;

/** 
 *
 * @author Innovation Hub (Itumeleng Moraka)
 * @JCSE
 * Date : 16/04/2013
 */

/**
 * 
 * the callers details will be captured as soon as they get a call
 */
public class DeathCall {
    
    
private String timeOfCall;
private String numberCallMade;
private String nameOfCaller;
private String institution;
private String sceneAddress;
private String province;
private String region;
private String sceneCondition;

    public DeathCall()
    {
                
    timeOfCall="";
    numberCallMade="";
    nameOfCaller="";
    institution="";
    sceneAddress="";
    province="";
    region="";
    sceneCondition=""; 
    }
    
  public DeathCall(String timeOfCall ,String numberCallMade ,String institution  , String sceneAddress , String province ,String region , String sceneCondition,String nameOfCaller)
  {
    this.timeOfCall=timeOfCall;
    this.numberCallMade=numberCallMade;
    this.nameOfCaller=nameOfCaller;
    this.institution=institution;
    this.sceneAddress=sceneAddress;
    this.province=province;
    this.region=region;
    this.sceneCondition=sceneCondition; 
  }
        
    /**
     * 
     * @return all the details related to the details of the caller
     */
    
public String getTimeofCall()
{
    return timeOfCall;
}
/**
 * 
 * @return 
 */
public String getNumberCallMade()
{
    return numberCallMade;
}
public String getnameOfCaller() 
{
    return nameOfCaller;
}
public String getInstitution()
{
    return institution;
}
public String getSceneAddress()
{
    return sceneAddress;
}
public String getProvince()
{
    return province;
}
public String getRegion()
{
   return region; 
}
public String getSceneCondition()
{
    return sceneCondition;
}



public void setTimeofCall(String timeOfCall)
{
    this.timeOfCall = timeOfCall;
}
public void setNumberCallMade(String numberCallMade)
{
    this.numberCallMade=numberCallMade;
}

public void setInstitution(String institution)
{
    this.institution=institution;
}
public void setSceneAddress(String sceneAddress)
{
    this.sceneAddress=sceneAddress;
}
public void setProvince(String province)
{
    this.province=province;
}
public void setRegion(String region)
{
    this.region=region;
}
public void getSceneCondition(String sceneCondition)
{
    this.sceneCondition=sceneCondition;
}
public void setnameOfCaller(String nameOfCaller)
{
    this.nameOfCaller=nameOfCaller;
}
   
}
