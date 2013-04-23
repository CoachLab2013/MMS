package testapp;

import java.sql.SQLException;
import java.util.ArrayList;




/**
 *
 * @author Team 1
 */

public class TestApp {
public static DbDetail dbDetail = new DbDetail("localhost","/mydb","root","password123");
    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) throws SQLException 
    {
        //TESTING EMPLOYEE STUFF
        //Employee emp = new Employee("12388678","1214", "john","smith", "manager", 1, "200935415@student.uj.ac.za",true);
        //DatabaseConnector empDb = new EmployeeDb(emp,dbDetail);
        //empDb.init();
        
        //adding and employee
        //System.out.println(empDb.add());
        
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
             System.out.println(list.get(i).getPersonnelNumber() + " " +list.get(i).getName());*/
        //TESTING AUDIT TRAIL STUFF
        //Audit Trail
         AuditTrail AuditTr = new AuditTrail("2013/04/11", "13:30:22" , "Added" , "sucessfully added" ,"12345678", "Log In Screen");
         DatabaseConnector AuditDb = new AuditTrailDb(AuditTr,dbDetail);
         AuditDb.init();
         
         //ADDING AN AUDIT TRAIL
         System.out.println(AuditDb.add());
         
        
        //TESTING ORGANIZATION STUFF:
        //connection
        //OrganizationDb orgDb = new OrganizationDb(new Organization(3,"TestSampleLab","0119876543","Sample Lab"), dbDetail);
        //orgDb.init();
        
        //adding organization
        //System.out.println(orgDb.add());
        
        //list of organizations
        //ArrayList<Organization> orglist = orgDb.organizationList();
        //for(int j = 0; j<orglist.size(); j++){
        //    System.out.println(orglist.get(j).getIdOrganization() + " " + orglist.get(j).getName() + " " + orglist.get(j).getContactNumber() + " " + orglist.get(j).getType());
        //}
        
        //edit organization
        //System.out.println(orgDb.edit());
        
        
       //deleting organization
       //System.out.println(orgDb.delete());
        
        //END OF ORGANIZATION STUFF.
        
       //TESTING VEHICLE DISPATCH STUFF
        //creating the objects to work with
        //Incident incid = new Incident();
        //incid.setIncidentLogNumber("TESTLOGNUMBER1");
        //Vehicle car = new Vehicle("RRB123");
       // VehicleDispatch carDispatch = new VehicleDispatch("1000-01-01 00:00:30","1000-01-01 00:00:40", "Our edited dispatch", car, incid);
        //VehicleDispatchDb dispatchDb = new VehicleDispatchDb(dbDetail, carDispatch);
        //dispatchDb.init();
        
        //adding
        //System.out.println(dispatchDb.add());
        
        //Deleting
        //System.out.println(dispatchDb.delete());
        
        //editing
        //System.out.println(dispatchDb.edit());
        
        //reading
        //System.out.println(dispatchDb.read());
        //END OF VEHICLE DISPATCH STUFF
        
        //TESTING REFERENCE LIST STUFF
        /*//Reference List
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
         //String incidentLogNumber ,String referenceNumber , int numberOfBodies ,String dateOfIncident,String timeOfIncident , String circumstanceOfDeath , String placeBodyFound , String specialCircumstances)
        //Incident inci = new  Incident("001232523","REF" ,4,"2013-04-06","11:50:30" , "rap stabbing", "vegas", "had beef with Rick Ross","Burger King",3,true);
        //IncidentDb inciDb = new IncidentDb(inci,dbDetail);
        //inciDb.init();
        
        //adding an incident
        //System.out.println(inciDb.add());
        
        //listing incidents
       // ArrayList<Incident> list = inciDb.openIncidentList();
        //for(int i = 0;i < list.size();i++)
        //{
        //    System.out.println(list.get(i).getIncidentLogNumber() + " " + list.get(i).getReferenceNumber() + " " + list.get(i).getNumberOfBodies() + " " + list.get(i).getDateOfIncident() + " " + list.get(i).getTimeOfIncident() + " " + list.get(i).getCircumstanceOfDeath() + " " + list.get(i).getPlaceBodyFound() + " " + list.get(i).getSpecialCircumstances() + " " + list.get(i).getBodyCount() + " " + list.get(i).isOpen());
        //}
        
        //edit incidents
        //System.out.println(inciDb.edit());
        //delete incidents
        
        
        //counting open incidents
        //System.out.println(inciDb.countOpenIncidents("2013-04-06"));
        //END OF INCIDENT STUFF
        
        //TEST INCIDENT MESSAGE
        /*IncidentMessage msg = new IncidentMessage("2013-04-17","11:29:00","Stabbed","John",false,false);
        IncidentMessageDb db = new IncidentMessageDb(msg, dbDetail);
        db.init();
        //System.out.println(db.add());
        ArrayList<IncidentMessage> list = db.messageList();
        for(int i = 0;i < list.size();i++)
        {
            System.out.println(list.get(i).getMannerOfDeath());
        }*/
        //END OF INCIDENT MESSAGE
    }
}
