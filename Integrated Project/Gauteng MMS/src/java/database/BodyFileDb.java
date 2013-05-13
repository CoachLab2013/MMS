/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package database;

import java.sql.SQLException;

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
        try {                       //passport , name , surname,relationWithDeceased,contactNumber,address,workAddress,ID,Body_IdDeathRegisterNumber
            statement.executeUpdate("bodyFile.getDateFileOpened()" + " VALUES"
                    + "('"+ bodyFile.getDateFileOpened() + "',"
                    + bodyFile.isClosed()+ "," + bodyFile.isAllSamplesReceived() + ","
                    + bodyFile.isBodyIdentified() + ","+ bodyFile.isPostMortemCompleted()+ "')");
            statement.close();
            connection.close();
        } catch (SQLException ex) {
            return "failed " + ex.getMessage();
        }
        return "successful";
    }

    @Override
    public String read() 
    {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    @Override
    public String edit() 
    {
        throw new UnsupportedOperationException("Not supported yet.");
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
