package testapp;

import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author Team 1
 */
public class TestApp {

    public static DbDetail dbDetail = new DbDetail("localhost", "/mydb", "root", "hello");

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) throws SQLException {
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
        //AuditTrail AuditTr = new AuditTrail("2013/04/11", "13:30:22" , "Added" , "sucessfully added" ,"12345678", "Log In Screen");
        //DatabaseConnector AuditDb = new AuditTrailDb(AuditTr,dbDetail);
        //AuditDb.init();

        //ADDING AN AUDIT TRAIL
        //System.out.println(AuditDb.add());


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
        //timeOfCall,numberCallMade,institution,sceneAddress,province,region,sceneCondition,nameOfCaller
       /* Incident incident = new Incident();
        incident.setIncidentLogNumber("00220130424");
        
        DeathCall Dcall = new DeathCall(incident, "00:30:30", "2013-01-01", "0119876333", "institutions", "scene Address", "Province", "Region", "scene Conditions", "name Of Caller");
        DeathCallDb deathCalldb = new DeathCallDb(Dcall, dbDetail);
        deathCalldb.init();*/

        //adding a deathCall
        //System.out.println(deathCalldb.add());

        //edit deathCall
        //System.out.println(deathCalldb.edit());

        //listing DeatCall
        /*ArrayList<DeathCall> dcList = deathCalldb.deathCallList();
        for (int i = 0; i < dcList.size(); i++) {
            System.out.println(dcList.get(i).getIncident().getIncidentLogNumber() + " " + dcList.get(i).getDateOfCall() + " " + dcList.get(i).getInstitution() + " " + dcList.get(i).getNameOfCaller() + " " + dcList.get(i).getNumberOfCaller() + " " + dcList.get(i).getProvince() + " " + dcList.get(i).getRegion() + " " + dcList.get(i).getSceneAddress() + " " + dcList.get(i).getSceneConditions() + " " + dcList.get(i).getTimeOfCall());
            //System.out.println(dcList.get(i).toString());
        }*/
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
        //Incident inci = new  Incident("002201301","REF" ,4,"2013-04-06","11:50:30" , "rap stabbing", "vegas", "had beef with Rick Ross","Burger King",3,true,"2013-04-06");
        //IncidentDb inciDb = new IncidentDb(inci,dbDetail);
       // inciDb.init();

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
        //System.out.println(inciDb.countOpenIncidents("20130424"));
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
        
        //BODYFILE
        //BodyAtMortuary body = new BodyAtMortuary("john", "smith", "099888592","male", "6", "3", "23", "2","3333", "2013-04-23", 20, "4444333222", "4442000", "44432ddd", "22kfdkd","2013-04-23", new BodyAddress("a", "b","c","d", "e", "f", "g", "h"), 20, 6, "gg", "ggrer",false, "2013-06-03", false,new Incident("002201301"), "44dddd33221", "2013-06-03","2013-06-03");
        //BodyDb bDb = new BodyDb(dbDetail,new BodyAtMortuary());
       // bDb.init();
        //System.out.println(bDb.read());
        //bDb.init();
        //ArrayList<BodyAtMortuary> list = bDb.getBodies();
        //System.out.println(list.get(0).getDeathRegisterNumber());
        //Witness[] wits = {new Witness("chester", "cobus"),new Witness("daniel", "cobus")};
        //Property p = new Property("333333", "money", "2013-05-10", "cash", "plastic", "chresd", wits, "john", "smith", true,"099888592", false);
        PropertyDb proDb = new PropertyDb(dbDetail);
        proDb.init();
        ArrayList<Property> list = proDb.properties();
        for(int i = 0;i < list.size(); ++i)
        {
            System.out.println(list.get(i).getSealNumber());
        }
        //System.out.println(proDb.read());
       // System.out.println(proDb.getProperty().getDate());
        //BodyAtScene bodyAtScene = new BodyAtScene("abc", "2013-04-23", true, "2013-04-23", "2013-04-23", "ss", "dd","2013-04-23", (BodyAtMortuary)bDb.getBody());
        //BodyAtSceneDb atDb = new BodyAtSceneDb(dbDetail, bodyAtScene);
        //atDb.init();
        //System.out.println(atDb.read());
        //System.out.println(atDb.getBodyAtScene().getPlaceOfDeath());
        //System.out.println(atDb.add());
        //atDb.init();
        //System.out.println(atDb.addMember(new Member("chester", "cobus", "officer","02020292","org","oe", "099888591")));
        //bDb.init();
        //System.out.println(bDb.addBodyAddress());
        //bDb.init();
        //System.out.println(bDb.addBodyAtMotuary());
         
            
        
        //ENDBODYFILE
    }
}
