/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 * 
 * /**
 * incidentLogNumber , referenceNumber , numberOfBodies , dateOfIncident , timeOfIncident , circumstanceOfDeath ,
specialCircumstances , DeathCall_idDeathCall , VehicleDispatch_idVehicleDispatch , IncidentMessage_idIncidentMessage , status , reason , bodyCount

 */
package testapp;

import java.sql.SQLException;

/**
 *
 * @author Innovation Hub
 * @JCSE
 */
public class IncidentDb extends DatabaseConnector 
{
    private Incident inciden;
     
        public IncidentDb(Incident inciden , DbDetail dbDetail)
      {
         super(dbDetail);
         this.inciden = inciden;
      
      }
        
         public IncidentDb(DbDetail dbDetail)
      {
         super(dbDetail);
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
    
    @Override
    public String edit(){
        return "";
    }
    
    @Override
    public String delete(){
        return "";
    }
    
}
