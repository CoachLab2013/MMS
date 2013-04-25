   
  /**
   * this is the class that will connect to the database and do the adding to the database
   */
   package database;
   import java.sql.*;
import java.util.ArrayList;
   public class AuditTrailDb extends DatabaseConnector
   {
   
      private AuditTrail auditTrail;
      /**
       * 
       * @param auditTrail AuditTrail object
       * @param dbDetail DbDetail object
       */
      public AuditTrailDb(AuditTrail auditTrail, DbDetail dbDetail)
      {
         super(dbDetail);
         this.auditTrail = auditTrail;
      
      }
      /**
       * 
       * @param dbDetail DbDetail object
       */
      public AuditTrailDb(DbDetail dbDetail)
      {
         super(dbDetail);
         auditTrail = null;
      
      }
      /**
       * 
       * @return AuditTrail
       */
      public AuditTrail getAuditTrail()
      {
         return auditTrail;
      }
      /**
       * 
       * @param auditTrail AuditTrail
       */
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
            statement.executeUpdate("INSERT INTO audittrail (date,time,eventType,eventMessge,currentUser, eventLocation)" + " VALUES"
                                    +"('" 
                                    +auditTrail.getDate() + "', '" 
                                    + auditTrail.getTime() + "', '"
                                    + auditTrail.getEventType() +"', '"
                                    + auditTrail.getEventMessage() + "', '"
                                    + auditTrail.getCurrentUser() + "', '"
                                    + auditTrail.getEventLocation() +"')");
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
       * @return ArrayList of audit trail objects
       * @throws SQLException 
       */
      public  ArrayList<AuditTrail> AuditTrailList() throws SQLException
      {
         ArrayList<AuditTrail> list = new ArrayList<AuditTrail>();
         try 
         {
            statement.executeQuery("SELECT * FROM  audittrail");
            ResultSet resultSet = statement.getResultSet();
               while(resultSet.next())
               {
                  AuditTrail auditTr = new AuditTrail ();
                  auditTr.setDate(resultSet.getString("date"));
                  auditTr.setTime(resultSet.getString("time"));
                  auditTr.setEventType(resultSet.getString("eventType"));
                  auditTr.setEventMessage(resultSet.getString("eventMessge"));
                  auditTr.setCurrentUser(resultSet.getString("currentUser"));
                  auditTr.setEventLocation(resultSet.getString("eventLocation"));
                 
                  list.add(auditTr);
               }
            statement.close();
            connection.close();
         }catch (SQLException ex) 
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