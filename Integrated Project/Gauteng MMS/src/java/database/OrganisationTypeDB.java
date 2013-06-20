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
 * @author Sandile
 */
public class OrganisationTypeDB extends DatabaseConnector{

    private OrganisationType organizationT;

    public OrganisationTypeDB(DbDetail dbDetail) {
        super(dbDetail);
    }

    public OrganisationTypeDB(OrganisationType organization, DbDetail dbDetail) {
        super(dbDetail);
        this.organizationT = organization;
    }
    
    
    
    @Override
    public String add() {
          try 
        {
            statement.executeUpdate("INSERT INTO organizationtype (type) VALUES (' "+ organizationT.getType().trim() +"')");
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
        return "successful"; 
    }

    @Override
    public String read() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public String edit() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
     public String edit(String newType) {
         init();
        String delResult= delete();/*
         try 
        {
           statement.executeUpdate("INSERT INTO organizationtype (type) VALUES (' "+ newType.trim() +"');");
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
        }*/
        return "successful "+delResult; 
         
      }

    @Override
    public String delete() {
       try 
        {
            statement.executeUpdate("DELETE FROM  organizationtype WHERE type = '" + organizationT.getType() +"';");
            statement.close();
            connection.close();
        } 
        catch (SQLException ex) 
        {
            return "fail " + ex.getMessage();
        }
        return "successful";
        
    }   
    
     //Function to read all the organizationTypes from the database and return them in a list for displaying
    public  ArrayList<OrganisationType> organizationTypeList()
    {
        ArrayList<OrganisationType> list = new ArrayList<OrganisationType>();
        try 
        {
            statement.executeQuery("SELECT * FROM organizationtype ;");
            ResultSet resultSet = statement.getResultSet();
            while(resultSet.next())
            {
                OrganisationType orgT = new OrganisationType();
                orgT.setType(resultSet.getString("type"));
                
                list.add(orgT);
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
    
    
}
