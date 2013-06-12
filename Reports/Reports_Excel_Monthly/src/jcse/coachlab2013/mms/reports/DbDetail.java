package jcse.coachlab2013.mms.reports;

import static jcse.coachlab2013.mms.reports.DbDetail.staticDBDetail;

/**
 *
 * @author Chester
 */
public class DbDetail 
{
/**
 * The class DbDetail sets up the access to the database. 
 */ 
    public static DbDetail staticDBDetail = new DbDetail("146.141.75.106", "/", "remote", "root");
    
    private String url;
    private String dbName;
    private String username;
    private String password;
    
/**
 * The method defines the following parameters as Strings
 * @param url
 * @param dbName
 * @param username
 * @param password
 */    
    public DbDetail()
    {
        url = "";
        dbName = "";
        username = "";
        password = "";
    }
    public DbDetail(String url,String dbName,String username,String password)
    {
        this.url = url;
        this.dbName = dbName;
        this.username = username;
        this.password = password;
    }
/** 
 * The method gets the url
 * @return url
 */    
    public String getUrl()
    {
        return url;
    }
/**
 * The method gets the databaseName
 * @return dbName
 */    
    public String getDbName()
    {
        return dbName;
    }
/**
 * The method gets the Username
 * @return username
 */    
    public String getUsername()
    {
        return username;
    }
/**
 * The method gets the Password
 * @return password
 */    
    public String getPassword()
    {
        return password;
    }
/**
 * The method setUrl sets up the url
 * @param url 
 */     
    public void setUrl(String url)
    {
        this.url = url;
    }
/**
 * The method setDbName sets up the database name
 * @param dbName 
 */    
    public void setDbName(String dbName)
    {
        this.dbName = dbName;
    }
/**
 * The method setUsername sets up the username
 * @param username 
 */    
    public void setUsername(String username)
    {
        this.username = username;
    }
/**
 * The method setPassword sets up the password
 * @param password 
 */    
    public void setPassword(String password)
    {
        this.password = password;
    }
    
/**
 * The method setStaticDBDetail sets up the whole access to the database 
 * @param url
 * @param dbName
 * @param username
 * @param password 
 */    
    public void setStaticDBDetail(String url,String dbName,String username,String password)
    {
        staticDBDetail = new DbDetail(url, dbName, username, password);
    }
}
