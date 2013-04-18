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
public class testIncident { 
    
    public static void main(String args [])
    { 
    //String incidentLogNumber ,String referenceNumber , int numberOfBodies ,String dateOfIncident,String timeOfIncident , String circumstanceOfDeath , String placeBodyFound , String specialCircumstances)
   Incident inci = new  Incident("incident number","refe" ,2,"10/10/10","12:43:23" , "circumstance of death", "place body found", "specialCircumstances");
   incidentDb inciDb = new incidentDb(inci,"root","200971082","localhost","/mydb");
   inciDb.init();
System.out.println(inciDb.add());
   
   
    }
    
}
