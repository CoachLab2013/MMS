package database;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
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
    public EmployeeDb(Employee employee, DbDetail dbDetail)
    {
        super(dbDetail);
        this.employee = employee;
    }
    /**
     * constructs a employee connector to the database to add a employee remember to set employee before using add function
     * @param username used in the database server
     * @param password used in the database server
     * @param url the location of the database specified by the IP address or domain name
     * @param dbName the database name in the stored on the server
     */
    public EmployeeDb(DbDetail dbDetail)
    {
        super(dbDetail);
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
            statement.executeUpdate("INSERT INTO Employee (password,personnelNumber,name,surname,rank,access,email,active)" + " values"
                                    +"('" 
                                    +employee.getPassword() + "','" 
                                    + employee.getPersonnelNumber() + "','"
                                    + employee.getName() +"','"
                                    + employee.getSurname() + "','"
                                    + employee.getRank() + "',"
                                    + employee.getAccess() + ",'"
                                    + employee.getEmail() + "',"
                                    + employee.isActive()+ ")");
            statement.close();
            connection.close();
        } 
        catch (SQLException ex) 
        {
            return "failed "+ex.getMessage();
        }
        catch (Exception ex)
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
        try 
        {
            statement.executeQuery("SELECT name,surname,rank,email,access from employee where password='" + employee.getPassword() + "' and personnelNumber='" + employee.getPersonnelNumber() + "' and active=1;");
            ResultSet resultSet = statement.getResultSet();
            resultSet.next();
            employee.setName(resultSet.getString("name"));
            employee.setSurname(resultSet.getString("surname"));
            employee.setRank(resultSet.getString("rank"));
            employee.setEmail(resultSet.getString("email"));
            employee.setAccess(resultSet.getInt("access"));
            statement.close();
            connection.close();
        } 
        catch (SQLException ex) 
        {
            return "fail " + ex.getMessage();
        }
        return employee.getAccess() + " " +employee.getName() +" "+employee.getSurname() + " " + employee.getEmail();
    }
    /**
     * 
     * @return ArrayList of employee objects from database
     */
    public  ArrayList<Employee> employeeList() throws SQLException
    {
        ArrayList<Employee> list = new ArrayList<Employee>();
        try 
        {
            statement.executeQuery("SELECT personnelNumber,name,surname,rank,email,active,access from employee;");
            Employee emp = null;
            ResultSet resultSet = statement.getResultSet();
            while(resultSet.next())
            {
                emp = new Employee();
                emp.setPersonnelNumber(resultSet.getString("personnelNumber"));
                emp.setName(resultSet.getString("name"));
                emp.setSurname(resultSet.getString("surname"));
                emp.setRank(resultSet.getString("rank"));
                emp.setEmail(resultSet.getString("email"));
                emp.setActive(resultSet.getBoolean("active"));
                emp.setAccess(resultSet.getInt("active"));
                list.add(emp);
            }
            statement.close();
            connection.close();
        } 
        catch (SQLException ex) 
        {
           throw new SQLException(ex.getMessage()+" "+list.size() );
        }
        return list;
    }
    @Override
    public String edit() 
    {
        try 
        {
            statement.executeUpdate("UPDATE employee SET name='"+employee.getName()
            + "' ,surname='" +employee.getSurname() 
            + "' ,rank='"+employee.getRank()
            + "' ,email='"+employee.getEmail() 
            + "' ,access='"+ employee.getAccess()
            + "' ,active="+ employee.isActive() 
            +" where personnelNumber='"+employee.getPersonnelNumber() +"';" );
            statement.close();
            connection.close();
        } 
        catch (SQLException ex) 
        {
            return "fail " + ex.getMessage();
        }
        return "successful";
    }

    @Override
    public String delete() 
    {
        try 
        {
            statement.executeUpdate("update employee set active="+employee.isActive()
            +" where personnelNumber='"
            + employee.getPersonnelNumber() +"';" );
            statement.close();
            connection.close();
        } 
        catch (SQLException ex) 
        {
            return "fail " + ex.getMessage();
        }
        return "successful";
    }
    
}
