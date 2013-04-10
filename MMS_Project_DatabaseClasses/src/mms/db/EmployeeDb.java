
import java.sql.SQLException;
/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Team 1 CoachLab 2013 Mortuary Manage Managemet System (Chester)
 */
public class EmployeeDb extends DatabaseConnector
{
    private Employee employee;
    /**
     * constructs a employee connector to the database 
     * @param employee object containing the employee details
     * @param username used in the database server
     * @param password used in the database server
     * @param url the location of the database specified by the IP address or domain name
     * @param dbName the database name in the stored on the server
     */
    public EmployeeDb(Employee employee,String username,String password,String url,String dbName)
    {
        super(username, password, url, dbName);
        this.employee = employee;
    }
    /**
     * constructs a employee connector to the database to add a employee remember to set employee before using add function
     * @param username used in the database server
     * @param password used in the database server
     * @param url the location of the database specified by the IP address or domain name
     * @param dbName the database name in the stored on the server
     */
    public EmployeeDb(String username,String password,String url,String dbName)
    {
        super(username, password, url, dbName);
        employee = null;
    }
    /**
     * 
     * @return employee object
     */
    public Employee getEmployee()
    {
        return employee;
    }
    /**
     * 
     * @param employee sets a object
     */
    public void setEmployee(Employee employee)
    {
        this.employee = employee;
    }
    /**
     * 
     * @return String whether adding was "successful" or "failed"
     */
    @Override
    public String add()
    {
        try 
        {
            statement.executeUpdate("insert into employee (password,personnelNumber,name,surname,rank,role)" + " values"
                                    +"('" 
                                    +employee.getPassword() + "','" 
                                    + employee.getPersonnelNumber() + "','"
                                    + employee.getName() +"','"
                                    + employee.getSurname() + "','"
                                    + employee.getRank() + "','"
                                    + employee.getRole() + "')");
            statement.executeQuery("update accesscontrol set access=" + employee.getAccess() + " where role='" + employee.getRole() + "';");
            statement.close();
            connection.close();
        } 
        catch (SQLException ex) 
        {
            return "failed "+ex.getMessage();
        }
        return "successful";
    }
    /**
     * 
     * @return String returns the name, surname and rank of the user
     */
    @Override
    public String read()
    {
        throw new UnsupportedOperationException("Not supported yet.");
    }
    
}
