package database;

import java.sql.SQLException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

/**
 *
 * @author Team 1
 */
public class TestApp {

    public static DbDetail dbDetail = new DbDetail("localhost", "/mydb", "root", "password123");

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) throws SQLException, Exception {
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
<<<<<<< HEAD
        Incident inci = new  Incident("002201301","REF" ,4,"2013-04-06","11:50:30" , "rap stabbing", "vegas", "had beef with Rick Ross","Burger King",3,true,"2013-04-06");
        IncidentDb inciDb = new IncidentDb(inci,dbDetail);
       //inciDb.init();
=======
        Incident inci = new  Incident("120130407","REF" ,4,"2013-04-06","11:50:30" , "rap stabbing", "vegas", "had beef with Rick Ross","Burger King",4,true);
        IncidentDb inciDb = new IncidentDb(inci,dbDetail);
        inciDb.init();
>>>>>>> origin/master

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
        
        //increase body count
        System.out.println(inciDb.IncreaseBodyCount());
        
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
        //add a body details
<<<<<<< HEAD
        
        BodyAtMortuary body = new BodyAtMortuary("peter", "john", "099888592","female", "0", "3", "00", "00","3333", "2013-04-23", 20, "4444333222", "4442000", "44432ddd", "22kfdkd","2013-04-23", new BodyAddress("D", "D","D","D", "e", "f", "g", "h"), 20, 6, "gg", "ggrer",false, "2013-06-03", false,new Incident("002201301"), "44dddd33221", "2013-06-03","2013-06-03");
=======
        /*BodyAtMortuary body = new BodyAtMortuary("peter", "john", "099888592","female", "0", "3", "00", "00","3333", "2013-04-23", 20, "4444333222", "4442000", "44432ddd", "22kfdkd","2013-04-23", new BodyAddress("D", "D","D","D", "e", "f", "g", "h"), 20, 6, "gg", "ggrer",false, "2013-06-03", false,new Incident("002201301"), "44dddd33221", "2013-06-03","2013-06-03");
>>>>>>> origin/master
        BodyDb bDb = new BodyDb(dbDetail,body);
        bDb.init();
        //System.out.println(bDb.);
        ArrayList<BodyAtMortuary> list = bDb.getBodies();
        System.out.println(list.get(0).getDeathRegisterNumber());;
        
        //editing
        //System.out.println(bDb.editBodyAtMotuary());
        //System.out.println(bDb.editBodyAddresss());
        //System.out.println(bDb.edit());
        //
        //list of body details
        //bDb = new BodyDb(dbDetail);
        //bDb.init();
        //ArrayList<BodyAtMortuary> list = bDb.getBodies();
        //System.out.println(list.get(0).getDeathRegisterNumber());
        
        //adding body at scene details
        BodyAtScene bodyAtScene = new BodyAtScene("jhb", "2013-04-23", true, "2013-04-30", "2013-04-30", "ss", "dd","2013-04-23", (BodyAtMortuary)bDb.getBody());
        BodyAtSceneDb atDb = new BodyAtSceneDb(dbDetail, bodyAtScene);
        //atDb.init();
        //System.out.println(atDb.);
        
        //System.out.println(atDb.read());
        //System.out.println(atDb.getBodyAtScene().getPlaceOfDeath());
        //atDb.init();
        //System.out.println(atDb.editMember(new Member("daniel", "cobus", "officer","02020292","organ","oe", "099888592")) +"1");
        //bDb.init();
        //System.out.println(bDb.addBodyAddress());
        //bDb.init();
        //System.out.println(bDb.addBodyAtMotuary());
        
        //Adding a property
       // Witness[] wits = {new Witness("chester", "peter"),new Witness("daniel", "pwter")};
        //Property p = new Property("333333", "money", "2013-05-10", "cash", "plastic", "chresd", wits, "john", "smith", true,"099888592", false);
        //PropertyDb proDb = new PropertyDb(dbDetail,p);
        //proDb.init();
        //System.out.println(proDb.edit());
        //System.out.println(proDb.add());
        //List of properties and read
        //ArrayList<Property> plist = proDb.properties();
        //for(int i = 0;i < plist.size(); ++i)
        //{
            //System.out.println(plist.get(i).getSealNumber());
        //}
        //System.out.println(proDb.read());
        //System.out.println(proDb.getProperty().getDate());
        
        //adding a body file
        //BodyFile file = new BodyFile("2013-05-13", true, true, true, true,"2013-05-13", "099888592");
       // BodyFileDb db = new BodyFileDb(dbDetail, file);
       // db.init();
        //System.out.println(db.add());
        // reading from bodty file 
        //file = new BodyFile("099888592"); // have to pass through a death register number
        //db = new BodyFileDb(dbDetail, file);
        //db.init();
        //System.out.println(db.read());
        //System.out.println(db.getBodyFile().getDateFileClosed());
        //list of body files 
        //db = new BodyFileDb(dbDetail);
        //db.init();
        //ArrayList<BodyFile> flist = db.BodyFileList();
        //for(int i = 0; i < flist.size();i++)
        //{
            //System.out.println(flist.get(i).getDateFileOpened() + " " +  flist.get(i).isBodyIdentified());
        //}
        //editing a body file to update its values
<<<<<<< HEAD
        //db = new BodyFileDb(dbDetail, new BodyFile("2013-05-14", false, false, false, false,"2013-05-14", "099888592"));
        //db.init();
        //System.out.println(db.edit());
=======
        db = new BodyFileDb(dbDetail, new BodyFile("2013-05-14", false, false, false, false,"2013-05-14", "099888592"));
        db.init();
        System.out.println(db.edit());*/
>>>>>>> origin/master
        //ENDBODYFILE
        
        
        //POST MORTEM
        PostMortemDb  postDb = new PostMortemDb(dbDetail);
        postDb.init();
        postDb.setPostMortem(new PostMortem("908","f","g","gy",true,true,"ff",new BodyAtMortuary("099888592"),new LabRecord(false, 6, 0)));
        System.out.print(postDb.IncreaseSampleCount());
        //System.out.println(postDb.edit());
        //System.out.println(postDb.getPostMortem().getLabRecord().getNumberOfSamples());
        //System.out.println(postDb.getPostMortem().getDHA1663number());
        //ENDPOST MORTEM
    }
}
