/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package testapp;

import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Chester
 */
public class ReferenceListDb extends DatabaseConnector
{
    private String data;
    private String tableName, field1, field2;
    public ReferenceListDb(String username,String password,String url,String dbName)
    {
        super(username,password,url,dbName);
        data = "";
    }
    public ReferenceListDb(String data,String username,String password,String url,String dbName)
    {
        super(username,password,url,dbName);
        this.data = data;
    }
    //tableName, field1, field2
    public String getTableName()
    {
        return tableName;
    }
    public String getField1()
    {
        return field1;
    }
    /**
     * 
     * @return data from list
     */
    public String getData()
    {
        return data;
    }
    /**
     * 
     * @param data 
     */
    public void setData(String data)
    {
        this.data = data;
    }
    /**
     * 
     * @return 
     */
    @Override
    public String add() 
    {
        try 
        {
            statement.executeUpdate("insert into "+tableName +" ("+ field2+") values"
                                    +"('" 
                                    + data + "')");
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
     * @return 
     */
    @Override
    public String read()
    {
        throw new UnsupportedOperationException("Not supported yet.");
    }
    /**
     * 
     * @return 
     */
    @Override
    public String edit() 
    {
        throw new UnsupportedOperationException("Not supported yet.");
    }
    /**
     * 
     * @return 
     */
    @Override
    public String delete()
    {
        try 
        {
            statement.executeQuery("select [num] as count(*) from " +tableName +";");
            ResultSet resultSet = statement.getResultSet();
            resultSet.next();
            int count = resultSet.getInt("num") ;
            statement.executeUpdate("delete from " +tableName +" where " + field1 + "="+count+";" );
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
