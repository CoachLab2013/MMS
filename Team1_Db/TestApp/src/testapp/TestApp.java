/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package testapp;

import java.util.ArrayList;




/**
 *
 * @author Chester
 */
public class TestApp {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) 
    {
        //add user
        /*Employee emp = new Employee("12345678","1234", "john","smith", "manager", 1, "200935415@student.uj.ac.za",true);
        DatabaseConnector empDb = new EmployeeDb(emp,"root","hello", "localhost","/mydb");
        boolean status = empDb.init();
        System.out.println(empDb.add());*/
        
        //user login
       /* EmployeeDb empDb = new EmployeeDb(new Employee("00000000","1234")/*,"Chester","Cobus","ADMIN",1,"cacobus15@gmail.com",true),"root","hello", "localhost","/mydb");
        empDb.init(); */
        
        //System.out.println(empDb.delete());
        //System.out.println(empDb.edit());
        
       /*
        * 
        * System.out.println(empDb.read());
        empDb.init();
        //list of employees
        ArrayList<Employee> list = empDb.employeeList();
        for(int i = 0;i < list.size();i++)
        {
             System.out.println(list.get(i).getPersonnelNumber() + " " +list.get(i).getName());
        }
        * 
        * /
        //Audit Trail
         /*AuditTrail AuditTr = new AuditTrail("2013/04/11", "13:30:22" , "Added" , "Exception type" ,"12345678");
         DatabaseConnector AuditDb = new AuditTrailDb(AuditTr,"root","hello","localhost","/mydb");
         AuditDb.init();
         System.out.println(AuditDb.add());*/
         
        
        //TESTING ORGANIZATION STUFF:
        //connection
        OrganizationDb orgDb = new OrganizationDb("root","password123","localhost","/mydb", new Organization("TestHospital1", "0118677777", "Hospital"));
        orgDb.init();
        
        //adding organization
        System.out.println(orgDb.add());
        
       /* //list of organizations
        ArrayList<Organization> orglist = orgDb.organizationList();
        for(int j = 0; j<orglist.size(); j++){
            System.out.println(orglist.get(j).getName() + " " + orglist.get(j).getContactNumber() + " " + orglist.get(j).getType());
        } */
        
        //edit
        
       /* //deleting organizations
        orgDb.delete(); */
        
        
    }
}
