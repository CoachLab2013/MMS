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
public class ICD10CodeLevel3DB extends DatabaseConnector {

    ICD10CodeLevel3 idc10CodeLevel3;

    public ICD10CodeLevel3DB(ICD10CodeLevel3 idc10CodeLevel3, DbDetail dbDetail) {
        super(dbDetail);
        this.idc10CodeLevel3 = idc10CodeLevel3;

    }

    public ICD10CodeLevel3DB(DbDetail dbDetail) {
        super(dbDetail);
        idc10CodeLevel3 = null;

    }

    public ICD10CodeLevel3 getICD10Codes() {
        return idc10CodeLevel3; // ICD10Codes
    }

    public void setICD10Codes(ICD10CodeLevel3 idc10CodeLevel3) {
        this.idc10CodeLevel3 = idc10CodeLevel3;
    }

    @Override
    public String add() { 
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public ArrayList<ICD10CodeLevel3> ICD10CodesLeve31List() throws SQLException {
        ArrayList<ICD10CodeLevel3> list = new ArrayList();
        try {
            statement.executeQuery("SELECT * FROM icdlevel3 WHERE diag_1Id='" + idc10CodeLevel3.getDiag1() + "'");
            ResultSet resultSet = statement.getResultSet();

            while (resultSet.next()) {
                ICD10CodeLevel3 icd = new ICD10CodeLevel3(); 
 
                icd.setDiag2(resultSet.getString("diag2_Id"));
                icd.setDescription(resultSet.getString("description")); 

                list.add(icd);
            }
<<<<<<< HEAD
            statement.close(); 
=======
            statement.close();
>>>>>>> origin/master
            connection.close();
        } catch (SQLException ex) {
            throw new SQLException(ex.getMessage());
        }
        return list;

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
