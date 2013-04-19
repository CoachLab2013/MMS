/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package testapp;

/**
 *
 * @author Innovation Hub
 * @JCSE
 */
public class Incident 
{

private String incidentLogNumber;
private String referenceNumber;
private int numberOfBodies;
private String dateOfIncident;
private String timeOfIncident;
private String circumstanceOfDeath;
private String placeBodyFound;
private String specialCircumstances;
private String reason;
private int bodyCount;
private boolean status;

public Incident()
{
 incidentLogNumber="";
 referenceNumber="";
 numberOfBodies=0;
 dateOfIncident="";
 timeOfIncident="";
 circumstanceOfDeath="";
 placeBodyFound="";
 specialCircumstances="";
 reason = "";
 bodyCount = 0;
 status = false;
}
public Incident(String incidentLogNumber ,String referenceNumber , int numberOfBodies ,String dateOfIncident,String timeOfIncident , String circumstanceOfDeath , String placeBodyFound , String specialCircumstances,String reason,int bodyCount,boolean status)
{
this. incidentLogNumber = incidentLogNumber;
this. referenceNumber = referenceNumber;
this. numberOfBodies = numberOfBodies;
this. dateOfIncident = dateOfIncident;
this. timeOfIncident = timeOfIncident;
this. circumstanceOfDeath = circumstanceOfDeath;
this. placeBodyFound = placeBodyFound;
this. specialCircumstances = specialCircumstances;
this.reason = reason;
this.bodyCount = bodyCount;
this.status = status;
}

public String getIncidentLogNumber()
{
    return incidentLogNumber;

} 
public String getReferenceNumber()
{
    return  referenceNumber;

}
public int getNumberOfBodies()
{
    return  numberOfBodies;
 
    
}
public String getDateOfIncident()
{
    return dateOfIncident;

}
public String getTimeOfIncident()
{
    return timeOfIncident;

}
public String getCircumstanceOfDeath()
{
    return circumstanceOfDeath;

}
public String getPlaceBodyFound()
{
    return placeBodyFound;

}
public String getSpecialCircumstances()
{
    return specialCircumstances;
}
public String getReason()
{
    return reason;
}
public int getBodyCount()
{
    return bodyCount;
}
public boolean isOpen()
{
    return status;
}
public void setIncidentLogNumber(String incidentLogNumber)
{
    this.incidentLogNumber = incidentLogNumber;
}
public void setReferenceNumber(String referenceNumber)
{
    this.referenceNumber = referenceNumber;
}
public void setNumberOfBodies(int numberOfBodies)
{
    this.numberOfBodies = numberOfBodies;
}
public void setDateOfIncident(String dateOfIncident)
{
    this.dateOfIncident = dateOfIncident;
}
public void setTimeOfIncident(String timeOfIncident)
{
    this.timeOfIncident = timeOfIncident;
}
public void setCircumstanceOfDeath(String circumstanceOfDeath)
{
    this.circumstanceOfDeath = circumstanceOfDeath;
}
public void setPlaceBodyFound(String placeBodyFound)
{
    this.placeBodyFound = placeBodyFound;
}
public void setSpecialCircumstances(String specialCircumstances)
{
    this.specialCircumstances = specialCircumstances;
}
public void setReason(String reason)
{
    this.reason = reason;
}
public void setBodyCount(int bodyCount)
{
    this.bodyCount = bodyCount;
}
public void setStatus(boolean status)
{
    this.status = status;
}
}
