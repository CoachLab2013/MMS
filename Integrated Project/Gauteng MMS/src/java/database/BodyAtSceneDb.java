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
public class BodyAtSceneDb extends DatabaseConnector
{
    private BodyAtScene bodyAtScene;
    private DbDetail dbDetail;
    public BodyAtSceneDb(DbDetail dbDetail,BodyAtScene bodyAtScene)
    {
        super(dbDetail);
        this.dbDetail = dbDetail;
        this.bodyAtScene = bodyAtScene;
    }
    public BodyAtSceneDb(DbDetail dbDetail)
    {
        super(dbDetail);
    }
    @Override
    public String add() 
    {
        try 
        {   
            if(bodyAtScene.getFacilityDateTime()==null){
                statement.executeUpdate("INSERT INTO atscene (sceneIncidentOccured,sceneDateTime,pathOnScene,allegedInjuryDateTime,allegedDeathDateTime,externalCircumstanceOfInjury,placeOfDeath,dateTimeBodyFound,Body_idDeathRegisterNumber) VALUES('" 
                    + bodyAtScene.getSceneIncidentOccured() + "','" 
                    + bodyAtScene.getSceneDateTime() +"'," + bodyAtScene.isPathOnScene() + ",'"
                    + bodyAtScene.getAllegedInjuryDateTime() + "','" + bodyAtScene.getAllegedDeathDateTime() + "','"
                    + bodyAtScene.getExternalCircumstanceOfInjury()+ "','" + bodyAtScene.getPlaceOfDeath() +"','" + bodyAtScene.getDateTimeBodyFound() + "','" + bodyAtScene.getBody().getDeathRegisterNumber() + "');");
                statement.close();
                connection.close(); 
            }else if(bodyAtScene.getSceneDateTime()==null){
                statement.executeUpdate("INSERT INTO atscene (sceneIncidentOccured,facilityDateTime,pathOnScene,allegedInjuryDateTime,allegedDeathDateTime,externalCircumstanceOfInjury,placeOfDeath,dateTimeBodyFound,Body_idDeathRegisterNumber) VALUES('" 
                    + bodyAtScene.getSceneIncidentOccured() + "','" 
                    + bodyAtScene.getFacilityDateTime() +"'," + bodyAtScene.isPathOnScene() + ",'"
                    + bodyAtScene.getAllegedInjuryDateTime() + "','" + bodyAtScene.getAllegedDeathDateTime() + "','"
                    + bodyAtScene.getExternalCircumstanceOfInjury()+ "','" + bodyAtScene.getPlaceOfDeath() +"','" + bodyAtScene.getDateTimeBodyFound() + "','" + bodyAtScene.getBody().getDeathRegisterNumber() + "');");
                statement.close();
                connection.close(); 
            }else{
                statement.executeUpdate("INSERT INTO atscene (sceneIncidentOccured,facilityDateTime,sceneDateTime,pathOnScene,allegedInjuryDateTime,allegedDeathDateTime,externalCircumstanceOfInjury,placeOfDeath,dateTimeBodyFound,Body_idDeathRegisterNumber) VALUES('" 
                    + bodyAtScene.getSceneIncidentOccured() + "','"
                    + bodyAtScene.getFacilityDateTime() +"','" 
                    + bodyAtScene.getSceneDateTime() +"'," + bodyAtScene.isPathOnScene() + ",'"
                    + bodyAtScene.getAllegedInjuryDateTime() + "','" + bodyAtScene.getAllegedDeathDateTime() + "','"
                    + bodyAtScene.getExternalCircumstanceOfInjury()+ "','" + bodyAtScene.getPlaceOfDeath() +"','" + bodyAtScene.getDateTimeBodyFound() + "','" + bodyAtScene.getBody().getDeathRegisterNumber() + "');");
                statement.close();
                connection.close(); 
            } 
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
    /*public String addMember(Member member)
    {
        try 
        {
            statement.executeUpdate("INSERT INTO member (name,surname,rank,personnelNumber,organization,contactNumber,AtScene_Body_idDeathRegisterNumber) VALUES('" 
                    + member.getName() + "','" 
                    + member.getSurname()+"','" +member.getRank() +"','" +member.getPersonnelNumber() + "','"
                    + member.getOrganization() + "','" + member.getContactNumber() + "','" + bodyAtScene.getBody().getDeathRegisterNumber() + "');");
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
    public String editMember(Member member)
    {
        try
        {
            statement.executeUpdate("UPDATE member SET "
                    + "name='" + member.getName() + "',"
                    + "surname='" + member.getSurname() + "',"
                    + "rank='" + member.getRank() + "',"
                    + "personnelNumber='" + member.getPersonnelNumber() + "',"
                    + "organization='" + member.getOrganization() + "',"
                    + "contactNumber='" + member.getContactNumber() + "'"
                    +" WHERE AtScene_Body_idDeathRegisterNumber='"+ bodyAtScene.getBody().getDeathRegisterNumber()+"' AND contactNumber='" + member.getContactNumber() + "';");
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
    }*/
    public  ArrayList<BodyAtScene> bodiesAtSceneList() throws SQLException
    {
        ArrayList<BodyAtScene> list = new ArrayList<BodyAtScene>();
        try 
        {
            statement.executeQuery("SELECT * FROM AtScene;");
            ResultSet resultSet = statement.getResultSet();
            while(resultSet.next())
            {
               BodyAtScene bodyAt = new BodyAtScene(resultSet.getString("sceneIncidentOccured"), resultSet.getBoolean("pathOnScene"), resultSet.getString("allegedInjuryDateTime"), resultSet.getString("allegedDeathDateTime"), resultSet.getString("externalCircumstanceOfInjury"), resultSet.getString("placeOfDeath"), resultSet.getString("Body_idDeathRegisterNumber"),new BodyAtMortuary());
               if(resultSet.getString("sceneDateTime").isEmpty()!=true){
                   bodyAt.setSceneDateTime(resultSet.getString("sceneDateTime"));
               }else if(resultSet.getString("facilityDateTime").isEmpty()!=true){
                   bodyAt.setFacilityDateTime(resultSet.getString(null));
               }
               
               BodyDb db = new BodyDb(dbDetail,new BodyAtMortuary(bodyAt.getBody().getDeathRegisterNumber()));
               db.init();
               db.read();
               bodyAt.setBody((BodyAtMortuary)db.getBody());
               list.add(bodyAt);
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
    /*public  ArrayList<Member> membersAtSceneList() throws SQLException
    {
        ArrayList<Member> list = new ArrayList<Member>();
        try 
        {
            statement.executeQuery("SELECT * FROM member;");
            ResultSet resultSet = statement.getResultSet();
            while(resultSet.next())
            {
                list.add(new Member(resultSet.getString("name"), resultSet.getString("surname"), resultSet.getString("rank"),resultSet.getString("personnelNumber"),resultSet.getString("organization"), resultSet.getString("contactNumber"), bodyAtScene.getBody().getDeathRegisterNumber()));
            }
            statement.close();
            connection.close();
        } 
        catch (SQLException ex) 
        {
            throw new SQLException(ex.getMessage());
        }
        return list;
    }*/
    @Override
    public String read() 
    {
        try 
        {
            statement.executeQuery("SELECT * FROM AtScene WHERE Body_idDeathRegisterNumber = '"+bodyAtScene.getBody().getDeathRegisterNumber()+"';");
            ResultSet resultSet = statement.getResultSet();
            resultSet.next();
            bodyAtScene.setAllegedDeathDateTime(resultSet.getString("allegedDeathDateTime"));
            bodyAtScene.setAllegedInjuryDateTime(resultSet.getString("allegedInjuryDateTime"));
            //bodyAtScene.setBody(null);
            bodyAtScene.setDateTimeBodyFound(resultSet.getString("dateTimeBodyFound"));
            bodyAtScene.setExternalCircumstanceOfInjury(resultSet.getString("externalCircumstanceOfInjury"));
            bodyAtScene.setFacilityDateTime(resultSet.getString("facilityDateTime"));
            bodyAtScene.setPathOnScene(resultSet.getBoolean("pathOnScene"));
            bodyAtScene.setPlaceOfDeath(resultSet.getString("placeOfDeath"));
            bodyAtScene.setSceneDateTime(resultSet.getString("sceneDateTime"));
            bodyAtScene.setSceneIncidentOccured(resultSet.getString("sceneIncidentOccured"));
            if(resultSet.getString("sceneDateTime").isEmpty()!=true){
                bodyAtScene.setSceneDateTime(resultSet.getString("sceneDateTime"));
            }else if(resultSet.getString("facilityDateTime").isEmpty()!=true){
                bodyAtScene.setFacilityDateTime(resultSet.getString(null));
            }
            BodyDb db = new BodyDb(dbDetail,new BodyAtMortuary(bodyAtScene.getBody().getDeathRegisterNumber()));
            db.init();
            db.read();
            bodyAtScene.setBody((BodyAtMortuary)db.getBody());
            statement.close();
            connection.close();
        } 
        catch (SQLException ex) 
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
            if(bodyAtScene.getSceneDateTime()==null){
                statement.executeUpdate("UPDATE atscene SET "
                  +"sceneIncidentOccured='" + bodyAtScene.getSceneIncidentOccured() + "',"
                  +"pathOnScene=" + bodyAtScene.isPathOnScene() + ","
                  +"allegedInjuryDateTime='" + bodyAtScene.getAllegedInjuryDateTime() + "',"
                  +"allegedDeathDateTime='" + bodyAtScene.getAllegedDeathDateTime() + "',"
                  +"externalCircumstanceOfInjury='" + bodyAtScene.getExternalCircumstanceOfInjury() + "',"
                  +"facilityDateTime='" + bodyAtScene.getFacilityDateTime() + "',"
                  +"placeOfDeath='" + bodyAtScene.getPlaceOfDeath() + "',"
                  +"dateTimeBodyFound='" + bodyAtScene.getDateTimeBodyFound() + "'"
                  +" WHERE Body_idDeathRegisterNumber='"+ bodyAtScene.getBody().getDeathRegisterNumber() + "';");
                statement.close();
                connection.close();
            }else if(bodyAtScene.getFacilityDateTime()==null){
                   statement.executeUpdate("UPDATE atscene SET "
                  +"sceneIncidentOccured='" + bodyAtScene.getSceneIncidentOccured() + "',"
                  +"sceneDateTime='" + bodyAtScene.getSceneDateTime() + "',"
                  +"pathOnScene=" + bodyAtScene.isPathOnScene() + ","
                  +"allegedInjuryDateTime='" + bodyAtScene.getAllegedInjuryDateTime() + "',"
                  +"allegedDeathDateTime='" + bodyAtScene.getAllegedDeathDateTime() + "',"
                  +"externalCircumstanceOfInjury='" + bodyAtScene.getExternalCircumstanceOfInjury() + "',"
                  +"placeOfDeath='" + bodyAtScene.getPlaceOfDeath() + "',"
                  +"dateTimeBodyFound='" + bodyAtScene.getDateTimeBodyFound() + "'"
                  +" WHERE Body_idDeathRegisterNumber='"+ bodyAtScene.getBody().getDeathRegisterNumber() + "';");
                statement.close();
                connection.close();
            }else{
                statement.executeUpdate("UPDATE atscene SET "
                  +"sceneIncidentOccured='" + bodyAtScene.getSceneIncidentOccured() + "',"
                  +"sceneDateTime='" + bodyAtScene.getSceneDateTime() + "',"
                  +"pathOnScene=" + bodyAtScene.isPathOnScene() + ","
                  +"allegedInjuryDateTime='" + bodyAtScene.getAllegedInjuryDateTime() + "',"
                  +"allegedDeathDateTime='" + bodyAtScene.getAllegedDeathDateTime() + "',"
                  +"externalCircumstanceOfInjury='" + bodyAtScene.getExternalCircumstanceOfInjury() + "',"
                  +"facilityDateTime='" + bodyAtScene.getFacilityDateTime() + "',"
                  +"placeOfDeath='" + bodyAtScene.getPlaceOfDeath() + "',"
                  +"dateTimeBodyFound='" + bodyAtScene.getDateTimeBodyFound() + "'"
                  +" WHERE Body_idDeathRegisterNumber='"+ bodyAtScene.getBody().getDeathRegisterNumber() + "';");
                statement.close();
                connection.close();
            }
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
    public BodyAtScene getBodyAtScene()
    {
        return bodyAtScene;
    }
    public void setBodyAtScene(BodyAtScene bodyAtScene)
    {
        this.bodyAtScene = bodyAtScene;
    }
    
}
