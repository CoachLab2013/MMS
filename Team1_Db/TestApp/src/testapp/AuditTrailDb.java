   
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
      public  ArrayList<AuditTrail> AuditTrailList()
      {
         ArrayList<AuditTrail> list = new ArrayList<AuditTrail>();
         try 
         {
            statement.executeQuery("SELECT * FROM  audittrail");
            AuditTrail auditTr = null;
            try (ResultSet resultSet = statement.getResultSet()) 
            {
               while(resultSet.next())
               {
                  auditTr = new AuditTrail ();
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
               System.out.println("fail " + ex.getMessage());
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