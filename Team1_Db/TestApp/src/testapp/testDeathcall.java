/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package deathcall;
 
/**
 *   
 * @author Innovation Hub
 * @JCSE
 */
public class testDeathcall { 
    
    public static void main(String args []) 
    {
    //timeOfCall,numberCallMade,institution,sceneAddress,province,region,sceneCondition,nameOfCaller
         DeathCall Dcall = new DeathCall("12:12:12","111","institution","address","province","region","scene condition","name of caller");
         deathCallDb AuditDb = new deathCallDb(Dcall,"root","200971082","localhost","/mydb");
         AuditDb.init();
         System.out.println(AuditDb.add());
         
    }
    
}
