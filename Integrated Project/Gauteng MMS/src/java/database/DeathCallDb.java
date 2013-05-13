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

         public DeathCall getAuditTrail()
      {
         return deathCall;
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
                                    + deathCall.getIncident().getIncidentLogNumber() + "','" 
                                    + deathCall.getDateOfCall() + "','" 
                                    + deathCall.getTimeOfCall() + "','" 
                                    + deathCall.getNumberOfCaller()+ "','"
                                    + deathCall.getInstitution() +"','"
                                    + deathCall.getSceneAddress() + "','"
                                    + deathCall.getProvince() + "','"
                                    + deathCall.getRegion() + "','"
                                    + deathCall.getSceneConditions()+ "','"
                                    + deathCall.getNameOfCaller()+"')");
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
                  IncidentDb incidentDb = new IncidentDb(deathCall.getIncident(), dbDetail);
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
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
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
            statement.executeUpdate("UPDATE DeathCall SET timeOfCall='" + deathCall.getTimeOfCall() + "', dateOfCall='" + deathCall.getDateOfCall() +"', numberOfCaller='"+ deathCall.getNumberOfCaller() +"', institution='"+ deathCall.getInstitution() +"', sceneAddress='"+ deathCall.getSceneAddress() +"', province='"+ deathCall.getProvince() +"', region='"+ deathCall.getRegion() +"', sceneConditions='"+ deathCall.getSceneConditions() +"', nameOfCaller='"+ deathCall.getNameOfCaller() +"' WHERE Incident_incidentLogNumber = '"+ deathCall.getIncident().getIncidentLogNumber() +"';" );
            statement.close();
            connection.close();
        } 
        catch (SQLException ex) 
        {
            return "fail " + ex.getMessage();
        }
        return "Update Successful";
     }
    
}
