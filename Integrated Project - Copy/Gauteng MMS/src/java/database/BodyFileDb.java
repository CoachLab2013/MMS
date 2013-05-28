/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package database;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author Chester
 */
public class BodyFileDb extends DatabaseConnector
{
    private BodyFile bodyFile;
    public BodyFileDb(DbDetail dbDetail)
    {
        super(dbDetail);
    }
    public BodyFileDb(DbDetail dbDetail,BodyFile bodyFile)
    {
        super(dbDetail);
        this.bodyFile = bodyFile;
    }
    @Override
    public String add()
    {
        try 
        {                       //passport , name , surname,relationWithDeceased,contactNumber,address,workAddress,ID,Body_IdDeathRegisterNumber
            statement.executeUpdate("INSERT INTO bodyfile (dateFileOpened,bodyFileStatus,Body_idDeathRegisterNumber,allSamplesReceived,bodyIdentified,postMortemComplete,dateFileClosed) VALUES('"
                    + bodyFile.getDateFileOpened() + "',"
                    + bodyFile.isClosed()+ ",'"+ bodyFile.getDeathRegisterNumber()+ "'," + bodyFile.isAllSamplesReceived() + ","
                    + bodyFile.isBodyIdentified() + ","+ bodyFile.isPostMortemCompleted()+",'" + bodyFile.getDateFileClosed() +"')");
            statement.close();
            connection.close();
        }
        catch (SQLException ex) 
        {
            return "failed " + ex.getMessage();
        }
        return "successful";
    }

    @Override
    public String read() 
    {
        try
        {
            statement.executeQuery("SELECT * FROM bodyfile WHERE Body_idDeathRegisterNumber='" + bodyFile.getDeathRegisterNumber() + "';");
            ResultSet rSet = statement.getResultSet();
            rSet.next();
            bodyFile = new BodyFile(rSet.getString("dateFileOpened"),rSet.getBoolean("bodyFileStatus"), rSet.getBoolean("allSamplesReceived"), rSet.getBoolean("bodyIdentified"), rSet.getBoolean("postMortemComplete"), rSet.getString("dateFileClosed"),rSet.getString("Body_idDeathRegisterNumber"));
            statement.close();
            connection.close();
        }
        catch (SQLException ex) 
        {
            return "failed " + ex.getMessage();
        }
        return "successful";
    }
    public String linkBody(String deathRegisterNumber)
    {
        try 
        {                       //passport , name , surname,relationWithDeceased,contactNumber,address,workAddress,ID,Body_IdDeathRegisterNumber
            statement.executeUpdate("UPDATE bodylink SET BodyFile_Body_idDeathRegisterNumber1='"
                    + deathRegisterNumber+ "' WHERE Body_idDeathRegisterNumber='" + bodyFile.getDeathRegisterNumber() + "';");
            statement.close();
            connection.close();
        }
        catch (SQLException ex) 
        {
            return "failed " + ex.getMessage();
        }
        return "successful";
    }
    public ArrayList<BodyFile> BodyFileList() throws SQLException
    {
        ArrayList<BodyFile> list = new ArrayList<BodyFile>();
        try 
        {
            statement.executeQuery("SELECT * FROM bodyfile;");
            ResultSet rSet = statement.getResultSet();
            while(rSet.next())
            {
                bodyFile = new BodyFile(rSet.getString("dateFileOpened"),rSet.getBoolean("bodyFileStatus"), rSet.getBoolean("allSamplesReceived"), rSet.getBoolean("bodyIdentified"), rSet.getBoolean("postMortemComplete"), rSet.getString("dateFileClosed"),rSet.getString("Body_idDeathRegisterNumber"));
                list.add(bodyFile);
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
    @Override
    public String edit() 
    {
        try 
        {
            statement.executeUpdate("UPDATE bodyfile SET dateFileOpened='" + bodyFile.getDateFileOpened() + "',"
                                    + "bodyFileStatus=" + bodyFile.isClosed() + ","
                                    + "allSamplesReceived=" + bodyFile.isAllSamplesReceived() +  ","
                                    + "bodyIdentified="+ bodyFile.isBodyIdentified() + ","
                                    + "postMortemComplete=" + bodyFile.isPostMortemCompleted() + ","
                                    + "dateFileClosed='" + bodyFile.getDateFileClosed() + "'"
                                    + "WHERE Body_idDeathRegisterNumber=" +bodyFile.getDeathRegisterNumber() + ";");
            statement.close();
            connection.close();
        } 
        catch (SQLException ex) 
        {
            return "fail " + ex.getMessage();
        }
        return "successful";
    }

    @Override
    public String delete() 
    {
        throw new UnsupportedOperationException("Not supported yet.");
    }
    public BodyFile getBodyFile()
    {
        return bodyFile;
    }
    public void setBodyFile(BodyFile bodyFile)
    {
        this.bodyFile = bodyFile;
    }
}
