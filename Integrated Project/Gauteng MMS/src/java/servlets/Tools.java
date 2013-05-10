package servlets;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import database.*;
import java.util.ArrayList;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Administrator
 */
public class Tools {
     private DbDetail dbdetail;
    
    /**
     * constructor for an instance of Tools
     */
    public Tools(){
        dbdetail = new DbDetail("localhost","/mydb","root","password"); 
    }
    //end constructor
    
    public String adduser(){
        Employee e = new Employee("11111111","password","User","UserSurname","Admin",4,"user1@user.com",true);
        Employee e2 = new Employee("12345678","123456","User2","UserSurname2","Pathologist",3,"user2@user.com",true);
        EmployeeDb db1 = new EmployeeDb(e,dbdetail);
        db1.init();
        EmployeeDb db2 = new EmployeeDb(e2,dbdetail);
        db2.init();
        db1.add();
        return(db2.add());
    }
    
    /**
     * Try to log in a user, if the login is successful then return true, otherwise return false
     * @param personnelnumber the personnel number of the user
     * @param password the user's password
     * @return the access level of the user or -1 for invalid user
     */
    public int logIn(String personnelnumber, String password, HttpSession sess){
            //check the database for this user
            Employee emp = new Employee(personnelnumber, password);
            EmployeeDb empdb = new EmployeeDb(emp,dbdetail);
            empdb.init();
            String status = empdb.read();
            if(status.contains("fail")){
                  this.makeAuditTrail("Warning", "Unsuccessfull log in", personnelnumber,"Log In Screen");
                  return -1;
             }
            else{
                this.makeAuditTrail("Log In", "Successfull log in", personnelnumber,"Log In Screen");
                sess.setAttribute("employee", emp);
                int access = Integer.parseInt(status.substring(0, 1));
                return access; 
            }
    }
    //end logIn
    
    /**
     * Create an audit trail entry. Given the following parameters
     * @param eventtype the type of event that occurred eg. login failed
     * @param eventmessage the message that needs to be stored
     * @param user the user that caused this event
     **/
    public void makeAuditTrail(String eventtype, String eventmessage, String user, String location){
        String timestamp = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(Calendar.getInstance().getTime());
        String[] datetime = timestamp.split(" ");
        AuditTrail adt = new AuditTrail(datetime[0],datetime[1],eventtype,eventmessage,user, location);
        AuditTrailDb adb = new AuditTrailDb(adt,dbdetail);
        adb.init();
        adb.add(); 
    }
    //end makeAuditTrail
    
    /**
     * This will return the Incident Log number for an incident
     * @return Incident Log number or error message
     * 
     */
    public String getIncidentLogNumber(){
        Incident incident = new Incident();
        IncidentDb incidentdb = new IncidentDb(incident,dbdetail);
        incidentdb.init();
        String timestamp = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(Calendar.getInstance().getTime());
        String[] datetime = timestamp.split(" ");
        String timestamp2 = new SimpleDateFormat("yyyyMMdd HH:mm:ss").format(Calendar.getInstance().getTime());
        String datenum = timestamp2.split(" ")[0];
        try{
            int incidentnum = incidentdb.countOpenIncidents(datenum)+1;
            String lognumber = Integer.toString(incidentnum) + datenum;
            return lognumber;
        }
        catch(Exception e){
            return "Error could not generate incident log number. " + e.getMessage();
        }
    }
    //end getIncidentLogNumber
    
    public String makeYear(String name){
        String out = "<select id="+name+" name="+name+">";
        out = out + "<option selected='selected'>Year</option>";
        String timestamp = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(Calendar.getInstance().getTime());
        String[] datetime = timestamp.split(" ");
        String date[] = datetime[0].split("-");
        String year = date[0];
        int intyear = Integer.parseInt(year);
        for(int i= intyear;i>=(intyear-150);i--){
            out = out + "<option>" +Integer.toString(i) +"</option>";
        }
        out = out + "</select>";
        return out;
    }
    //end makeYear
    
    public String makeMonth(String name){
        String out = "<select id="+name+" name="+name+">";
        out = out + "<option selected='selected'>Month</option>";
        out = out + "<option num=1>January</option>";
        out = out +"<option num=2>February</option>";
        out = out +"<option num=3>March</option>";
        out = out +"<option num=4>April</option>";
        out = out +"<option num=5>May</option>";
        out = out +"<option num=6>June</option>";
        out = out +"<option num=7>July</option>";
        out = out +"<option num=8>August</option>";
        out = out +"<option num=9>September</option>";
        out = out +"<option num=10>October</option>";
        out = out +"<option num=11>November</option>";
        out = out + "<option num=12>December</option>";
        out = out + "</select>";
        return out;
    }
    
    public String makeDay(String name){
        String out = "<select id="+name+" name="+name+">";
        out = out + "<option selected='selected'>Day</option>";
        for(int i=1;i<32;i++){
            out = out + "<option>"+Integer.toString(i)+"</option>";
        }
        out = out + "</select>";
        return out;
    }
    
    public String makeHour(String name){
        String out = "<select name=" + name+" id=" +name+">";
        out = out + "<option selected='selected'>Hour</option>";
        for(int i=0;i<24;i++){
            out = out + "<option>"+Integer.toString(i)+"</option>";
        }
        out =  out + "</select>";
        return out;
    }
    
    public String makeMinute(String name){
        String out = "<select name=" + name+" id=" +name+">";
        out = out + "<option selected='selected'>Minute</option>";
        for(int i=0;i<50;i++){
            out = out + "<option>"+Integer.toString(i)+"</option>";
        }
        out =  out + "</select>";
        return out;
    }  
    
      /**
     * This returns the contents of a reference list from the database
     * @param listname  name of the table containing the list elements
     * @return returns the contents of a reference list from the database or an error
     */
    public ArrayList<String> getReferenceList(String listname){
        ReferenceListDb refdb = new ReferenceListDb(dbdetail,listname);
        refdb.init();
        try{
            return refdb.referenceList();
        }
        catch(Exception e){
            ArrayList<String> error = new ArrayList<String>();
            error.add("Error loading list: " + e.getMessage());
            return error;
        }
    }
    //end getReferenceList
    
    public String makeReferenceList(String listname){
        ArrayList<String> list = new ArrayList<String>();
        list = this.getReferenceList(listname);
        String out = "<select name='"+listname+"' id='"+listname+"'>";
        out = out+ "<option selected='slected'>Select</option>";
        int size = list.size();
        for(int i=0;i<size;i++){
            out= out + "<option>"+list.get(i)+"</option>";
        }
        out = out + "</select>";
        return out;
    }
    
    /**
     * This will create a table with all the open incidents from the database
     */
    public String makeOpenIncidentsTable(){
        IncidentDb indb = new IncidentDb(dbdetail);
        indb.init();
        try{
            ArrayList<Incident> openincidents = indb.openIncidentList();
            
           String table = "<table>"
                    +"<th >FPS Incident Log Number</th>"
                    +"<th >SAPS/ IR number reference number</th>"
                    +"<th >Date</th>"
                    +"<th >Time</th>"
                    +"<th >Number of bodies</th>"
                    +"<th >Number of bodies recieved</th>"
                    +"<th >Place Body was found</th>"
                    +"<th >Circumstances of death</th>"
                    +"<th >Special Circumstances</th>";
            int size = openincidents.size();
            for(int i=0;i<size;i++){
                Incident inc = openincidents.get(i);
                table = table +"<tr > <td >"+  inc.getIncidentLogNumber() +"</td>"
                        + "<td >" + inc.getReferenceNumber() +"</td>"
                        +"<td >" + inc.getDateOfIncident() + "</td>"
                        +"<td >" + inc.getTimeOfIncident() + "</td>"
                        +"<td >" + Integer.toString(inc.getNumberOfBodies()) + "</td>"
                        +"<td >" + Integer.toString(inc.getBodyCount()) + "</td>"
                        +"<td >" + inc.getPlaceBodyFound() + "</td>"
                        +"<td >" + inc.getCircumstanceOfDeath() + "</td>"
                        +"<td >" + inc.getSpecialCircumstances() + "</td>"
                        + "</tr>"; 
            }
            table = table + "</table>";
            
            return table;
        }
        catch(Exception e){
            return e.getMessage();
        }
    }
    // end makeOPenIncidentsTable
}
//end Tools class
