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
 * @author 
 */
public class IncidentMessageDb extends DatabaseConnector
{
    private IncidentMessage incidentMessage;
    private DbDetail dbDetail;
    public IncidentMessageDb(DbDetail inDbDetail)
    {
        super(inDbDetail);
        this.dbDetail = inDbDetail;
        incidentMessage = null;
    }
    public IncidentMessageDb(IncidentMessage incidentMessage,DbDetail inDbDetail)
    {
        super(inDbDetail);
        this.dbDetail = inDbDetail;
        this.incidentMessage = incidentMessage;
    }

    @Override
    public String add() 
    {
        try 
        {
            statement.executeUpdate("insert into incidentmessage (date, time, mannerOfDeath, nameOfDeceased, Incident_incidentLogNumber) values"
                                    +"('" 
                                     + incidentMessage.getDate() + "','"
                                     + incidentMessage.getTime() + "','"
                                     + incidentMessage.getMannerOfDeath() + "','"
                                     + incidentMessage.getNameOfDeceased()+ "','"
                                    + incidentMessage.getIncident().getIncidentLogNumber() + "')");
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
                IncidentDb incidentDb = new IncidentDb(new Incident(resultSet.getString("Incident_incidentLogNumber")),dbDetail);
                incidentDb.read();
                //Incident incident = incidentDb.findIncident(resultSet.getString("Incident_incidentLogNumber"));
                msglist.add(new IncidentMessage(resultSet.getString("date"), resultSet.getString("time"), resultSet.getString("mannerOfDeath"), resultSet.getString("nameOfDeceased"), resultSet.getBoolean("vip"), resultSet.getBoolean("status"), incidentDb.getIncident()));
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
