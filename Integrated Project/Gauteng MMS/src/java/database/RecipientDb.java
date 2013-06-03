/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package database;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import javax.swing.JOptionPane;


/**
 *
 * @author Cya
 */
public class RecipientDb extends DatabaseConnector{
    
    Recipient recipient;
    
     public RecipientDb(Recipient recipient,DbDetail dbDetail) {
        super(dbDetail);
        this.recipient = recipient;
    }
     
      public RecipientDb( DbDetail dbDetail) {
        super(dbDetail);
        recipient = null;
    }
      
      //GETTER AND SETTER METHODS
    public Recipient getRecipient() {
        return recipient;
    }

    public void setRecipient(Recipient recipient) {
        this.recipient = recipient;
    }
    
    //DATABASE METHODS
    @Override
    public String add() {
       
        try 
        {
            statement.executeUpdate("INSERT INTO recipient(name,surname,ID,idType,address,contactNumber,Body_idDeathRegisterNumber) VALUES('" 
                    + recipient.getName() + "','" 
                    + recipient.getSurname()+"','" +recipient.getID() +"','" +recipient.getIdType() + "','"
                    + recipient.getAddress() + "','" + recipient.getContactNumber() + "','" + recipient.getBody_idDeathRegisterNumber() + "');");

            
            statement.close();
            connection.close();
        } catch (SQLException ex) {
            return "failed " + ex.getMessage();
        }
        
        return "successful";
    }
    
     @Override
    public String read() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
     public  ArrayList<Recipient> recipientList() throws SQLException
    {
        ArrayList<Recipient> list = new ArrayList<Recipient>();
        try 
        {
            statement.executeQuery("SELECT * FROM recipient");
            ResultSet resultSet = statement.getResultSet();
            while(resultSet.next())
            {
                list.add(new Recipient(resultSet.getString("name"), resultSet.getString("surname"), resultSet.getString("ID"),resultSet.getString("idType"),resultSet.getString("address"), resultSet.getString("contactNumber"), resultSet.getString("Body_idDeathRegisterNumber")));
            }
            statement.close();
            connection.close();
        } 
        catch (SQLException ex) 
        {
            throw new SQLException(ex.getMessage());
        }
        return list;
    }
     
     @Override
    public String edit() {
        try
        {
            statement.executeUpdate("UPDATE recipient SET "
                    + "name='" + recipient.getName() + "',"
                    + "surname='" + recipient.getSurname() + "',"
                    + "ID='" + recipient.getID() + "',"
                    + "idType='" + recipient.getIdType() + "',"
                    + "address='" + recipient.getAddress() + "',"
                    + "contactNumber='" + recipient.getContactNumber() + "'"
                    +" WHERE Body_idDeathRegisterNumber='"+ recipient.getBody_idDeathRegisterNumber()+ "';");
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
        return "successful"; //To change body of generated methods, choose Tools | Templates.
    }

      @Override
    public String delete() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    
}
