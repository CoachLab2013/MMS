/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 * 
 * /**
 * incidentLogNumber , referenceNumber , numberOfBodies , dateOfIncident , timeOfIncident , circumstanceOfDeath ,
specialCircumstances , DeathCall_idDeathCall , VehicleDispatch_idVehicleDispatch , IncidentMessage_idIncidentMessage , status , reason , bodyCount

 */
package testapp;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author Innovation Hub
 * @JCSE
 */
public class IncidentDb extends DatabaseConnector 
{
    private Incident incident;
     
        public IncidentDb(Incident incident, DbDetail dbDetail)
      {
         super(dbDetail);
         this.incident = incident;
      
      }
        
         public IncidentDb(DbDetail dbDetail)
      {
         super(dbDetail);
         incident = null;
      
      }
    
         //GET METHODS
         public Incident getIncident(){
             return this.incident;
         }
         
         //SET METHODS
         public void setIncident(Incident inIncident){
             this.incident = inIncident;
         }

    @Override
    public String add() 
    {
       // throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
        
          try  
        {  //
            statement.executeUpdate("insert into incident (incidentLogNumber,referenceNumber,numberOfBodies,dateOfIncident,timeOfIncident,circumstanceOfDeath,specialCircumstances,status,reason,bodyCount,placeBodyFound)" + " values"
                                    +"('" 
                                    + incident.getIncidentLogNumber() + "','" 
                                    + incident.getReferenceNumber()+ "','"
                                    + incident.getNumberOfBodies() +"','"
                                    + incident.getDateOfIncident()+ "','"
                                    + incident.getTimeOfIncident()+ "','"
                                    + incident.getCircumstanceOfDeath() + "','"
                                    + incident.getSpecialCircumstances()+ "',"
                                    + incident.isOpen() + ",'"
                                    + incident.getReason()+ "',"
                                    + incident.getBodyCount() + ",'"
                                    + incident.getPlaceBodyFound() + "'"
                                    + ")");
            statement.close(); //status , reason , bodyCountb 
            connection.close(); //deathCall
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
    public  ArrayList<Incident> incidentList() throws SQLException
    {
        ArrayList<Incident> incidentList = new ArrayList<Incident>();
        try 
        {
            statement.executeQuery("select incidentLogNumber,referenceNumber,numberOfBodies,dateOfIncident,timeOfIncident,circumstanceOfDeath,specialCircumstances,status,reason,bodyCount,placeBodyFound from incident;");
            ResultSet resultSet = statement.getResultSet();
            while(resultSet.next())
            {
                incidentList.add(new Incident(resultSet.getString("incidentLogNumber"),resultSet.getString("referenceNumber"),resultSet.getInt("numberOfBodies"),resultSet.getString("dateOfIncident"),resultSet.getString("timeOfIncident"),resultSet.getString("circumstanceOfDeath"),resultSet.getString("placeBodyFound"),resultSet.getString("specialCircumstances"),resultSet.getString("reason"),resultSet.getInt("bodyCount"),resultSet.getBoolean("status")));
            }
            statement.close();
            connection.close();
        } 
        catch (SQLException ex) 
        {
            throw new SQLException(ex.getMessage());
        }
        return incidentList;
    }
    @Override
    public String read() 
    {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    public Incident findIncident(String inIncidentLogNumber) throws SQLException{
        Incident found;
        try 
        {
            statement.executeQuery("SELECT * FROM incident WERE incidentLogNumber ='"+ inIncidentLogNumber +"';");
            ResultSet resultSet = statement.getResultSet();
            resultSet.next();
            found = new Incident(resultSet.getString("incidentLogNumber"),resultSet.getString("referenceNumber"),resultSet.getInt("numberOfBodies"),resultSet.getString("dateOfIncident"),resultSet.getString("timeOfIncident"),resultSet.getString("circumstanceOfDeath"),resultSet.getString("placeBodyFound"),resultSet.getString("specialCircumstances"),resultSet.getString("reason"),resultSet.getInt("bodyCount"),resultSet.getBoolean("status"));
            statement.close();
            connection.close();
        } 
        catch (SQLException ex) 
        {
            throw new SQLException(ex.getMessage());
        }
        return found;
    }
    //incidentLogNumber,referenceNumber,numberOfBodies,dateOfIncident,timeOfIncident,circumstanceOfDeath,specialCircumstances,status,reason,bodyCount,placeBodyFound
    @Override
    public String edit()//WILL NEED TO PASS PRIMARY KEY FOR WHERE CLAUSE
    {
        try 
        {                                                                                                                                                                                                                                                                                                                                                                                         
            statement.executeUpdate("update incident set incidentLogNumber='" + incident.getIncidentLogNumber() + "',referenceNumber='"+incident.getReferenceNumber() +"',numberOfBodies=" +incident.getNumberOfBodies()+",dateOfIncident='" +incident.getDateOfIncident()+"',timeOfIncident='"+incident.getTimeOfIncident() +"',circumstanceOfDeath='" + incident.getCircumstanceOfDeath()+"',specialCircumstances='" +incident.getSpecialCircumstances()+"',reason='" + incident.getReason() + "',bodyCount="+incident.getBodyCount()+",placeBodyFound='"+incident.getPlaceBodyFound()+"' where status=0;" );
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
        return "SHOULD NOT BE ABLE TO DELETE AN INCIDENT UNLESS YOU HAVE HIGH ACCESS";
    }
    
}
