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
    public String linkBody(String deathRegisterNumber, String linkedDeathRegisterNumber)
    {
        try 
        {                       //passport , name , surname,relationWithDeceased,contactNumber,address,workAddress,ID,Body_IdDeathRegisterNumber
            statement.executeUpdate("INSERT INTO `mydb`.`bodylink`\n" +
                "(`BodyFile_Body_idDeathRegisterNumber1`,\n" +
                "`linkDeathRegisterNumber`)\n" +
                "VALUES\n" +
                "(\n" +
                "'" + deathRegisterNumber + "',\n" +
                "'" + linkedDeathRegisterNumber + "'\n" +
                ");");
            statement.close();
            connection.close();
        }
        catch (SQLException ex) 
        {
            return "failed " + ex.getMessage();
        }
        return "successful";
    }
    public ArrayList<BodyAtMortuary> getBodyLinkList(String deathRegister)
    {
        ArrayList<BodyAtMortuary> list = new ArrayList<BodyAtMortuary>();
        try {
            statement.executeQuery("SELECT linkDeathRegisterNumber FROM bodylink WHERE BodyFile_Body_idDeathRegisterNumber1='" + deathRegister + "';");
            ResultSet rSet = statement.getResultSet();
            while (rSet.next()) {
                String deathReg = rSet.getString("linkDeathRegisterNumber");
                BodyDb bodyDb = new BodyDb(dbDetail, new BodyAtMortuary(deathReg));
                bodyDb.init();
                bodyDb.read();
                list.add((BodyAtMortuary) bodyDb.getBody());
            }
            statement.close();
            connection.close();

        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }
        return list;
    }
    public ArrayList<BodyFile> BodyFileList() throws SQLException
    {
        ArrayList<BodyFile> list = new ArrayList<BodyFile>();
        try 
        {
            statement.executeQuery("SELECT * FROM bodyfile WHERE bodyFileStatus=0;");
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
                                    + "WHERE Body_idDeathRegisterNumber='" +bodyFile.getDeathRegisterNumber() + "';");
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
    
    /**
     * function added by Asheen
     */
    public int countOpenBodyFile() throws SQLException{
        int count = 0;
        try 
        {
            statement.executeQuery("SELECT COUNT(*) as countOpenBodyFile FROM bodyfile;");
            ResultSet resultSet = statement.getResultSet();
            resultSet.next();
            count = resultSet.getInt("countOpenBodyFile");
            statement.close();
            connection.close();
        } 
        catch (SQLException ex) 
        {
            throw new SQLException(ex.getMessage());
        }
             return count;
    }
    
     public String readBodyFile(String deathregister) 
    {
        try
        {
            statement.executeQuery("SELECT * FROM bodyfile WHERE Body_idDeathRegisterNumber='" + deathregister + "';");
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
}
