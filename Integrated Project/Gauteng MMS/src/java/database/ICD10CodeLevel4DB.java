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
public class ICD10CodeLevel4DB extends DatabaseConnector {
    
    ICD10CodeLevel4 idc10CodeLevel4;
    
      public ICD10CodeLevel4DB(ICD10CodeLevel4 idc10CodeLevel4, DbDetail dbDetail) {
        super(dbDetail);
        this.idc10CodeLevel4 = idc10CodeLevel4;

    }
      
       public ICD10CodeLevel4DB(DbDetail dbDetail) {
        super(dbDetail);
        idc10CodeLevel4 = null;

    }
       
       public ICD10CodeLevel4 getICD10Codes() {
        return idc10CodeLevel4; 
    }
        
        public void setICD10Codes(ICD10CodeLevel4 idc10CodeLevel4) {
        this.idc10CodeLevel4 = idc10CodeLevel4;
    }
        

        public ArrayList<ICD10CodeLevel4> ICD10CodesLeve31List() throws SQLException {
        ArrayList<ICD10CodeLevel4> list = new ArrayList();
        try {
            statement.executeQuery("SELECT * FROM icdlevel4 WHERE dia3Id='" +idc10CodeLevel4.getDiag2() + "'");
            ResultSet resultSet = statement.getResultSet();

            while (resultSet.next()) { 
                ICD10CodeLevel4 icd = new ICD10CodeLevel4(); 

                icd.setDiag3(resultSet.getString("dia3Id"));  
                icd.setDescription(resultSet.getString("description")); 

                list.add(icd);
            }
            statement.close();
            connection.close();
        } catch (SQLException ex) {
            throw new SQLException(ex.getMessage());
        }
        return list;

    }


    @Override
    public String add() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
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
