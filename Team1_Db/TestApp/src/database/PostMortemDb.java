/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package database;

import java.sql.SQLException;

/**
 *
 * @author Bandile
 */
public class PostMortemDb extends DatabaseConnector
{
    private PostMortem postMortem;
    public PostMortemDb(DbDetail dbDetail)
    {
        super(dbDetail);
    }
    public PostMortemDb(PostMortem postMortem,DbDetail dbDetail)
    {
        super(dbDetail);
        this.postMortem = postMortem;
    }
    @Override
    public String add() 
    {
        try  
        {  //
            statement.executeUpdate("INSERT INTO PostMortem (labNumber,icd10,chiefFind,causeOfDeath,status,approved,DHA1663number,Body_idDeathRegisterNumber)" + " VALUES ('" 
                                    + postMortem.getLabNumber() + "','" + postMortem.getIcd10() + "','" + postMortem.getChiefFind() + "','" 
                                    + postMortem.getCauseOfDeath() + "','"
                                    + "')");
            statement.close(); //status , reason , bodyCountb 
            connection.close(); //deathCall
        } 
        catch (SQLException ex)  
        {
            return "failed "+ex.getMessage(); 
        }
        catch (Exception ex)
        {
            return "failed "+ex.getMessage();
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
    public PostMortem getPostMortem()
    {
        return postMortem;
    }
    public void setPostMortem(PostMortem postMortem)
    {
        this.postMortem = postMortem;
    }
    
}
