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
    public OrganizationDb(Organization inOrganization, DbDetail dbDetail){
        super(dbDetail);
        
        this.organization = inOrganization;
    }
    @Override
    public String add(){
        try 
        {
            statement.executeUpdate("INSERT INTO Organization VALUES ()");
            statement.executeQuery("SELECT MAX(idOrganization) as latestID FROM Organization" );
            int newID;
            ResultSet resultSet = statement.getResultSet();
            resultSet.next();
            newID = resultSet.getInt("latestID");
            statement.executeUpdate("INSERT INTO " + organization.getType() + " (Organization_idOrganization, name, contactNumber) VALUES ( '" + newID + "', '" + organization.getName() +"', '" + organization.getContactNumber() + "' )");
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
    public String read(){
        try 
        {
            statement.executeQuery("SELECT idOrganization FROM Organization;");
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
        return "added to organization table";
    }
    
    //Function to read all the organizations from the database and return them in a list for displaying
    public  ArrayList<Organization> organizationList()
    {
        ArrayList<Organization> list = new ArrayList<Organization>();
        try 
        {
            statement.executeQuery("SELECT Organization_idOrganization,name,contactNumber FROM Hospital;");
            ResultSet resultSet = statement.getResultSet();
            while(resultSet.next())
            {
                Organization org = new Organization();
                org.setIdOrganization(resultSet.getInt("Organization_idOrganization"));
                org.setName(resultSet.getString("name"));
                org.setContactNumber(resultSet.getString("contactNumber"));
                org.setType("Hospital");
                list.add(org);
            }
            statement.executeQuery("SELECT Organization_idOrganization,name,contactNumber FROM PathologyUnit;");
            resultSet = statement.getResultSet();
            while(resultSet.next())
            {
                    Organization org = new Organization();
                    org.setIdOrganization(resultSet.getInt("Organization_idOrganization"));
                    org.setName(resultSet.getString("name"));
                    org.setContactNumber(resultSet.getString("contactNumber"));
                    org.setType("PathologyUnit");
                    list.add(org);
            }
            statement.executeQuery("SELECT Organization_idOrganization,name,contactNumber FROM SamlpeLab;");
            resultSet = statement.getResultSet();
            while(resultSet.next())
            {
                Organization org = new Organization();
                org.setIdOrganization(resultSet.getInt("Organization_idOrganization"));
                org.setName(resultSet.getString("name"));
                org.setContactNumber(resultSet.getString("contactNumber"));
                org.setType("SampleLab");
                list.add(org);
            }
            statement.executeQuery("SELECT Organization_idOrganization,name,contactNumber FROM PoliceStation;");
            resultSet = statement.getResultSet();
            while(resultSet.next())
            {
                Organization org = new Organization();
                org.setIdOrganization(resultSet.getInt("Organization_idOrganization"));
                org.setName(resultSet.getString("name"));
                org.setContactNumber(resultSet.getString("contactNumber"));
                org.setType("PoliceStation");
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
    
    @Override
    public String edit(){
        return "never implemented";
    }
    public String edit(Organization inOrganization){
        try 
        {
            statement.executeUpdate("UPDATE " + inOrganization.getType() + " SET name='" +inOrganization.getName()+ "', contactNumber='" +inOrganization.getContactNumber() +"';" );
            statement.close();
            connection.close();
        } 
        catch (SQLException ex) 
        {
            return "fail " + ex.getMessage();
        }
        return "Update Successful";
    }
    
    @Override
    public String delete(){
        return "never implemented";
    }
    public String delete(String inType, int inID){
        try 
        {
            int universalID = inID;//organization.getIdOrganization();
            statement.executeUpdate("DELETE FROM " + inType + " WHERE Organization_idOrganization= '" + universalID +"';" );
            statement.executeUpdate("DELETE FROM Organization WHERE idOrganization = '" + universalID +"'");
            statement.close();
            connection.close();
        } 
        catch (SQLException ex) 
        {
            return "fail " + ex.getMessage();
        }
        return "Deleted Item from Organization and " + inType ;
    }
}