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
public class InformantPropertyDb extends DatabaseConnector
{
    private InformantProperty property;
    public InformantPropertyDb(DbDetail dbDetail)
    {
        super(dbDetail);
    }
    public InformantPropertyDb(DbDetail dbDetail,InformantProperty property)
    {
        super(dbDetail);
        this.property = property;
    } 
    public InformantProperty getInformantProperty()
    {
        return property;
    }
    public void setInformantProperty(InformantProperty property)
    {
        this.property = property;
    }
    @Override
    public String add()
    {
        try
        {
            statement.executeUpdate("INSERT INTO informantproperty (name,surname,address,propertyDescription,cash,otherGoods,witness1_name,witness1_surname,witness2_name,witness2_surname,Body_idDeathRegisterNumber) VALUES('" 
                    + property.getInformantName() + "','" + property.getInformantSurname() + "','"
                    + property.getAddress() + "','" + property.getPropertyDescription() + "','" 
                    + property.getCash() + "','"
                    + property.getOtherGoods() + "','" + property.getWitnesses()[0].getName() + "','"
                    + property.getWitnesses()[0].getSurname() + "','" + property.getWitnesses()[1].getName() + "','"
                    + property.getWitnesses()[1].getSurname() + "','" + property.getDeathRegisterNumber() + "');");
            statement.close();
        }
        catch(Exception ex)
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
            statement.executeQuery("SELECT * FROM InformantProperty WHERE Body_idDeathRegisterNumber='" + property.getDeathRegisterNumber() + "';");
            ResultSet resultSet = statement.getResultSet();
            resultSet.next();
            property = new InformantProperty();
            property.setInformantName(resultSet.getString("name"));
            property.setInformantSurname(resultSet.getString("surname"));
            property.setAddress(resultSet.getString("address"));
            property.setPropertyDescription(resultSet.getString("propertyDescription"));
            property.setCash(resultSet.getString("cash"));
            property.setOtherGoods(resultSet.getString("otherGoods"));
            Witness[] wit = {new Witness(resultSet.getString("witness1_name"),resultSet.getString("witness1_surname")),new Witness(resultSet.getString("witness2_name"),resultSet.getString("witness2_surname"))};
            property.setWitnesses(wit);
            property.setDeathRegisterNumber(resultSet.getString("Body_idDeathRegisterNumber"));
            statement.close();
        }
        catch(Exception ex)
        {
            return "failed " + ex.getMessage();
        }
        return "successful";
    }
    public ArrayList<InformantProperty> getInformantProperties() throws SQLException
    {
        ArrayList<InformantProperty> list = new ArrayList<InformantProperty>();
        statement.executeQuery("SELECT * FROM InformantProperty;");
        ResultSet resultSet = statement.getResultSet();
        while(resultSet.next())
        {
            property = new InformantProperty();
            property.setInformantName(resultSet.getString("name"));
            property.setInformantSurname(resultSet.getString("surname"));
            property.setAddress(resultSet.getString("address"));
            property.setPropertyDescription(resultSet.getString("propertyDescription"));
            property.setCash(resultSet.getString("cash"));
            property.setOtherGoods(resultSet.getString("otherGoods"));
            Witness[] wit = {new Witness(resultSet.getString("witness1_name"),resultSet.getString("witness1_surname")),new Witness(resultSet.getString("witness2_name"),resultSet.getString("witness2_surname"))};
            property.setWitnesses(wit);
            property.setDeathRegisterNumber(resultSet.getString("Body_idDeathRegisterNumber"));
            list.add(property);
        }
        statement.close();
        return list;
    }
    @Override
    public String edit() 
    {
        try 
        {       
            statement.executeUpdate("UPDATE informantproperty SET name='" + property.getInformantName()
                    + "',surname='" + property.getInformantSurname()
                    + "',address='" + property.getAddress()
                    + "',propertyDescription='" + property.getPropertyDescription()
                    + "',cash='" + property.getCash()
                    + "',otherGoods='" + property.getOtherGoods()
                    + "',witness1_name='" + property.getWitnesses()[0].getName()
                    + "',witness1_surname='" + property.getWitnesses()[0].getSurname()
                    + "',witness2_name='" + property.getWitnesses()[1].getName()
                    + "',witness2_surname='" + property.getWitnesses()[1].getSurname()
                    + "' WHERE Body_idDeathRegisterNumber='" + property.getDeathRegisterNumber() + "';");
            statement.close();
            connection.close();
        } catch (SQLException ex) {
            return "failed " + ex.getMessage();
        }
        return "successful";
    }

    @Override
    public String delete() 
    {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
