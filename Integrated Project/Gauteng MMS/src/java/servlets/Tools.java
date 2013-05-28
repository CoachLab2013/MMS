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
 
        dbdetail = new DbDetail("localhost","/mydb","root","hello");

    }
    //end constructor
    
    public String adduser(){
        Employee e = new Employee("11111111","password","User","UserSurname","Admin",4,"user1@user.com",true);
        Employee e2 = new Employee("12345678","123456","User2","UserSurname2","Pathologist",3,"user2@user.com",true);
        EmployeeDb db1 = new EmployeeDb(e, getDbdetail());
        db1.init();
        EmployeeDb db2 = new EmployeeDb(e2, getDbdetail());
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
            EmployeeDb empdb = new EmployeeDb(emp, getDbdetail());
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
        AuditTrailDb adb = new AuditTrailDb(adt, getDbdetail());
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
        IncidentDb incidentdb = new IncidentDb(incident, getDbdetail());
        incidentdb.init();
        String timestamp = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(Calendar.getInstance().getTime());
        String[] datetime = timestamp.split(" ");
        String timestamp2 = new SimpleDateFormat("yyyyMMdd HH:mm:ss").format(Calendar.getInstance().getTime());
        String datenum = timestamp2.split(" ")[0];
        try{
            int incidentnum = incidentdb.countOpenIncidents(datenum)+1;
            String formated_num = String.format("%03d", incidentnum); 
            String lognumber =  formated_num+ datenum;
            return lognumber;
        }
        catch(Exception e){
            return "Error could not generate incident log number. " + e.getMessage();
        }
    }
    //end getIncidentLogNumber
    
    public String makeYear(String name, int year_num){
        String out = "<select id="+name+" name="+name+">";
        if(year_num==-1){
            out = out + "<option selected='selected'>Year</option>";
        }
        String timestamp = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(Calendar.getInstance().getTime());
        String[] datetime = timestamp.split(" ");
        String date[] = datetime[0].split("-");
        String year = date[0];
        int intyear = Integer.parseInt(year);
        for(int i= intyear;i>=(intyear-150);i--){
            if(i==year_num){
                out = out + "<option selected='selected'>" +Integer.toString(i) +"</option>";
            }
            else{
                out = out + "<option>" +Integer.toString(i) +"</option>";
            }
        }
        out = out + "</select>";
        return out;
    }
    //end makeYear
    
    public String makeMonth(String name, int month_num){
        String out = "<select id="+name+" name="+name+">";
        if(month_num==-1){
            out = out + "<option selected='selected'>Month</option>";
        }
        String[] months = {"January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"};
        for(int i=1;i<13;i++){
            if(i==month_num){
                out = out + "<option selected='selected' num="+i+">"+months[i-1]+"</option>";
            }
            else{
                out = out + "<option num="+i+">"+months[i-1]+"</option>";
            }
        }
        out = out + "</select>";
        return out;
    }
    
    public int getMonthNumber(String month){
        String[] months = {"January", "Febuary", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"};
        int index = 0;
        while(!(months[index].equals(month)) & (index<12)){
            index ++;
        }
        return index+1;
    }
    
    public String makeDay(String name, int day_num){
        String out = "<select id="+name+" name="+name+">";
        if(day_num==-1){
         out = out + "<option selected='selected'>Day</option>";   
        }
        for(int i=1;i<32;i++){
            if(i==day_num){
                out = out + "<option  selected='selected'>"+Integer.toString(i)+"</option>";
            }
            else{
                out = out + "<option>"+Integer.toString(i)+"</option>";
            }
        }
        out = out + "</select>";
        return out;
    }
    
    public String makeHour(String name, int hour_num){
        String out = "<select name=" + name+" id=" +name+">";
        if(hour_num==-1){
            out = out + "<option selected='selected'>Hour</option>";
        }
        for(int i=0;i<24;i++){
            if(hour_num==i){
                out = out + "<option selected='selected'>"+Integer.toString(i)+"</option>";
            }
            else{
                out = out + "<option>"+Integer.toString(i)+"</option>";
            }
        }
        out =  out + "</select>";
        return out;
    }
    
    public String makeMinute(String name, int min_num){
        String out = "<select name=" + name+" id=" +name+">";
        if(min_num==-1){
            out = out + "<option selected='selected'>Minute</option>";
        }        
        for(int i=0;i<60;i++){
            if(min_num==i){
                out = out + "<option selected='selected'>"+Integer.toString(i)+"</option>";
            }
            else{
                out = out + "<option>"+Integer.toString(i)+"</option>";
            }
        }
        out =  out + "</select>";
        return out;
    }  
    
      /**
     * This returns the contents of a reference list from the database
     * @param listname  name of the table containing the list elements
     * @return returns the contents of a reference list from the database or an error
     */
    public ArrayList<String> getReferenceList(String listname, String field){
        ReferenceListDb refdb = new ReferenceListDb(getDbdetail(),listname);
        refdb.setField2(field);
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
    
    public String makeReferenceList(String listname, String field, String selected){
        ArrayList<String> list = new ArrayList<String>();
        list = this.getReferenceList(listname, field);
        String out = "<select name='"+listname+"' id='"+listname+"'>";
        if(selected.equals("")){
            out = out+ "<option selected='slected'>Select</option>";
        }
        int size = list.size();
        for(int i=0;i<size;i++){
            String element = list.get(i);
            if(element.equals(selected)){
                out= out + "<option selected='selected'>"+element+"</option>";
            }
            else{
            out= out + "<option>"+element+"</option>";
        }
        }
        out = out + "</select>";
        return out;
    }
    
    /**
     * This will create a table with all the open incidents from the database
     */
    public String makeOpenIncidentsTable(String id){
        IncidentDb indb = new IncidentDb(getDbdetail());
        indb.init();
        try{
            ArrayList<Incident> openincidents = indb.openIncidentList();
            
           String table = "<table class='tabledisplay' id='" + id+"'>"
                    +"<th class='tableheading'>FPS Incident Log Number</th>"
                    +"<th class='tableheading'>SAPS/ IR number reference number</th>"
                    +"<th class='tableheading'>Date</th>"
                    +"<th class='tableheading'>Time</th>"
                    +"<th class='tableheading'>Number of bodies</th>"
                    +"<th class='tableheading'>Number of bodies recieved</th>"
                    +"<th class='tableheading'>Place Body was found</th>"
                    +"<th class='tableheading'>Circumstances of death</th>"
                    +"<th class='tableheading'>Special Circumstances</th>";
            int size = openincidents.size();
            for(int i=0;i<size;i++){
                Incident inc = openincidents.get(i);
                table = table +"<tr class='tablerow' lognumber='"+inc.getIncidentLogNumber()+"'>"
                        +"<td>"+  inc.getIncidentLogNumber() +"</td>"
                        + "<td class='tablecell'>" + inc.getReferenceNumber() +"</td>"
                        +"<td class='tablecell'>" + inc.getDateOfIncident() + "</td>"
                        +"<td class='tablecell'>" + inc.getTimeOfIncident() + "</td>"
                        +"<td class='tablecell'>" + Integer.toString(inc.getNumberOfBodies()) + "</td>"
                        +"<td class='tablecell'>" + Integer.toString(inc.getBodyCount()) + "</td>"
                        +"<td class='tablecell'>" + inc.getPlaceBodyFound() + "</td>"
                        +"<td class='tablecell'>" + inc.getCircumstanceOfDeath() + "</td>"
                        +"<td class='tablecell'>" + inc.getSpecialCircumstances() + "</td>"
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
    
    public String getDateTime(){
        String timestamp = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(Calendar.getInstance().getTime());
        return timestamp;
    }
    //end getDateTime
    
    public Incident getIncidentDetail(String lognumber){
       IncidentDb idb = new IncidentDb(getDbdetail());
       idb.init();
       try{
           Incident incident = idb.findIncident(lognumber);
           return incident;
       }
       catch(Exception e){
           return null;
       }
    }
    
    public DeathCall getDeathCall(Incident inc){
        DeathCall call = new DeathCall(inc);
        DeathCallDb calldb = new DeathCallDb(call,dbdetail);
        calldb.init();
        calldb.read();
        call = calldb.getDeathCall();
        return call;
    }
    public BodyAtMortuary getBody(String deathRegisterNumber)
    {
        BodyAtMortuary body = new BodyAtMortuary(deathRegisterNumber);//"099888592");
        Tools t = new Tools();
        DbDetail dbdetail = t.getDbdetail();
        BodyDb bodyDb = new BodyDb(dbdetail, body);
        bodyDb.init();
        bodyDb.read();
        body = (BodyAtMortuary)bodyDb.getBody();
        return body;
    }
    //

    /**
     * @return the dbdetail
     */
    public DbDetail getDbdetail() {
        return dbdetail;
    }
}
//end Tools class
