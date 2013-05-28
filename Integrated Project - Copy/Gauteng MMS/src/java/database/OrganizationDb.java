/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package database;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author Administrator
 */
public class OrganizationDb extends DatabaseConnector{
    private Organization organization;
    //CONSTUCTORS
    public OrganizationDb(DbDetail dbDetail){
        super(dbDetail);
        
        this.organization = new Organization();
    }
    
    public OrganizationDb(Organization inOrganization, DbDetail dbDetail){
        super(dbDetail);
        
        this.organization = inOrganization;
    }
    
    //DATABASE METHODS
    
    //function to add an organization to the appropiate tables
    @Override
    public String add(){
        try 
        {
            statement.executeUpdate("INSERT INTO Organization (name, contactNumber, OrganizationType_type) VALUES (' "+ organization.getName() + "','"+ organization.getContactNumber() +"','"+ organization.getType() +"')");
            statement.close();
            connection.close(); 
        } 
        catch (SQLException ex) 
        {
            return "failed " + ex.getMessage();
        }
        catch (Exception ex)
        {
            return "error" + ex.getMessage();
        }
        return "added organization to organization table"; 
    }
    
    // Function to read a single Organization FROM the Datebase
    @Override
    public String read(){// need to pass primary key
        try 
        {
            statement.executeQuery("SELECT * FROM Organization;");
            ResultSet resultSet = statement.getResultSet();
            resultSet.next();
            organization.setIdOrganization(Integer.parseInt(resultSet.getString("idOrganization")));
            statement.close();
            connection.close();
        } 
        catch (SQLException ex) 
        {
            return "fail " + ex.getMessage();
        }
        return "read from organization table successful";
    }
    
    //Function to read all the organizations from the database and return them in a list for displaying
    public  ArrayList<Organization> organizationList()
    {
        ArrayList<Organization> list = new ArrayList<Organization>();
        try 
        {
            statement.executeQuery("SELECT * FROM Organization;");
            ResultSet resultSet = statement.getResultSet();
            while(resultSet.next())
            {
                Organization org = new Organization();
                org.setIdOrganization(resultSet.getInt("idOrganization"));
                org.setName(resultSet.getString("name"));
                org.setContactNumber(resultSet.getString("contactNumber"));
                org.setType(resultSet.getString("OrganizationType_type"));
                list.add(org);
            }
            statement.close();
            connection.close();
        } 
        catch (SQLException ex) 
        {
            System.out.println("fail " + ex.getMessage());
        }
        return list;
    }
    
    //function(s) to edit the details of a specific organization
    @Override
    public String edit(){//Has to pass primary key un less we assume they cannot change the primary key
         try 
        {
            statement.executeUpdate("UPDATE Organization SET name='" + organization.getName()+ "', contactNumber='" + organization.getContactNumber() +"', OrganizationType_type='"+ organization.getType() +"' WHERE idOrganization = '"+ organization.getIdOrganization() +"';" );
            statement.close();
            connection.close();
        } 
        catch (SQLException ex) 
        {
            return "fail " + ex.getMessage();
        }
        return "Update Successful";
    }
    
    //function(s) to delete an organization from the appropriate tables
    @Override
    public String delete(){
        try 
        {
            statement.executeUpdate("DELETE FROM Organization WHERE idOrganization = '" + organization.getIdOrganization() +"'");
            statement.close();
            connection.close();
        } 
        catch (SQLException ex) 
        {
            return "fail " + ex.getMessage();
        }
        return "Deleted Item from Organization";
    }
}
