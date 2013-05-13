/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package testapp;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author Chester
 */
public class PropertyDb extends DatabaseConnector
{
    private Property property;
    public PropertyDb(DbDetail dbDetail)
    {
        super(dbDetail);
    }
    public PropertyDb(DbDetail dbDetail,Property property)
    {
        super(dbDetail);
        this.property = property;
    }
    @Override
    public String add() 
    {
        try
        {
            statement.executeUpdate("INSERT INTO Property (sealNumber,description,date,type,sealType,takenBy,witness1_name,witness1_surname,witness2_name,witness2_surname,SAPS_name,SAPS_surname,SAPS_taken,Body_idDeathRegisterNumber,released) VALUES('" 
            + property.getSealNumber() + "','" + property.getDescription() + "','"
            + property.getDate() + "','" + property.getType()+ "','" 
            + property.getSealType() + "','" + property.getTakenBy() + "','" 
            + property.getWitness(0).getName() + "','" + property.getWitness(0).getSurname()+ "','" 
            + property.getWitness(1).getName() + "','" + property.getWitness(1).getSurname() + "','" 
            + property.getSAPS_name() + "','" + property.getSAPS_surname() + "'," 
            + property.isTakenBySAPS() + ",'" + property.getDeathRegisterNumber()  + "'," 
            + property.isReleased() + ")");
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
    public String read() 
    {
        try 
        {
            statement.executeQuery("SELECT * FROM property WHERE sealNumber='" + property.getSealNumber() + "';");
            ResultSet resultSet = statement.getResultSet();
            resultSet.next();
            property.setDescription(resultSet.getString("description"));
            property.setDate(resultSet.getString("date"));
            property.setType(resultSet.getString("type"));
            property.setSealType(resultSet.getString("sealType"));
            property.setTakenBy(resultSet.getString("takenBy"));
            Witness[] w = {new Witness(resultSet.getString("witness1_name"),resultSet.getString("witness1_surname")),new Witness(resultSet.getString("witness2_name"),resultSet.getString("witness2_surname"))};
            property.setWitnesses(w);
            property.setSAPS_name(resultSet.getString("SAPS_name"));
            property.setSAPS_surname(resultSet.getString("SAPS_surname"));
            property.setTakenBySAPS(resultSet.getBoolean("SAPS_taken"));
            property.setDeathRegisterNumber(resultSet.getString("Body_idDeathRegisterNumber"));
            property.setReleased(resultSet.getBoolean("released"));
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
    public ArrayList<Property> properties() throws SQLException
    {
        ArrayList<Property> list = new ArrayList<Property>();
        try 
        {
            statement.executeQuery("SELECT * FROM property;");
            ResultSet resultSet = statement.getResultSet();
            while(resultSet.next())
            {
                Property prop = new Property();
                prop.setSealNumber(resultSet.getString("sealNumber"));
                prop.setDescription(resultSet.getString("description"));
                prop.setDate(resultSet.getString("date"));
                prop.setType(resultSet.getString("type"));
                prop.setSealType(resultSet.getString("sealType"));
                prop.setTakenBy(resultSet.getString("takenBy"));
                Witness[] w = {new Witness(resultSet.getString("witness1_name"),resultSet.getString("witness1_surname")),new Witness(resultSet.getString("witness2_name"),resultSet.getString("witness2_surname"))};
                prop.setWitnesses(w);
                prop.setSAPS_name(resultSet.getString("SAPS_name"));
                prop.setSAPS_surname(resultSet.getString("SAPS_surname"));
                prop.setTakenBySAPS(resultSet.getBoolean("SAPS_taken"));
                prop.setDeathRegisterNumber(resultSet.getString("Body_idDeathRegisterNumber"));
                prop.setReleased(resultSet.getBoolean("released"));
                list.add(prop);
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
        throw new UnsupportedOperationException("Not supported yet.");
    }

    @Override
    public String delete() 
    {
        throw new UnsupportedOperationException("Not supported yet.");
    }
    public Property getProperty()
    {
        return property;
    }
    public void setProperty(Property property)
    {
        this.property = property;
    }
}
