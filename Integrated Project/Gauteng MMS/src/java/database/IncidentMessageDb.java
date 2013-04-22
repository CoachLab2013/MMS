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
public class IncidentMessageDb extends DatabaseConnector
{
    private IncidentMessage incidentMessage;
    public IncidentMessageDb(DbDetail dbDetail)
    {
        super(dbDetail);
        incidentMessage = null;
    }
    public IncidentMessageDb(IncidentMessage incidentMessage,DbDetail dbDetail)
    {
        super(dbDetail);
        this.incidentMessage = incidentMessage;
    }

    @Override
    public String add() 
    {
        try 
        {
            statement.executeUpdate("insert into incidentmessage (date,time,mannerOfDeath,nameOfDeceased) values"
                                    +"('" 
                                     + incidentMessage.getDate() + "','"
                                     + incidentMessage.getTime() + "','"
                                     + incidentMessage.getMannerOfDeath() + "','"
                                     + incidentMessage.getNameOfDeceased()+ "')");
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
    public  ArrayList<IncidentMessage> messageList() throws SQLException
    {
        ArrayList<IncidentMessage> msglist = new ArrayList<IncidentMessage>();
        try 
        {
            statement.executeQuery("select date,time,mannerOfDeath,nameOfDeceased,vip,status from incidentmessage;");
            ResultSet resultSet = statement.getResultSet();
            while(resultSet.next())
            {
                msglist.add(new IncidentMessage(resultSet.getString("date"), resultSet.getString("time"), resultSet.getString("mannerOfDeath"), resultSet.getString("nameOfDeceased"), resultSet.getBoolean("vip"), resultSet.getBoolean("status")));
            }
            statement.close();
            connection.close();
        } 
        catch (SQLException ex) 
        {
            throw new SQLException(ex.getMessage());
        }
        return msglist;
    }
    @Override
    public String read() 
    {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    @Override
    public String edit() 
    {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    @Override
    public String delete()
    {
        throw new UnsupportedOperationException("Not supported yet.");
    }
}
