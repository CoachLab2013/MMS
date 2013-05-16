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
 * @author Cypril
 */
public class KinDB extends DatabaseConnector {

    private Kin kin;

    public KinDB(Kin kin, DbDetail dbDetail) {
        super(dbDetail);
        this.kin = kin;

    }

    public KinDB(DbDetail dbDetail) {
        super(dbDetail);
        kin = null;

    }

    public Kin getkin() { 
        return kin;
    }

    public void setkin(Kin kin) {
        this.kin = kin;
    }

    //
    @Override
    public String add() {

        //String passport, String name, String surname, String relationWithDeceased, String contactNumber, String address, String workAddress, String Id, String body_idDeathRegisterNumber

        try {                       //passport , name , surname,relationWithDeceased,contactNumber,address,workAddress,ID,Body_IdDeathRegisterNumber
            statement.executeUpdate("INSERT INTO kin (passport,name, surname,relationWithDeceased,contactNumber,address,workAddress,Id,body_idDeathRegisterNumber)" + " VALUES"
                    + "('"
                    + kin.getPassport() + "','"
                    + kin.getName() + "','"
                    + kin.getSurname() + "','"
                    + kin.getRelationWithDeceased() + "','"
                    + kin.getContactNumber() + "','"
                    + kin.getAddress() + "','"
                    + kin.getWorkAddress() + "','"
                    + kin.getID() + "','"
                    + kin.getBody_idDeathRegisterNumber() + "')");

            statement.close();
            connection.close();
        } catch (SQLException ex) {
            return "failed " + ex.getMessage();
        }
        return "successful";

    }

    @Override
    public String read() {

        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public String edit() { 

        try {                       //passport , name , surname,relationWithDeceased,contactNumber,address,workAddress,ID,Body_IdDeathRegisterNumber
            statement.executeUpdate("UPDATE kin set passport='" + kin.getPassport()
                    + "',name='" + kin.getName()
                    + "',surname='" + kin.getSurname() 
                    + "',relationWithDeceased='" + kin.getRelationWithDeceased()
                    + "',contactNumber='" + kin.getContactNumber()
                    + "',address='" + kin.getAddress()
                    + "',workAddress='" + kin.getWorkAddress()
                    + "where Id=" + kin.getID() + "';");
            statement.close();
            connection.close();
        } catch (SQLException ex) {
            return "failed " + ex.getMessage();
        }
        return "successful";

    }

    public ArrayList<Kin> KinList() throws SQLException {
        ArrayList<Kin> list = new ArrayList();
        try {
            statement.executeQuery("SELECT passport,name, surname,relationWithDeceased,contactNumber,address,workAddress,Id,body_idDeathRegisterNumber From Kin;");
            //   Kin kinn = null;
            ResultSet resultSet = statement.getResultSet();
            while (resultSet.next()) { 
                kin = new Kin(); 
                kin.setPassport(resultSet.getString("passport"));
                kin.setSurname(resultSet.getString("name"));
                kin.setSurname(resultSet.getString("surname"));
                kin.setRelationWithDeceased(resultSet.getString("relationWithDeceased"));
                kin.setContactNumber(resultSet.getString("contactNumber"));
                kin.setAddress(resultSet.getString("address"));
                kin.setWorkAddress(resultSet.getString("workAddress"));
               // kin.setID(resultSet.getString("Id"));
                kin.setBody_idDeathRegisterNumber(resultSet.getString("body_idDeathRegisterNumber"));
                list.add(kin);
            }

            statement.close();
            connection.close();
        } catch (SQLException ex) {
            throw new SQLException(ex.getMessage());
        }
        return list;

    }

    @Override
    public String delete() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
