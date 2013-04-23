/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package testapp;

import java.sql.SQLException;

/**
 *
 * @author Administrator
 */
public class BodyDb extends DatabaseConnector{
    Body body;
    //CONSTRUCTORS
    public BodyDb(DbDetail dbDetail){
        super(dbDetail);
    }
    
    public BodyDb(DbDetail dbDetail, Body inBody){
        super(dbDetail);
        this.body = inBody;
    }
    
    //GET METHODS
    public Body getBody(){
        return this.body;
    }
    //SET METHODS
    public void setBody(Body inBody){
        this.body = inBody;
    }
    
    //DATABASE METHODS
    @Override
    public String add(){
         try 
        {
            statement.executeUpdate("INSERT INTO Body (deathRegisterNumber, gender, race, assignedTo, nameOfDeceased, surnameOfDeceased, placeOfBirth, dateOfBirth, ageOnDateFound, ) VALUES (' "+ organization.getName() + "','"+ organization.getContactNumber() +"','"+ organization.getType() +"')");
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
    
    @Override
    public String read(){
        return null;
        
    }
    
    @Override
    public String edit(){
        return null;
        
    }
    
    @Override
    public String delete(){
        return null;
        
    }
}
