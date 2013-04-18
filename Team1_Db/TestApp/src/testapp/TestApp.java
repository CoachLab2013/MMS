/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package testapp;

import java.sql.SQLException;
import java.util.ArrayList;




/**
 *
 * @author Chester
 */

public class TestApp {
public static DbDetail dbDetail = new DbDetail("localhost","/mydb","root","hello");
    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) throws SQLException 
    {
        
        //add user
        /*Employee emp = new Employee("12345678","1234", "john","smith", "manager", 1, "200935415@student.uj.ac.za",true);
        DatabaseConnector empDb = new EmployeeDb(emp,dbDetail);
        boolean status = empDb.init();
        System.out.println(empDb.add());*/
        
        //user login
        //EmployeeDb empDb = new EmployeeDb(new Employee("12345678","1234"),dbDetail);
        //empDb.init(); 
        
        //System.out.println(empDb.delete());
        //System.out.println(empDb.edit());
        //System.out.println(empDb.read());
        
       /*
        * 
        * 
        empDb.init();
        //EmployeeDb empDb = new EmployeeDb(new Employee("00000000","1234","Chester","Cobus","ADMIN",1,"cacobus15@gmail.com",true),"root","hello", "localhost","/mydb");
        //empDb.init();
        
        //System.out.println(empDb.delete());
        //System.out.println(empDb.edit());
        /*System.out.println(empDb.read());
        empDb.init();*/
        //list of employees
        /*ArrayList<Employee> list = empDb.employeeList();
        for(int i = 0;i < list.size();i++)
        {
             System.out.println(list.get(i).getPersonnelNumber() + " " +list.get(i).getName());
        //Audit Trail
         /*AuditTrail AuditTr = new AuditTrail("2013/04/11", "13:30:22" , "Added" , "Exception type" ,"12345678");
         DatabaseConnector AuditDb = new AuditTrailDb(AuditTr,"root","hello","localhost","/mydb");
         AuditDb.init();
         System.out.println(AuditDb.add());*/
         
        
        //TESTING ORGANIZATION STUFF:
        //connection
        //OrganizationDb orgDb = new OrganizationDb(new Organization("TestHospital2", "0118677778", "Hospital"), dbDetail);
        //orgDb.init();
        
        /*//adding organization
        System.out.println(orgDb.add());*/
        
        //list of organizations
        /*ArrayList<Organization> orglist = orgDb.organizationList();
        for(int j = 0; j<orglist.size(); j++){
            System.out.println(orglist.get(j).getName() + " " + orglist.get(j).getContactNumber() + " " + orglist.get(j).getType());
        }*/
        
        //edit
        
        
       /*//deleting organizations
       System.out.println(orgDb.delete("Hospital", 8));*/
        
        //END OF ORGANIZATION STUFF.
        
        
        //TESTING REFERENCE LIST STUFF
       /* //Reference List
        ReferenceListDb db = new ReferenceListDb("gender","idGender","type","female",1,"root","hello","localhost","/mydb");
        //db.init();
        //System.out.println(db.add());
        db.init();
        
        //System.out.println(db.edit());
        ArrayList<String> list = db.employeeList();
        for(int i = 0;i < list.size();i++)
        {
            System.out.println(list.get(i));
        }*/
        //END OF REFERENCE LIST STUFF

        //TESTING DEATHCALL STUFF
        /*//timeOfCall,numberCallMade,institution,sceneAddress,province,region,sceneCondition,nameOfCaller
         DeathCall Dcall = new DeathCall("12:12:12","111","institution","address","province","region","scene condition","name of caller");
         deathCallDb AuditDb = new deathCallDb(Dcall,"root","200971082","localhost","/mydb");
         AuditDb.init();
         System.out.println(AuditDb.add());*/
        //END OF DEATHCALL STUFF
        
        //TESTING VEHICLE STUFF
        /*DatabaseConnector db= null;//new VehicleDb(new Vehicle("TVD702", 4),dbDetail);
        db.init();
        System.out.println(db.add());
        VehicleDb vehicleDb = (VehicleDb)db;
        vehicleDb  = new VehicleDb(new Vehicle("BHSN54",6),dbDetail);
        vehicleDb .init();
        System.out.println(vehicleDb.assignDriver(new Driver(2,null,null)));
        //
        ArrayList<Vehicle> list = vehicleDb.vehicleList();
        for(int i = 0;i < list.size();i++)
        {
            System.out.println(list.get(i).getRegistrationNumber() + " " + list.get(i).getCrew());
        }
        //System.out.println(db.add());*/
        //END OF VEHICLE
        
        
        //TESTING INCIDENT
         /*//String incidentLogNumber ,String referenceNumber , int numberOfBodies ,String dateOfIncident,String timeOfIncident , String circumstanceOfDeath , String placeBodyFound , String specialCircumstances)
        Incident inci = new  Incident("incident number","refe" ,2,"10/10/10","12:43:23" , "circumstance of death", "place body found", "specialCircumstances");
        IncidentDb inciDb = new IncidentDb(inci,"root","200971082","localhost","/mydb");
        inciDb.init();
        System.out.println(inciDb.add());*/
        //END OF INCIDENT STUFF
    }
}
