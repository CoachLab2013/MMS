/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
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
public class deathCallDb extends DatabaseConnector
{
     private DeathCall deathCall;
     
        public deathCallDb(DeathCall deathCall , DbDetail dbDetail)
      {
         super(dbDetail);
         this.deathCall = deathCall;
      
      }
        
         public deathCallDb(DbDetail dbDetail)
      {
         super(dbDetail);
         deathCall = null;
      
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
            statement.executeUpdate("insert into deathcall(timeOfCall,numberCallMade,institution,sceneAddress,province,region,sceneConditions,nameOfCaller)" + " values"
                                    +"('" 
                                    + deathCall.getTimeofCall() + "','" 
                                    + deathCall.getNumberCallMade()+ "','"
                                    + deathCall.getInstitution() +"','"
                                    + deathCall.getSceneAddress() + "','"
                                    + deathCall.getProvince() + "','"
                                    + deathCall.getRegion() + "','"
                                    + deathCall.getSceneCondition()+ "','"
                                    + deathCall.getnameOfCaller()+"')");
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
    
     public  ArrayList<DeathCall> deathCalllList()
      {
         ArrayList<DeathCall> list = new ArrayList<DeathCall>();
         try 
         {
            statement.executeQuery("SELECT * FROM deathcall");
            DeathCall dCall= null;
            try (ResultSet resultSet = statement.getResultSet()) 
            {
               while(resultSet.next())
               {
                  dCall= new DeathCall ();
                  dCall.setTimeofCall(resultSet.getString("timeOfCall"));
                 dCall.setNumberCallMade(resultSet.getString("numberCallMade"));
                  dCall.setInstitution(resultSet.getString("institution"));
                 dCall.setSceneAddress(resultSet.getString("sceneAddress"));
                  dCall.setProvince(resultSet.getString("province"));
		 dCall.setRegion(resultSet.getString("region"));
		 dCall.setSceneCondition(resultSet.getString("sceneConditions"));
                  dCall.setnameOfCaller(resultSet.getString("nameOfCaller"));
                 
                  list.add(dCall);
               }
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
    public String read() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    // code below added by bandile because netbeans is complaining
     @Override
    public String delete(){
        return "never implemented";
    }
    
     @Override
     public String edit(){
         return "never implemented";
     }
    
}
