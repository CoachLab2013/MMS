/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import database.*;

/**
 *
 * @author Administrator
 */
public class Tools {
    //we can use verifier throughout this class
    private Verification verifier;
     private DbDetail db;
    
    /**
     * constructor for an instance of Tools
     */
    public Tools(){
        verifier = new Verification();
        db = new DbDetail("localhost","/mydb","asheen","password");
    }
    
    //end constructor
    
    /**
     * Try to log in a user, if the login is successful then return true, otherwise return false
     * @param personnelnumber the personnel number of the user
     * @param password the user's password
     */
    public int logIn(String personnelnumber, String password){
        //if we have valid inputs then check the database
        if(verifier.checkFormatOfPersonnelNumber(personnelnumber) && !verifier.checkLength(password,0)){
            //now check the database for this user
           
            Employee emp = new Employee(personnelnumber, password);
            EmployeeDb empdb = new EmployeeDb(emp,db);
            empdb.init();
            String status = empdb.read();
            if(status.contains("fail")){
                  this.makeAuditTrail("Warning", "Unsuccessfull log in", personnelnumber);
                  return -1;
             }
            else{
                this.makeAuditTrail("Log In", "Successfull log in", personnelnumber);
                int access = Integer.parseInt(status.substring(0, 1));
                return access; 
            }
        }
        else{
            this.makeAuditTrail("Warning", "Unsuccessfull log in", personnelnumber);
            return -1;
        } 
        
    }
    //end logIn
    
    /**
     * Create an audit trail entry. Given the following parameters
     * @param eventtype the type of event that occurred eg. login failed
     * @param eventmessage the message that needs to be stored
     * @param user the user that caused this event
     **/
    public void makeAuditTrail(String eventtype, String eventmessage, String user){
        String timestamp = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(Calendar.getInstance().getTime());
        String[] datetime = timestamp.split(" ");
        AuditTrail adt = new AuditTrail(datetime[0],datetime[1],eventtype,eventmessage,user);
        AuditTrailDb adb = new AuditTrailDb(adt,db);
        adb.init();
        adb.add(); 
    }
    //end makeAuditTrail
}
//end Tools class
