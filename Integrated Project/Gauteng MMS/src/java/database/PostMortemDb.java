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
 * @author Bandile
 */
public class PostMortemDb extends DatabaseConnector
{
    private PostMortem postMortem;
    private int newSampleCount;
    public PostMortemDb(DbDetail dbDetail)
    {
        super(dbDetail);
        newSampleCount = 0;
    }
    public PostMortemDb(PostMortem postMortem,DbDetail dbDetail)
    {
        super(dbDetail);
        this.postMortem = postMortem;
         newSampleCount = 0;
    }
    @Override
    public String add() 
    {
        try  
        { 
            statement.executeUpdate("INSERT INTO PostMortem (labNumber,icd10,chiefFind,causeOfDeath,status,approved,DHA1663number,Body_idDeathRegisterNumber)" + " VALUES ('" 
                                    + postMortem.getLabNumber() + "','" + postMortem.getIcd10() + "','" + postMortem.getChiefFind() + "','" 
                                    + postMortem.getCauseOfDeath() + "'," + postMortem.isStatus() + "," + postMortem.isApproved() +",'"
                                    + postMortem.getDHA1663number() + "','" + postMortem.getBody().getDeathRegisterNumber()
                                    + "');");
                                    
            statement.close(); 
            connection.close(); 
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
    public String addLabRecord()
    {
        try
        {
          statement.executeUpdate("INSERT INTO LabRecord (labNumber,receivedAllSamples,numberOfSamples,sampleCounter)" + " VALUES ('" 
                                    + postMortem.getLabNumber() + "'," + postMortem.getLabRecord().isAllSammplesReceived() 
                                    + "," + postMortem.getLabRecord().getNumberOfSamples()
                                    + "," + postMortem.getLabRecord().getSampleCount()+ ");");
            statement.close(); 
            connection.close(); 
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
    public  ArrayList<LabRecord> listLabRecords() throws Exception
    {
        ArrayList list = new ArrayList<LabRecord>();
        LabRecord labRecord = new LabRecord();
        statement.executeQuery("SELECT * FROM LabRecord;");
        ResultSet resultSet = statement.getResultSet();
        while(resultSet.next())
        {
            labRecord.setAllSammplesReceived(resultSet.getBoolean("receivedAllSamples"));
            labRecord.setNumberOfSamples(resultSet.getInt("numberOfSamples"));
            labRecord.setSampleCount(resultSet.getInt("sampleCounter"));
            list.add(labRecord);
        }
        statement.close();
        connection.close();
        return list;
    }
    public ArrayList<PostMortem> listPostMortems () throws Exception
    {
        ArrayList list = new ArrayList<BodyAtMortuary>();
        try 
        {
            statement.executeQuery("SELECT * FROM PostMortem;");
            ResultSet resultSet = statement.getResultSet();
            while(resultSet.next())
            {
                list.add(new PostMortem(resultSet.getString("labNumber"),resultSet.getString("icd10"), 
                resultSet.getString("chiefFind"), resultSet.getString("causeOfDeath"), 
                resultSet.getBoolean("status"), resultSet.getBoolean("approved"), resultSet.getString("DHA1663number"), 
                (Body)new BodyAtMortuary(resultSet.getString("Body_idDeathRegisterNumber")), null));
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
    public String read() 
    {
        try
        {
            statement.executeQuery("SELECT * FROM PostMortem WHERE Body_idDeathRegisterNumber='" + postMortem.getBody().getDeathRegisterNumber() + "';");
            ResultSet rSet = statement.getResultSet();
            rSet.next();
            postMortem = new PostMortem();
            postMortem.setLabNumber(rSet.getString("labNumber"));
            postMortem.setIcd10(rSet.getString("icd10"));
            postMortem.setChiefFind(rSet.getString("chiefFind"));
            postMortem.setCauseOfDeath(rSet.getString("causeOfDeath"));
            postMortem.setStatus(rSet.getBoolean("status"));
            postMortem.setApproved(rSet.getBoolean("approved"));
            postMortem.setDHA1663number(rSet.getString("DHA1663number"));
            BodyAtMortuary mort = new BodyAtMortuary(rSet.getString("Body_idDeathRegisterNumber"));
            BodyDb db = new BodyDb(dbDetail,mort);
            db.init();
            db.read();
            statement.close(); 
            connection.close(); 
            postMortem.setBody(mort);
            readLabRecord(postMortem);
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
    public void readLabRecord(PostMortem p) throws Exception
    {
        init();
        statement.executeQuery("SELECT * FROM LabRecord WHERE labNumber='" + postMortem.getLabNumber() + "';");
        ResultSet rSet = statement.getResultSet();
        rSet.next();
        p.setLabNumber(rSet.getString("labNumber"));
        p.setLabRecord(new LabRecord(rSet.getBoolean("receivedAllSamples"), rSet.getInt("numberOfSamples"),rSet.getInt("sampleCounter"))); 
        statement.close(); 
        connection.close(); 
    }
    public String IncreaseSampleCount()
    {
        newSampleCount = postMortem.getLabRecord().getSampleCount() + 1;
        if (newSampleCount < postMortem.getLabRecord().getNumberOfSamples())
        {
            postMortem.getLabRecord().setSampleCount(newSampleCount);
            return editLabRecord();
        }
        else if(newSampleCount == postMortem.getLabRecord().getNumberOfSamples())
        {
            postMortem.getLabRecord().setSampleCount(newSampleCount);
            postMortem.getLabRecord().setAllSammplesReceived(true);
            return editLabRecord();
        }
        else
        {
            return "WE HAVE RECIEVED ALL THE BODIES FOR THIS INCIDENT";
        }
    }
    private String editLabRecord()
    {
        try
        {
            statement.executeUpdate("UPDATE LabRecord SET receivedAllSamples="
                    + postMortem.getLabRecord().isAllSammplesReceived() + ",numberOfSamples=" +postMortem.getLabRecord().getNumberOfSamples() +",sampleCounter="
                    + postMortem.getLabRecord().getSampleCount()
                    + " WHERE labNumber='"+ postMortem.getLabNumber() +"';");
            statement.close();
            connection.close();
        } 
        catch (SQLException ex) 
        {
            return "failed " + ex.getMessage();
        }
        catch (Exception ex)
        {
            return "error" + ex.getMessage();
        }
        return "successful";
    }
    @Override
    public String edit() 
    {
        try
        {
            statement.executeUpdate("UPDATE PostMortem SET icd10='"
                    + postMortem.getIcd10() + "',chiefFind='" + postMortem.getChiefFind() +"',causeOfDeath='"
                    + postMortem.getCauseOfDeath() + "',status=" + postMortem.isStatus() + ",approved=" 
                    + postMortem.isApproved() + ",DHA1663number='" + postMortem.getDHA1663number() + "'"
                    + " WHERE Body_idDeathRegisterNumber='"+ postMortem.getBody().getDeathRegisterNumber() +"';");
            statement.close();
            connection.close();
        } 
        catch (SQLException ex) 
        {
            return "failed " + ex.getMessage();
        }
        catch (Exception ex)
        {
            return "error" + ex.getMessage();
        }
        return "successful";
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
