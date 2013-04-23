   
  /**
   * this is the class that will connect to the database and do the adding to the database
   */
   package testapp;
   import java.sql.*;
import java.util.ArrayList;
   class AuditTrailDb extends DatabaseConnector
   {
   
      private AuditTrail auditTrail;
       
   
      public AuditTrailDb(AuditTrail auditTrail, DbDetail dbDetail)
      {
         super(dbDetail);
         this.auditTrail = auditTrail;
      
      }
      
      public AuditTrailDb(DbDetail dbDetail)
      {
         super(dbDetail);
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
            statement.executeUpdate("INSERT INTO audittrail (date,time,eventType,eventMessge,currentUser)" + " VALUES"
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
      public  ArrayList<AuditTrail> AuditTrailList() throws SQLException
      {
         ArrayList<AuditTrail> list = new ArrayList<>();
         try 
         {
            statement.executeQuery("SELECT * FROM  audittrail");
            try (ResultSet resultSet = statement.getResultSet()) 
            {
               while(resultSet.next())
               {
                  AuditTrail auditTr = new AuditTrail ();
                  auditTr .setDate(resultSet.getString("date"));
                  auditTr .SetTime(resultSet.getString("time"));
                  auditTr .setEventType(resultSet.getString("eventType"));
                  auditTr .setEventMessage(resultSet.getString("eventMessge"));
                  auditTr .setCurrentUser(resultSet.getString("currentUser"));
                 
                  list.add(auditTr);
               }
            }
            statement.close();
            connection.close();
         } 
            catch (SQLException ex) 
            {
               throw new SQLException(ex.getMessage());
            }
         return list;
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