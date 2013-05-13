/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package testapp;
import java.sql.SQLException;

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
                    + kin.getName()+ "','"  
                    + kin.getSurname() + "','"
                    + kin.getRelationWithDeceased() + "','"
                    + kin.getContactNumber() + "','"
                    + kin.getAddress()+ "','"
                    + kin.getWorkAddress()+ "','"   
                    + kin.getID()+ "','"
                    + kin.getBody_idDeathRegisterNumber()+ "')");
            
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
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public String delete() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
