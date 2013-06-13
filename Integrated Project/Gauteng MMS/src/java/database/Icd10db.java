/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package database;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Chester
 */
public class ICD10DB extends DatabaseConnector
{
    public ICD10DB(DbDetail dbDetail)
    {
        super(dbDetail);
        
    }
    @Override
    public String add() 
    {
        return null;
    }

    @Override
    public String read()
    {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public String edit()
    {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public String delete() 
    {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    public ArrayList<String> filterICD10Code2 (String ICDLevel1) {
        ArrayList<String> list = new ArrayList<String>();
        
        try {
            this.init();
            statement.executeQuery("SELECT\n" +
                "`icdlevel2`.`diag1_Id`,\n" +
                "`icdlevel2`.`description`\n" +
                "FROM `mydb`.`icdlevel2`\n" +
                "WHERE `icdlevel2`.`ICDLevel1_chapter` = '" + ICDLevel1 + "';");
            
            ResultSet resultset = statement.getResultSet();
            while (resultset.next()) {
                list.add(resultset.getString("diag1_Id") + " " + resultset.getString("description"));
            }
            
        } catch (SQLException ex) {
            Logger.getLogger(ICD10DB.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return list;
    }
    
    public ArrayList<String> filterICD10Code3 (String ICDLevel2) {
        ArrayList<String> list = new ArrayList<String>();
        
        try {
            this.init();
            statement.executeQuery("SELECT\n" +
                "`icdlevel3`.`diag2_Id`,\n" +
                "`icdlevel3`.`description`\n" +
                "FROM `mydb`.`icdlevel3`\n" +
                "WHERE `icdlevel3`.`diag1_Id` = '" + ICDLevel2 + "';");
            
            ResultSet resultset = statement.getResultSet();
            while (resultset.next()) {
                list.add(resultset.getString("diag2_Id") + " " + resultset.getString("description"));
            }
            
        } catch (SQLException ex) {
            Logger.getLogger(ICD10DB.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return list;
    }
    
    public ArrayList<String> filterICD10Code4 (String ICDLevel3) {
        ArrayList<String> list = new ArrayList<String>();
        
        try {
            this.init();
            statement.executeQuery("SELECT\n" +
            "`icdlevel4`.`diag3_Id`,\n" +
            "`icdlevel4`.`description`\n" +
            "FROM `mydb`.`icdlevel4`\n" +
            "WHERE `icdlevel4`.`ICDLevel3_dia2Id` = '" + ICDLevel3 + "';");
            
            ResultSet resultset = statement.getResultSet();
            while (resultset.next()) {
                list.add(resultset.getString("diag3_Id") + " " + resultset.getString("description"));
            }
            
        } catch (SQLException ex) {
            Logger.getLogger(ICD10DB.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return list;
    }
}
