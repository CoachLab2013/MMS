package mypackage;
/**
 *
 * @author Itumeleng Moraka
 * @JCSE
 */
/**
 * 
 * @all the variables related to the audit trail tables are below
 */
   public class AuditTrail //extends DatabaseConnector 
   
   { 
      private String date;
      private String time;
      private String eventType;
      private String eventMessage;
      private String currentUser;
   
      public AuditTrail()
      {
         date="";
         time="";
         eventType="";
         eventMessage="";
         currentUser=""; 
      }
    /** 
     *  
     * @param date , this is the date that the user has logged on the system
     * @param time , this is the time the user logged on the system
     * @param eventType , this refers to the action the user did to the database
     * @param eventMessage , this is the message fired when the event was happening
     * @param currentUser  , this is the user who will be using the system
     */
    
      public AuditTrail(String date , String time , String eventType , String eventMessage , String currentUser)
      {
         this.date = date;
         this.time = time;
         this.eventType = eventType;
         this.eventMessage = eventMessage;
         this.currentUser = currentUser;   
      }
    
    /**
     * 
     * @return date that the user was using the system 
     */
      public  String getDate()
      {
         return date;
      }
   /**
   * 
   * @param set the date that the user was using the system
   */
    
      public void setDate(String date)
      {
         this.date = date;
      }
   /**
   * 
   * @return the time that the user was logged into the system.  
   */
      public String getTime() 
      {
         return time; 
      }
   /**
    * 
    * @param set the time when the user was logged into the system.
    */
    
      public void SetTime(String time)
      {
         this.time = time;
      }
   
   /**
    * 
    * @return the event that happend while the user was using the system
    */
      public String getEventType()
      {
         return eventType;
      }
   
   /**
   * 
   * @param set the eventType 
   */
   
      public void setEventType(String eventType)
      {
         this.eventType = eventType;
      }
   /**
   *  
   * @return the message of the event
   */
   
      String getEventMessage()
      {
         return eventMessage;
      }
   /**
   * 
   * @param get the eventMessage 
   */
    
   
      public void setEventMessage(String eventMessage)
      {
         this.eventMessage = eventMessage;
      }
   /**
   * 
   * @return the user 
   */
   
      String getCurrentUser()
      {
         return currentUser;
      }
   
    /**
     * 
     * @param set the currentUser 
     */
      public void setCurrentUser(String currentUser)
      {
         this.currentUser = currentUser;
      }
      
   	//DatabaseConnector(String username,String password,String url,String dbName)
      
      public  String add()
      {
         return "";
      }
      public  String read()
      {
         return "";
      }
   
     
   }
