/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package testapp;

import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Administrator
 */
public class BodyDb extends DatabaseConnector{
    private Body body;
    private DbDetail dbDetail;
    //CONSTRUCTORS
    public BodyDb(DbDetail dbDetail){
        super(dbDetail);
        this.dbDetail = dbDetail;
    }
    
    public BodyDb(DbDetail dbDetail, Body inBody){
        super(dbDetail);
        this.body = inBody;
        this.dbDetail = dbDetail;
    }
    
    //GET METHODS
    public Body getBody(){
        return this.body;
    }
    //SET METHODS
    public void setBody(Body inBody){
        this.body = inBody;
    }
    
    //DATABASE METHODS
    @Override
    public String add(){
        try 
        {
            statement.executeUpdate("INSERT INTO Body (idDeathRegisterNumber, gender, race, assignedTo, nameOfDeceased, surnameOfDeceased, placeOfBirth, dateOfBirth, ageOnDateFound, maritalStatus, occupation, citizen, maidenName, identifiedDateTime, estimatedAgeYear, estimatedAgeMonth, ID, passport, bodyStatus, dateBodyReceived, bodyReleased, Incident_incidentLogNumber, bodyType, dateBodyReleased,bodyReleasedTo) VALUES (' "
                    + body.getDeathRegisterNumber() + "','"+ body.getGender() +"','"
                    + body.getRace() +"','"+ body.getAssignedTo() +"','"
                    + body.getNameOfDeceased() +"','"+ body.getSurnameOfDeceased() +"','"
                    + body.getPlaceOfBirth() +"','"+ body.getDateOfBirth() +"','"
                    + body.getAgeOnDateFound() +"','"+ body.getMaritalStatus() +"','"
                    + body.getOccupation()+"','"+ body.getCitizen()+"','"+ body.getMaidenName() +"','"
                    + body.getIdentifiedDateTime() +"','"+ body.getEstimatedAgeYear() +"','"
                    + body.getEstimatedAgeMonth() +"','"+ body.getID() +"','"
                    + body.getPassport() +"',"+ body.isBodyStatus() +",'"
                    + body.getDateBodyReceived() +"',"+ body.isBodyReleased() +",'"
                    + body.getIncident().getIncidentLogNumber() +"','"+ body.getBodyType() 
                    +"','"+ body.getDateBodyReleased()+"','"+ body.getBodyReleasedTo() +"')");
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
    public String addBodyAddress()
    {
        try 
        {
            statement.executeUpdate("SET FOREIGN_KEY_CHECKS=0;");
            statement.executeUpdate("INSERT INTO BodyAddress (street,suburb,city,postalCode,province,region,magisterialDistrict,building,Body_idDeathRegisterNumber) VALUES ('" 
                    + body.getBodyAddress().getStreet() + "','" 
                    + body.getBodyAddress().getSuburb() +"','" + body.getBodyAddress().getCity() + "','"
                    + body.getBodyAddress().getPostCode() + "','" + body.getBodyAddress().getProvince() + "','"
                    + body.getBodyAddress().getRegion() + "','" + body.getBodyAddress().getMagisterialDistrict() +"','" + body.getBodyAddress().getBuilding() + "','"+  body.getDeathRegisterNumber()+ "');");
            statement.executeUpdate("SET FOREIGN_KEY_CHECKS=1;");
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
    public String addBodyAtMotuary()
    {
        try
        {
        //converting to a bodyAtMortuary object
            BodyAtMortuary bodyAtMort = (BodyAtMortuary)body;
            statement.executeUpdate("SET FOREIGN_KEY_CHECKS=0;");
            statement.executeUpdate("INSERT INTO AtMortuary (bodyReceivedFromPerNumber,bodyHandOverFromPerNumber,Body_idDeathRegisterNumber) VALUES ('" 
            + bodyAtMort.getBodyReceivedFromPerNum() + "','" + bodyAtMort.getBodyHandOverFromPerNum() + "','"+  body.getDeathRegisterNumber() + "');");
            statement.executeUpdate("SET FOREIGN_KEY_CHECKS=1;");
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
   /* public String addBodyAtMotuary()
    {
        
    }*/
    @Override
    public String read(){
        try 
        {
            statement.executeQuery("SELECT * FROM Body WHERE idDeathRegisterNumber = '"+ body.getDeathRegisterNumber() +"';");
            ResultSet resultSet = statement.getResultSet();
            resultSet.next();
            body.setAgeOnDateFound(resultSet.getInt("ageOnDateFound"));
            body.setAssignedTo(resultSet.getString("assignedTo"));
            body.setBodyReleased(resultSet.getBoolean("bodyReleased"));
            body.setBodyStatus(resultSet.getBoolean("bodyStatus"));
            body.setBodyType(resultSet.getString("bodyType"));
            body.setCitizen(resultSet.getString("citizen"));
            body.setDateBodyReceived(resultSet.getString("dateBodyReceived"));
            body.setDateBodyReleased(resultSet.getString("dateBodyReleased"));
            body.setDateOfBirth(resultSet.getString("dateOfBirth"));
            body.setDeathRegisterNumber(resultSet.getString("deathRegisterNumber"));
            body.setEstimatedAgeMonth(resultSet.getInt("estimatedAgeMonth"));
            body.setEstimatedAgeYear(resultSet.getInt("estimatedAgeYear"));
            body.setGender(resultSet.getString("gender"));
            body.setID(resultSet.getString("ID"));
            body.setIdentifiedDateTime(resultSet.getString("identifiedDateTime"));
            body.setMaidenName(resultSet.getString("maidenName"));
            body.setMaritalStatus(resultSet.getString("maritalStatus"));
            body.setNameOfDeceased(resultSet.getString("nameOfDeceased"));
            body.setOccupation(resultSet.getString("occupation"));
            body.setPassport(resultSet.getString("passport"));
            body.setPlaceOfBirth(resultSet.getString("placeOfBirth"));
            body.setRace(resultSet.getString("race"));
            body.setSurnameOfDeceased(resultSet.getString("surnameOfDeceased"));
            body.setBodyReleaseTo(resultSet.getString("bodyReleasedTo"));
            IncidentDb incidentDb = new IncidentDb(new Incident(resultSet.getString("Incident_incidentLogNumber")), dbDetail);
            incidentDb.init();
            incidentDb.read();
            body.setIncident(incidentDb.getIncident());
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
    public String edit(){
        return null;
        
    }
    
    @Override
    public String delete(){
        return null;
        
    }
}
