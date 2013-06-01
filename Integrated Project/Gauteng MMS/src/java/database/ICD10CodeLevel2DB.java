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
public class ICD10CodeLevel2DB extends DatabaseConnector {
    
    
     ICD10CodeLevel2 idc10CodeLevel2;
    
      public ICD10CodeLevel2DB(ICD10CodeLevel2 idc10CodeLevel2 , DbDetail dbDetail) {
        super(dbDetail);
        this.idc10CodeLevel2 = idc10CodeLevel2;

    }
      
       public ICD10CodeLevel2DB(DbDetail dbDetail) {
        super(dbDetail);
        idc10CodeLevel2 = null;

    }
          
    @Override
    public String add() {
          try {
            statement.executeUpdate("INSERT INTO icdlevel2 (diaId,description,ICDLevel1_chapter)" + " VALUES"
                    
                    + "('"
                    + idc10CodeLevel2.getDiag1()+"','"
                    + idc10CodeLevel2.getDescription()+"',"
                    + idc10CodeLevel2.getLevel1chapter()+")");  
   
            statement.close();
            connection.close();
        } catch (SQLException ex) {
            return "failed " + ex.getMessage(); 
        }
        return "successful";
         
    } 
      
    
     public ArrayList<ICD10CodeLevel2> ICD10CodesLeve21List() throws SQLException {
        ArrayList<ICD10CodeLevel2> list = new ArrayList();
        try {
            statement.executeQuery("SELECT * FROM icdlevel2 WHERE ICDLevel1_chapter="+idc10CodeLevel2.getLevel1chapter());
            ResultSet resultSet = statement.getResultSet();
             
            while (resultSet.next()) {   
                ICD10CodeLevel2 icd = new ICD10CodeLevel2(); 
                
                icd.setDiag1(resultSet.getString("diaId"));
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
