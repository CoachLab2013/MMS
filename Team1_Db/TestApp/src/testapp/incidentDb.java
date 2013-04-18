/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 * 
 * /**
 * incidentLogNumber , referenceNumber , numberOfBodies , dateOfIncident , timeOfIncident , circumstanceOfDeath ,
specialCircumstances , DeathCall_idDeathCall , VehicleDispatch_idVehicleDispatch , IncidentMessage_idIncidentMessage , status , reason , bodyCount

 */
package incident;

import java.sql.SQLException;

/**
 *
 * @author Innovation Hub
 * @JCSE
 */
public class incidentDb extends DatabaseConnector 
{
    private Incident inciden;
     
        public incidentDb(Incident inciden , String username , String password , String url , String dbName)
      {
         super(username,password,url,dbName);
         this.inciden = inciden;
      
      }
        
         public incidentDb(String username , String password , String url , String dbName)
      {
         super(username,password,url,dbName);
         inciden = null;
      
      }
    

    @Override
    public String add() {
       // throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
        
          try  
        {  //
            statement.executeUpdate("insert into incident (incidentLogNumber , referenceNumber , numberOfBodies , dateOfIncident , timeOfIncident , circumstanceOfDeath ,specialCircumstances , DeathCall_idDeathCall , VehicleDispatch_idVehicleDispatch , IncidentMessage_idIncidentMessage , status , reason , bodyCount)" + " values"
                                    +"('" 
                                    + inciden.getIncidentLogNumber() + "','" 
                                    + inciden.getReferenceNumber()+ "','"
                                    + inciden.getNumberOfBodies() +"','"
                                    + inciden.getDateOfIncident()+ "','"
                                    + inciden.getTimeOfIncident()+ "','"
                                    + inciden.getCircumstanceOfDeath() + "','"
                                    + inciden.getSpecialCircumstances()+ "','"
                                    + 5+"','"
                                    + 6+ "','"  
                                    + 7+ "','"
                                    + 1+ "','"
                                    + "Reason"+ "','"
                                    + 7+ "')");
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

    @Override
    public String read() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
