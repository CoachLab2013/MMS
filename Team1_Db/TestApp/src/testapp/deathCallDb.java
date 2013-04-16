/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package testapp;

import java.sql.SQLException;

/**
 * 
 * @author Innovation Hub
 * @JCSE
 */
public class deathCallDb extends DatabaseConnector
{
     private DeathCall deathCall;
     
        public deathCallDb(DeathCall deathCall , String username , String password , String url , String dbName)
      {
         super(username,password,url,dbName);
         this.deathCall = deathCall;
      
      }
        
         public deathCallDb(String username , String password , String url , String dbName)
      {
         super(username,password,url,dbName);
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
