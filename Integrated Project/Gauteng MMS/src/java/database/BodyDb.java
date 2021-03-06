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
 * @author Administrator
 */
public class BodyDb extends DatabaseConnector{
    private Body body;
    
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
    public String add()
    {
        try 
        {
            statement.executeUpdate("INSERT INTO Body (idDeathRegisterNumber, gender, race, assignedTo, nameOfDeceased, surnameOfDeceased, placeOfBirth, dateOfBirth, ageOnDateFound, maritalStatus, occupation, citizen, maidenName, identifiedDateTime, estimatedAgeYear, estimatedAgeMonth, ID, passport, bodyStatus, dateBodyReceived, bodyReleased, Incident_incidentLogNumber, bodyType, dateBodyReleased, bodyReleaseType, bodyReleasedTo) VALUES ('"
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
                    +"','"+ body.getDateBodyReleased()+"','"+ body.getBodyReleasedType()+"','"+ body.getBodyReleasedTo() +"')");
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
            statement.executeUpdate("INSERT INTO BodyAddress (street,suburb,city,postalCode,province,region,magisterialDistrict,building,Body_idDeathRegisterNumber) VALUES ('" 
                    + body.getBodyAddress().getStreet() + "','" 
                    + body.getBodyAddress().getSuburb() +"','" + body.getBodyAddress().getCity() + "','"
                    + body.getBodyAddress().getPostCode() + "','" + body.getBodyAddress().getProvince() + "','"
                    + body.getBodyAddress().getRegion() + "','" + body.getBodyAddress().getMagisterialDistrict() +"','" + body.getBodyAddress().getBuilding() + "','"+  body.getDeathRegisterNumber()+ "');");
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
    public String editBodyAddresss()
    {
        try
        {
            statement.executeUpdate("UPDATE bodyaddress SET "
                                    +"building='" + body.getBodyAddress().getBuilding() + "',"
                                    +"street='" + body.getBodyAddress().getStreet() + "',"
                                    +"suburb='" + body.getBodyAddress().getSuburb() + "',"
                                    +"city='" + body.getBodyAddress().getCity() + "',"
                                    +"postalCode='" + body.getBodyAddress().getPostCode() + "',"
                                    +"province='" + body.getBodyAddress().getProvince() + "',"
                                    +"region='" + body.getBodyAddress().getRegion() + "',"
                                    +"magisterialDistrict='" + body.getBodyAddress().getMagisterialDistrict() + "'"
                                    +" WHERE Body_idDeathRegisterNumber='"+ body.getDeathRegisterNumber() + "';");
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
            if(bodyAtMort.getBodyReceivedFromPerNumber() == null){
                statement.executeUpdate("INSERT INTO atmortuary (bodyHandedOverToPerNumber,Body_idDeathRegisterNumber,bodyHandOverFromOrganization) VALUES('" 
                    + bodyAtMort.getBodyHandedOverToPerNumber() + ",'"
                    + bodyAtMort.getDeathRegisterNumber() + "','" + bodyAtMort.getBodyHandOverFromOrganization() + "');");
                statement.close();
                connection.close(); 
            }else if(bodyAtMort.getBodyHandOverFromOrganization() == null){
                statement.executeUpdate("INSERT INTO atmortuary (bodyReceivedFromPerNumber,bodyHandedOverToPerNumber,Body_idDeathRegisterNumber) VALUES('" 
                    + bodyAtMort.getBodyReceivedFromPerNumber() + "','" 
                    + bodyAtMort.getBodyHandedOverToPerNumber() + ",'"
                    + bodyAtMort.getDeathRegisterNumber() + "');");
                statement.close();
                connection.close(); 
            }else{
                statement.executeUpdate("INSERT INTO atmortuary (bodyReceivedFromPerNumber,bodyHandedOverToPerNumber,Body_idDeathRegisterNumber,bodyHandOverFromOrganization) VALUES('" 
                    + bodyAtMort.getBodyReceivedFromPerNumber() + "','" 
                    + bodyAtMort.getBodyHandedOverToPerNumber() + ",'"
                    + bodyAtMort.getDeathRegisterNumber() + "','" + bodyAtMort.getBodyHandOverFromOrganization() + "');");
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
   public String editBodyAtMotuary()
    {
        try
        {
            BodyAtMortuary bodyAt = (BodyAtMortuary)body;
            if(bodyAt.getBodyReceivedFromPerNumber() == null){
                statement.executeUpdate("UPDATE atMortuary SET "
                  +"bodyHandedOverToPerNumber=" + bodyAt.getBodyHandedOverToPerNumber() + ","
                  +"bodyHandOverFromOrganization='" + bodyAt.getBodyHandOverFromOrganization() + "'"
                  +" WHERE Body_idDeathRegisterNumber='"+ bodyAt.getDeathRegisterNumber() + "';");
                statement.close();
                connection.close();
            }else if(bodyAt.getBodyHandOverFromOrganization() == null){
                statement.executeUpdate("UPDATE atMortuary SET "
                  +"bodyReceivedFromPerNumber='" + bodyAt.getBodyReceivedFromPerNumber() + "',"
                  +"bodyHandedOverToPerNumber=" + bodyAt.getBodyHandedOverToPerNumber() + ","
                  +" WHERE Body_idDeathRegisterNumber='"+ bodyAt.getDeathRegisterNumber() + "';");
                statement.close();
                connection.close();
            }else{
                statement.executeUpdate("UPDATE atMortuary SET "
                  +"bodyReceivedFromPerNumber='" + bodyAt.getBodyReceivedFromPerNumber() + "',"
                  +"bodyHandedOverToPerNumber=" + bodyAt.getBodyHandedOverToPerNumber() + ","
                  +"bodyHandOverFromOrganization='" + bodyAt.getBodyHandOverFromOrganization() + "'"
                  +" WHERE Body_idDeathRegisterNumber='"+ bodyAt.getDeathRegisterNumber() + "';");
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
    public String read(){
        try 
        {
            statement.executeQuery("SELECT * FROM Body WHERE idDeathRegisterNumber ='"+ body.getDeathRegisterNumber() +"';");
            ResultSet resultSet = statement.getResultSet();
            resultSet.next();
/*<<<<<<< HEAD
                body = new BodyAtMortuary();
                body.setDeathRegisterNumber(resultSet.getString("idDeathRegisterNumber"));
                body.setAgeOnDateFound(resultSet.getInt("ageOnDateFound"));
                body.setAssignedTo(resultSet.getString("assignedTo"));
                body.setBodyReleased(resultSet.getBoolean("bodyReleased"));
                body.setBodyStatus(resultSet.getBoolean("bodyStatus"));
                body.setBodyType(resultSet.getString("bodyType"));
                body.setCitizen(resultSet.getString("citizen"));
                body.setDateBodyReceived(resultSet.getString("dateBodyReceived"));
                body.setDateBodyReleased(resultSet.getString("dateBodyReleased"));
                body.setDateOfBirth(resultSet.getString("dateOfBirth"));
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
                body.setBodyReleasedType(resultSet.getString("bodyReleaseType"));
                body.setBodyAddress(getBodyAddress());
                getBodyAtMortuary();
                IncidentDb incidentDb = new IncidentDb(new Incident(resultSet.getString("Incident_incidentLogNumber")), dbDetail);
                incidentDb.init();
                body.setIncident(incidentDb.findIncident(incidentDb.getIncident().getIncidentLogNumber()));
=======*/
            BodyAtMortuary bodyAtMort = new BodyAtMortuary();
            bodyAtMort.setAgeOnDateFound(resultSet.getInt("ageOnDateFound"));
            bodyAtMort.setAssignedTo(resultSet.getString("assignedTo"));
            bodyAtMort.setBodyReleased(resultSet.getBoolean("bodyReleased"));
            bodyAtMort.setBodyStatus(resultSet.getBoolean("bodyStatus"));
            bodyAtMort.setBodyType(resultSet.getString("bodyType"));
            bodyAtMort.setCitizen(resultSet.getString("citizen"));
            bodyAtMort.setDateBodyReceived(resultSet.getString("dateBodyReceived"));
            bodyAtMort.setDateBodyReleased(resultSet.getString("dateBodyReleased"));
            bodyAtMort.setDateOfBirth(resultSet.getString("dateOfBirth"));
            bodyAtMort.setEstimatedAgeMonth(resultSet.getInt("estimatedAgeMonth"));
            bodyAtMort.setEstimatedAgeYear(resultSet.getInt("estimatedAgeYear"));
            bodyAtMort.setGender(resultSet.getString("gender"));
            bodyAtMort.setID(resultSet.getString("ID"));
            bodyAtMort.setIdentifiedDateTime(resultSet.getString("identifiedDateTime"));
            bodyAtMort.setMaidenName(resultSet.getString("maidenName"));
            bodyAtMort.setMaritalStatus(resultSet.getString("maritalStatus"));
            bodyAtMort.setNameOfDeceased(resultSet.getString("nameOfDeceased"));
            bodyAtMort.setOccupation(resultSet.getString("occupation"));
            bodyAtMort.setPassport(resultSet.getString("passport"));
            bodyAtMort.setPlaceOfBirth(resultSet.getString("placeOfBirth"));
            bodyAtMort.setRace(resultSet.getString("race"));
            bodyAtMort.setSurnameOfDeceased(resultSet.getString("surnameOfDeceased"));
            bodyAtMort.setBodyReleaseTo(resultSet.getString("bodyReleasedTo"));
            bodyAtMort.setDeathRegisterNumber(resultSet.getString("idDeathRegisterNumber"));
            bodyAtMort.setBodyReleasedType(resultSet.getString("bodyReleaseType"));
            try
            {
                bodyAtMort.setBodyAddress(getBodyAddress());
                BodyAtMortuary mort = getBodyAtMortuary();
                bodyAtMort.setBodyHandedOverToPerNumber(mort.getBodyHandedOverToPerNumber());
                bodyAtMort.setBodyReceivedFromPerNumber(mort.getBodyReceivedFromPerNumber());
                bodyAtMort.setBodyHandOverFromOrganization(mort.getBodyHandOverFromOrganization());
            }
            catch (Exception ex)
            {
                 ;
            }
            finally
            {
                IncidentDb incidentDb = new IncidentDb(new Incident(resultSet.getString("Incident_incidentLogNumber")), dbDetail);
                incidentDb.init();
                incidentDb.read();
                bodyAtMort.setIncident(incidentDb.getIncident());
                body = bodyAtMort;
                statement.close();
                connection.close();
            }
        } 
        catch (SQLException ex) 
        {
            return "fail " + ex.getMessage();
        }
        return "successful";
        
    }
    public String readBodyAddress()
    {
        try
        {
            statement.executeQuery("SELECT * FROM bodyaddress WHERE Body_idDeathRegisterNumber='" + body.getDeathRegisterNumber()+"';");
            ResultSet rSet = statement.getResultSet();
            rSet.next();
            BodyAddress address = new BodyAddress();
            address.setStreet(rSet.getString("street"));
            address.setSuburb(rSet.getString("suburb"));
            address.setCity(rSet.getString("city"));
            address.setPostCode(rSet.getString("postalCode"));
            address.setProvince(rSet.getString("province"));
            address.setRegion(rSet.getString("region"));
            address.setMagisterialDistrict(rSet.getString("magisterialDistrict"));
            address.setBuilding(rSet.getString("building"));
            body.setDeathRegisterNumber(rSet.getString("Body_idDeathRegisterNumber"));
            body.setBodyAddress(address);
        } 
        catch (SQLException ex) 
        {
            return "fail " + ex.getMessage();
        }
        return "successful";
        
    }
    public String readBodyAtMortuary()
    {
        try
        {
            statement.executeQuery("SELECT * FROM atmortuary WHERE Body_idDeathRegisterNumber='" + body.getDeathRegisterNumber()+"';");
            ResultSet rSet = statement.getResultSet();
            rSet.next();
            if (rSet.getString("bodyReceivedFromPerNumber") == null){
                BodyAtMortuary bodyAtMort = (BodyAtMortuary)body;
                bodyAtMort.setBodyHandedOverToPerNumber(rSet.getString("bodyHandedOverToPerNumber"));
                bodyAtMort.setBodyHandOverFromOrganization(rSet.getString("bodyHandOverFromOrganization"));
                bodyAtMort.setDeathRegisterNumber(rSet.getString("Body_idDeathRegisterNumber"));
                body = bodyAtMort;
            }else if(rSet.getString("bodyHandOverFromOrganization") == null){
                BodyAtMortuary bodyAtMort = (BodyAtMortuary)body;
                bodyAtMort.setBodyHandedOverToPerNumber(rSet.getString("bodyHandedOverToPerNumber"));
                bodyAtMort.setBodyReceivedFromPerNumber(rSet.getString("bodyReceivedFromPerNumber"));
                bodyAtMort.setBodyHandOverFromOrganization(rSet.getString("bodyHandOverFromOrganization"));
                bodyAtMort.setDeathRegisterNumber(rSet.getString("Body_idDeathRegisterNumber"));
                body = bodyAtMort;
            }else{
                BodyAtMortuary bodyAtMort = (BodyAtMortuary)body;
                bodyAtMort.setBodyHandedOverToPerNumber(rSet.getString("bodyHandedOverToPerNumber"));
                bodyAtMort.setBodyReceivedFromPerNumber(rSet.getString("bodyReceivedFromPerNumber"));
                bodyAtMort.setBodyHandOverFromOrganization(rSet.getString("bodyHandOverFromOrganization"));
                bodyAtMort.setDeathRegisterNumber(rSet.getString("Body_idDeathRegisterNumber"));
                body = bodyAtMort;
            }
            
        } 
        catch (SQLException ex) 
        {
            return "fail " + ex.getMessage();
        }
        return "successful";
    }
    public BodyAtMortuary getBodyAtMortuary() throws SQLException
    {
        init();
        statement.executeQuery("SELECT * FROM AtMortuary WHERE Body_idDeathRegisterNumber='" + body.getDeathRegisterNumber()+"';");
        ResultSet rSet = statement.getResultSet();
        rSet.next();
        BodyAtMortuary bodyAtMort = (BodyAtMortuary)body;
        bodyAtMort.setBodyHandedOverToPerNumber(rSet.getString("bodyHandedOverToPerNumber"));
        bodyAtMort.setBodyReceivedFromPerNumber(rSet.getString("bodyReceivedFromPerNumber"));
        bodyAtMort.setBodyHandOverFromOrganization(rSet.getString("bodyHandOverFromOrganization"));
        bodyAtMort.setDeathRegisterNumber(rSet.getString("Body_idDeathRegisterNumber"));
        statement.close();
        connection.close();
        return bodyAtMort;
    }
    private BodyAddress getBodyAddress() throws SQLException
    {
        init();
        statement.executeQuery("SELECT * FROM bodyAddress WHERE Body_idDeathRegisterNumber='" + body.getDeathRegisterNumber()+"';");
        ResultSet rSet = statement.getResultSet();
        rSet.next();
        BodyAddress address = new BodyAddress();
        address.setStreet(rSet.getString("street"));
        address.setSuburb(rSet.getString("suburb"));
        address.setCity(rSet.getString("city"));
        address.setPostCode(rSet.getString("postalCode"));
        address.setProvince(rSet.getString("province"));
        address.setRegion(rSet.getString("region"));
        address.setMagisterialDistrict(rSet.getString("magisterialDistrict"));
        address.setBuilding(rSet.getString("building"));
        statement.close();
        connection.close();
        return address;
    }
    public ArrayList<BodyAtMortuary> getBodies() throws SQLException
    {
        ArrayList list = new ArrayList<BodyAtMortuary>();
        try 
        {
            statement.executeQuery("SELECT * FROM Body;");
            ResultSet resultSet = statement.getResultSet();
            while(resultSet.next())
            {
                    BodyAtMortuary bodyAtMort = new BodyAtMortuary();
                    bodyAtMort.setAgeOnDateFound(resultSet.getInt("ageOnDateFound"));
                    bodyAtMort.setAssignedTo(resultSet.getString("assignedTo"));
                    bodyAtMort.setBodyReleased(resultSet.getBoolean("bodyReleased"));
                    bodyAtMort.setBodyStatus(resultSet.getBoolean("bodyStatus"));
                    bodyAtMort.setBodyType(resultSet.getString("bodyType"));
                    bodyAtMort.setCitizen(resultSet.getString("citizen"));
                    bodyAtMort.setDateBodyReceived(resultSet.getString("dateBodyReceived"));
                    bodyAtMort.setDateBodyReleased(resultSet.getString("dateBodyReleased"));
                    bodyAtMort.setDateOfBirth(resultSet.getString("dateOfBirth"));
                    bodyAtMort.setEstimatedAgeMonth(resultSet.getInt("estimatedAgeMonth"));
                    bodyAtMort.setEstimatedAgeYear(resultSet.getInt("estimatedAgeYear"));
                    bodyAtMort.setGender(resultSet.getString("gender"));
                    bodyAtMort.setID(resultSet.getString("ID"));
                    bodyAtMort.setIdentifiedDateTime(resultSet.getString("identifiedDateTime"));
                    bodyAtMort.setMaidenName(resultSet.getString("maidenName"));
                    bodyAtMort.setMaritalStatus(resultSet.getString("maritalStatus"));
                    bodyAtMort.setNameOfDeceased(resultSet.getString("nameOfDeceased"));
                    bodyAtMort.setOccupation(resultSet.getString("occupation"));
                    bodyAtMort.setPassport(resultSet.getString("passport"));
                    bodyAtMort.setPlaceOfBirth(resultSet.getString("placeOfBirth"));
                    bodyAtMort.setRace(resultSet.getString("race"));
                    bodyAtMort.setSurnameOfDeceased(resultSet.getString("surnameOfDeceased"));
                    bodyAtMort.setBodyReleaseTo(resultSet.getString("bodyReleasedTo"));
                    bodyAtMort.setDeathRegisterNumber(resultSet.getString("idDeathRegisterNumber"));
                    bodyAtMort.setBodyReleasedType(resultSet.getString("bodyReleaseType"));
                    body=bodyAtMort;
                    try
                    {
                        bodyAtMort.setBodyAddress(getBodyAddress());
                        BodyAtMortuary mort = getBodyAtMortuary();
                        bodyAtMort.setBodyHandedOverToPerNumber(mort.getBodyHandedOverToPerNumber());
                        bodyAtMort.setBodyReceivedFromPerNumber(mort.getBodyReceivedFromPerNumber());
                        bodyAtMort.setBodyHandOverFromOrganization(mort.getBodyHandOverFromOrganization());
                    }
                    catch (Exception ex)
                    {
                        break;
                    }
                    IncidentDb incidentDb = new IncidentDb(new Incident(resultSet.getString("Incident_incidentLogNumber")), dbDetail);
                    incidentDb.init();
                    incidentDb.read();
                    bodyAtMort.setIncident(incidentDb.getIncident());
                    list.add(bodyAtMort);
             }
             statement.close();
             connection.close();
        } 
        catch (SQLException ex) 
        {
            System.err.println(ex);
            throw new SQLException(ex.getMessage());
        }
        return list;
    }
    @Override
    public String edit()
    {
        try
        {
            statement.executeUpdate("UPDATE body SET "
                    + "gender='" + body.getGender()+ "',"
                    + "race='" +body.getRace() + "',"
                    + "assignedTo='" + body.getAssignedTo() + "',"
                    + "nameOfDeceased='" + body.getNameOfDeceased() + "',"
                    + "surnameOfDeceased='" + body.getSurnameOfDeceased() + "',"
                    + "placeOfBirth='" + body.getPlaceOfBirth() + "',"
                    + "dateOfBirth='" + body.getDateOfBirth() + "',"
                    + "ageOnDateFound='" + body.getAgeOnDateFound() + "',"
                    + "maritalStatus='" + body.getMaritalStatus() + "',"
                    + "occupation='" + body.getOccupation() + "',"
                    + "citizen='" + body.getCitizen() + "',"
                    + "maidenName='" + body.getMaidenName() + "',"
                    + "identifiedDateTime='" + body.getIdentifiedDateTime() + "',"
                    + "estimatedAgeYear=" + body.getEstimatedAgeYear() + "," 
                    + "estimatedAgeMonth=" + body.getEstimatedAgeMonth() + ","
                    + "ID='" + body.getID() + "',"
                    + "passport='" + body.getPassport() + "',"
                    + "bodyStatus=" + body.isBodyStatus() + ","
                    + "dateBodyReceived='" + body.getDateBodyReceived() + "',"
                    + "bodyReleased=" + body.isBodyReleased() + ","
                    + "bodyType='" + body.getBodyType() + "',"
                    + "dateBodyReleased='" + body.getDateBodyReleased() + "',"
                    + "bodyReleasedTo='" + body.getBodyReleasedTo() + "',"
                    + "bodyReleaseType='" + body.getBodyReleasedType() + "'"
                    + " WHERE idDeathRegisterNumber='"+ body.getDeathRegisterNumber() + "';");
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
        return null;
        
    }
}
