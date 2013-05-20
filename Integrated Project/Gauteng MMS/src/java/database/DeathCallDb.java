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
 * @author Innovation Hub
 * @JCSE
 */
public class DeathCallDb extends DatabaseConnector
{
     private DeathCall deathCall;
     private DbDetail dbDetail;
     
        public DeathCallDb(DeathCall deathCall , DbDetail dbDetail)
      {
         super(dbDetail);
         this.deathCall = deathCall;
         this.dbDetail = dbDetail;
      
      }
        
         public DeathCallDb(DbDetail dbDetail)
      {
         super(dbDetail);
         deathCall = null;
         this.dbDetail = dbDetail;
      
      }

      
      public void  deathCallDb(DeathCall deathCall)
      {
         this.deathCall = deathCall;
      }
         
      /**
       * 
       * @return 
       */
    @Override
    public String add() {
        //throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
         try  
        { 
            statement.executeUpdate("INSERT INTO Deathcall(Incident_incidentLogNumber, dateOfCall, timeOfCall, numberOfCaller, institution, sceneAddress, province, region, sceneConditions, nameOfCaller)" + " VALUES"
                                    +" ('" 
                                    + getDeathCall().getIncident().getIncidentLogNumber() + "','" 
                                    + getDeathCall().getDateOfCall() + "','" 
                                    + getDeathCall().getTimeOfCall() + "','" 
                                    + getDeathCall().getNumberOfCaller()+ "','"
                                    + getDeathCall().getInstitution() +"','"
                                    + getDeathCall().getSceneAddress() + "','"
                                    + getDeathCall().getProvince() + "','"
                                    + getDeathCall().getRegion() + "','"
                                    + getDeathCall().getSceneConditions()+ "','"
                                    + getDeathCall().getNameOfCaller()+"')");
            statement.close();
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
    /**
     * 
     * @return   
     */
	  /**
	  the class below will load all the death call details an arraylist 
	  */
    
     public  ArrayList<DeathCall> deathCallList()
      {
         ArrayList<DeathCall> list = new ArrayList<DeathCall>();
         try 
         {
            statement.executeQuery("SELECT * FROM deathcall");
            ResultSet resultSet = statement.getResultSet();
               while(resultSet.next())
               {
                  DeathCall dCall= new DeathCall();
                  dCall.setTimeOfCall(resultSet.getString("timeOfCall"));
                  dCall.setDateOfCall(resultSet.getString("dateOfCall"));
                  dCall.setNumberOfCaller(resultSet.getString("numberOfCaller"));
                  dCall.setInstitution(resultSet.getString("institution"));
                  dCall.setSceneAddress(resultSet.getString("sceneAddress"));
                  dCall.setProvince(resultSet.getString("province"));
		  dCall.setRegion(resultSet.getString("region"));
		  dCall.setSceneConditions(resultSet.getString("sceneConditions"));
                  dCall.setNameOfCaller(resultSet.getString("nameOfCaller"));
                  IncidentDb incidentDb = new IncidentDb(getDeathCall().getIncident(), dbDetail);
                  incidentDb.init();
                  incidentDb.read();
                  dCall.setIncident(incidentDb.getIncident());
                  list.add(dCall);
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
    public String read() 
    {
        try
        {
            statement.executeQuery("SELECT * FROM deathcall WHERE Incident_incidentLogNumber='" + getDeathCall().getIncident().getIncidentLogNumber() + "';" );
            ResultSet resultSet = statement.getResultSet();
            resultSet.next();
            DeathCall dCall= new DeathCall();
            dCall.setTimeOfCall(resultSet.getString("timeOfCall"));
            dCall.setDateOfCall(resultSet.getString("dateOfCall"));
            dCall.setNumberOfCaller(resultSet.getString("numberOfCaller"));
            dCall.setInstitution(resultSet.getString("institution"));
            dCall.setSceneAddress(resultSet.getString("sceneAddress"));
            dCall.setProvince(resultSet.getString("province"));
            dCall.setRegion(resultSet.getString("region"));
            dCall.setSceneConditions(resultSet.getString("sceneConditions"));
            dCall.setNameOfCaller(resultSet.getString("nameOfCaller"));
            IncidentDb incidentDb = new IncidentDb(getDeathCall().getIncident(), dbDetail);
            incidentDb.init();
            incidentDb.read();
            dCall.setIncident(incidentDb.getIncident()); //To change body of generated methods, choose Tools | Templates.
            deathCall = dCall;
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
    
    // code below added by bandile because netbeans is complaining
     @Override
    public String delete()
    {
        return "never implemented";
    }
    
     @Override
     public String edit()
     {
        try 
        {
            statement.executeUpdate("UPDATE DeathCall SET timeOfCall='" + getDeathCall().getTimeOfCall() + "', dateOfCall='" + getDeathCall().getDateOfCall() +"', numberOfCaller='"+ getDeathCall().getNumberOfCaller() +"', institution='"+ getDeathCall().getInstitution() +"', sceneAddress='"+ getDeathCall().getSceneAddress() +"', province='"+ getDeathCall().getProvince() +"', region='"+ getDeathCall().getRegion() +"', sceneConditions='"+ getDeathCall().getSceneConditions() +"', nameOfCaller='"+ getDeathCall().getNameOfCaller() +"' WHERE Incident_incidentLogNumber = '"+ getDeathCall().getIncident().getIncidentLogNumber() +"';" );
            statement.close();
            connection.close();
        } 
        catch (SQLException ex) 
        {
            return "fail " + ex.getMessage();
        }
        return "successful";
     }

    /**
     * @return the deathCall
     */
    public DeathCall getDeathCall() {
        return deathCall;
    }
    
}
