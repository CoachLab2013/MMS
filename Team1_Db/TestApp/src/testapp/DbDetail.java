/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package testapp;

/**
 *
 * @author Chester
 */
public class DbDetail 
{
    private String url;
    private String dbName;
    private String username;
    private String password;
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
    public String getUrl()
    {
        return url;
    }
    public String getDbName()
    {
        return dbName;
    }
    public String getUsername()
    {
        return username;
    }
    public String getPassword()
    {
        return password;
    }
    public void setUrl(String url)
    {
        this.url = url;
    }
    public void setDbName(String dbName)
    {
        this.dbName = dbName;
    }
    public void setUsername(String username)
    {
        this.username = username;
    }
    public void setPassword(String password)
    {
        this.password = password;
    }
}
