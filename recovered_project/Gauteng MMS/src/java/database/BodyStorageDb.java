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
 * @author Chester
 */
public class BodyStorageDb extends DatabaseConnector
{
    private BodyStorage bodyStorage;
    public BodyStorageDb(DbDetail dbDetail)
    {
        super(dbDetail);
    }
    public BodyStorageDb(DbDetail dbDetail,BodyStorage bodyStorage)
    {
        super(dbDetail);
        this.bodyStorage = bodyStorage;
    }
    @Override
    public String add() 
    {
        try
        {
            statement.executeUpdate("INSERT INTO bodystorage (numberOfBins,nameOfMortuary) VALUES (" + bodyStorage.getNumberOfBins() + ",'" + bodyStorage.getNameOfMortuary() +"');");
            statement.close();
            connection.close();
        }
        catch(SQLException ex)
        {
            return "falied " + ex.getMessage();
        }
        catch (Exception ex)
        {
            return "falied " + ex.getMessage();
        }
        return "successful";  
    }
    public ArrayList<BodyStorage> getBodyStorage() throws SQLException,Exception
    {
        statement.executeQuery("SELECT * FROM bodystorage WHERE nameOfMortuary='" + bodyStorage.getNameOfMortuary() + "';");
        ResultSet rSet = statement.getResultSet();
        ArrayList<BodyStorage> list = new ArrayList();
        while(rSet.next())
        {
            bodyStorage = new BodyStorage();
            bodyStorage.setNumberOfBins(rSet.getInt("numberOfBins"));
            bodyStorage.setNameOfMortuary(rSet.getString("nameOfMortuary"));
            list.add(bodyStorage);
        }
        statement.close();
        connection.close();
        return list;
    }
    @Override
    public String read() 
    {
        try
        {
            statement.executeQuery("SELECT * FROM bodystorage WHERE nameOfMortuary='" + bodyStorage.getNameOfMortuary() + "';");
            ResultSet rSet = statement.getResultSet();
            rSet.next();
            bodyStorage = new BodyStorage();
            bodyStorage.setNumberOfBins(rSet.getInt("numberOfBins"));
            bodyStorage.setNameOfMortuary(rSet.getString("nameOfMortuary"));
            statement.close();
            connection.close();
        }
        catch(SQLException ex)
        {
            return "falied " + ex.getMessage();
        }
        catch (Exception ex)
        {
            return "falied " + ex.getMessage();
        }
        return "successful";  
    }

    @Override
    public String edit()
    {
        try
        {
            statement.executeUpdate("UPDATE bodystorage SET numberOfBins= " + bodyStorage.getNumberOfBins() + ", nameOfMortuary='" + bodyStorage.getNameOfMortuary() + "' WHERE nameOfMortuary='" + bodyStorage.getNameOfMortuary() +"';");
            statement.close();
            connection.close();
        }
        catch(SQLException ex)
        {
            return "falied " + ex.getMessage();
        }
        catch (Exception ex)
        {
            return "falied " + ex.getMessage();
        }
        return "successful";  
    }

    @Override
    public String delete()
    {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
