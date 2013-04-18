/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package incident;

/**
 *
 * @author Innovation Hub
 * @JCSE
 */
public class Incident  {

String incidentLogNumber;
String referenceNumber;
int numberOfBodies;
String dateOfIncident;
String timeOfIncident;
String circumstanceOfDeath;
String placeBodyFound;
String specialCircumstances;

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

}
public Incident(String incidentLogNumber ,String referenceNumber , int numberOfBodies ,String dateOfIncident,String timeOfIncident , String circumstanceOfDeath , String placeBodyFound , String specialCircumstances)
{
this. incidentLogNumber = incidentLogNumber;
this. referenceNumber = referenceNumber;
this. numberOfBodies = numberOfBodies;
this. dateOfIncident = dateOfIncident;
this. timeOfIncident = timeOfIncident;
this. circumstanceOfDeath = circumstanceOfDeath;
this. placeBodyFound = placeBodyFound;
this. specialCircumstances = specialCircumstances;
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



public void getIncidentLogNumber(String incidentLogNumber)
{
    this.incidentLogNumber = incidentLogNumber;
}
public void getReferenceNumber(String referenceNumber)
{
    this.referenceNumber = referenceNumber;
}
public void getNumberOfBodies(int numberOfBodies)
{
    this.numberOfBodies = numberOfBodies;
}
public void getDateOfIncident(String dateOfIncident)
{
    this.dateOfIncident = dateOfIncident;
}
public void getTimeOfIncident(String timeOfIncident)
{
    this.timeOfIncident = timeOfIncident;
}
public void getCircumstanceOfDeath(String circumstanceOfDeath)
{
    this.circumstanceOfDeath = circumstanceOfDeath;
}
public void getPlaceBodyFound(String placeBodyFound)
{
    this.placeBodyFound = placeBodyFound;
}
public void getSpecialCircumstances(String specialCircumstances)
{
    this.specialCircumstances = specialCircumstances;
}
}
