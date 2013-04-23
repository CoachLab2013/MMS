/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 * 
 * /**
 * incidentLogNumber , referenceNumber , numberOfBodies , dateOfIncident , timeOfIncident , circumstanceOfDeath ,
specialCircumstances , DeathCall_idDeathCall , VehicleDispatch_idVehicleDispatch , IncidentMessage_idIncidentMessage , status , reason , bodyCount

 */
package database;
//happness
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
         
    //DATABSE METHODS
    public int countOpenIncidents(String inDate) throws SQLException{
        int count = 0;
        try 
        {
            statement.executeQuery("SELECT COUNT(*) as countOpenIncidents FROM Incident WHERE status=true AND dateOfIncident = '" + inDate + "';");
            ResultSet resultSet = statement.getResultSet();
            resultSet.next();
            count = resultSet.getInt("countOpenIncidents");
            statement.close();
            connection.close();
        } 
        catch (SQLException ex) 
        {
            throw new SQLException(ex.getMessage());
        }
             return count;
    }
    
    public void closeIncident(String inIncidentLogNumber) throws SQLException{
        try 
        {                                                                                                                                                                                                                                                                                                                                                                                         
            statement.executeUpdate("UPDATE incident SET status = false WHERE incidentLogNumber = '"+ inIncidentLogNumber +"';" );
            statement.close();
            connection.close();
        } 
        catch (SQLException ex) 
        {
            throw new SQLException(ex.getMessage());
        }
    }

    @Override
    public String add() 
    {
       // throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
        
          try  
        {  //
            statement.executeUpdate("INSERT INTO Incident (incidentLogNumber,referenceNumber,numberOfBodies,dateOfIncident,timeOfIncident,circumstanceOfDeath,specialCircumstances,status,reason,bodyCount,placeBodyFound)" + " VALUES"
                                    +" ('" 
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
            statement.executeQuery("SELECT * FROM incident;");
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
    
    public  ArrayList<Incident> openIncidentList() throws SQLException
    {
        ArrayList<Incident> incidentList = new ArrayList<Incident>();
        try 
        {
            statement.executeQuery("SELECT * FROM incident WHERE status = 1;");
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
    public String edit()//WILL NEED TO PASS PRIMARY KEY FOR WHERE CLAUSE unless we assume we cannot edit primary
    {
        try 
        {                                                                                                                                                                                                                                                                                                                                                                                         
            statement.executeUpdate("UPDATE Incident SET referenceNumber='"+incident.getReferenceNumber() +"',numberOfBodies=" +incident.getNumberOfBodies()+",dateOfIncident='" +incident.getDateOfIncident()+"',timeOfIncident='"+incident.getTimeOfIncident() +"',circumstanceOfDeath='" + incident.getCircumstanceOfDeath()+"',specialCircumstances='" +incident.getSpecialCircumstances()+"',reason='" + incident.getReason() + "',bodyCount="+incident.getBodyCount()+",placeBodyFound='"+incident.getPlaceBodyFound()+"', status="+ incident.isOpen() +" WHERE incidentLogNumber= '" + incident.getIncidentLogNumber() + "';" );
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
