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
public class ICD10CodeLevel1DB extends DatabaseConnector {
    
    
    ICD10CodeLevel1 idc10Code;
    
      public ICD10CodeLevel1DB(ICD10CodeLevel1 idc10Code, DbDetail dbDetail) {
        super(dbDetail);
        this.idc10Code = idc10Code;

    }
      
       public ICD10CodeLevel1DB(DbDetail dbDetail) {
        super(dbDetail);
        idc10Code = null;

    }
       
       public ICD10CodeLevel1 getICD10Codes() {
        return idc10Code; // ICD10Codes
    }

    public void setICD10Codes(ICD10CodeLevel1 idc10Code) {
        this.idc10Code = idc10Code;
    }


    @Override
    public String add() {
        
         try {
            statement.executeUpdate("INSERT INTO icdlevel1 (description)" + " VALUES"
                    + "('"
                   
                    + idc10Code.getDescription()+ "')");

            statement.close();
            connection.close();
        } catch (SQLException ex) {
            return "failed " + ex.getMessage();
        }
        return "successful";
        
    }

    public ArrayList<ICD10CodeLevel1> ICD10CodesLevel1List() throws SQLException {
        ArrayList<ICD10CodeLevel1> list = new ArrayList();
        try {
            statement.executeQuery("SELECT * FROM icdlevel1;");

            // Kin kinn = null; 
            ResultSet resultSet = statement.getResultSet();
             
            while (resultSet.next()) {   
                ICD10CodeLevel1 icd = new ICD10CodeLevel1();
                icd.setChapter(resultSet.getInt("chapter")); 
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
