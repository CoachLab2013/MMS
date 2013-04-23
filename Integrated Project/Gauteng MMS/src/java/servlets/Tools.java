/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import database.*;
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
        dbdetail = new DbDetail("localhost","/mydb","asheen","password"); 
    }
    //end constructor
    
    /*public String adduser(){
        //Employee e = new Employee("11111111","password","User","UserSurname","Admin",4,"user1@user.com",true);
        Employee e2 = new Employee("12345678","123456","User2","UserSurname2","Pathologist",3,"user2@user.com",true);
        //EmployeeDb db1 = new EmployeeDb(e,dbdetail);
        //db1.init();
        EmployeeDb db2 = new EmployeeDb(e2,dbdetail);
        db2.init();
        String s = db2.add();
        //db2.add();
        
        return s;
    }*/
    
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
                /*sess.setAttribute("name", emp.getName());
                sess.setAttribute("surname", emp.getSurname());
                sess.setAttribute("access", emp.getAccess());*/
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
            int incidentnum = incidentdb.countOpenIncidents(datetime[0]) + 1;
            String lognumber = Integer.toString(incidentnum) + datenum;
            return lognumber;
        }
        catch(Exception e){
            return "Error could not generate incident log number. " + e.getMessage();
        }
    }
    //end getIncidentLogNumber
}
//end Tools class
