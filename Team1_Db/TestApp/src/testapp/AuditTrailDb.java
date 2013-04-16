   
  /**
   * this is the class that will connect to the database and do the adding to the database
   */
 package testapp;
import java.sql.*;
   class AuditTrailDb extends DatabaseConnector
   {
   
      private AuditTrail auditTrail;
       
   
      public AuditTrailDb(AuditTrail auditTrail , String username , String password , String url , String dbName)
      {
         super(username,password,url,dbName);
         this.auditTrail = auditTrail;
      
      }
      
      public AuditTrailDb(String username , String password , String url , String dbName)
      {
         super(username,password,url,dbName);
         auditTrail = null;
      
      }
      
      public AuditTrail getAuditTrail()
      {
         return auditTrail;
      }
      
      public void  setAuditTrail(AuditTrail auditTrail)
      {
         this.auditTrail = auditTrail;
      }
     /**
      * 
      * @this method add will add the data for the audit trail to the database
      */
      
      @Override
      public  String add()
      {
      
         try   
         { 
            statement.executeUpdate("insert into audittrail (date,time,eventType,eventMessge,currentUser)" + " values"
                                    +"('" 
                                    +auditTrail.getDate() + "','" 
                                    + auditTrail.getTime() + "','"
                                    + auditTrail.getEventType() +"','"
                                    + auditTrail.getEventMessage() + "','"
                                    + auditTrail.getCurrentUser() + "')");
            statement.close();
            connection.close();
         } 
            catch (SQLException ex) 
            {
               return "failed "+ex.getMessage();
            }
         return "successful";
      
      
          }
      /**
       * 
       * @the method to read the items from the audit trail is not implemented 
       */
      
      @Override
      public  String read()
      {
         return "Not yet implemented";
      }

    @Override
    public String edit() {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    @Override
    public String delete() {
        throw new UnsupportedOperationException("Not supported yet.");
    }
   }