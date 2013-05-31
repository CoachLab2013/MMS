/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package database;

import java.sql.SQLException;

/**
 *
 * @author Bandile
 */
public class BodyAtMortuaryDb extends DatabaseConnector {
    BodyAtMortuary bodyAtMortuary;

    public BodyAtMortuaryDb(DbDetail dbDetail) {
        super(dbDetail);
    }

    public BodyAtMortuaryDb(BodyAtMortuary bodyAtMortary, DbDetail dbDetail) {
        super(dbDetail);
        this.bodyAtMortuary = bodyAtMortary;
    }
    

    @Override
    public String add() {
        try 
        {   
            if(bodyAtMortuary.getBodyReceivedFromPerNumber().isEmpty()!=true){
                statement.executeUpdate("INSERT INTO atmortuary (bodyHandedOverToPerNumber,Body_idDeathRegisterNumber,bodyHandOverFromOrganization) VALUES('" 
                    + bodyAtMortuary.getBodyHandedOverToPerNumber() + ",'"
                    + bodyAtMortuary.getDeathRegisterNumber() + "','" + bodyAtMortuary.getBodyHandOverFromOrganization() + "');");
                statement.close();
                connection.close(); 
            }else if(bodyAtMortuary.getBodyHandOverFromOrganization().isEmpty()!=true){
                statement.executeUpdate("INSERT INTO atmortuary (bodyReceivedFromPerNumber,bodyHandedOverToPerNumber,Body_idDeathRegisterNumber) VALUES('" 
                    + bodyAtMortuary.getBodyReceivedFromPerNumber() + "','" 
                    + bodyAtMortuary.getBodyHandedOverToPerNumber() + ",'"
                    + bodyAtMortuary.getDeathRegisterNumber() + "');");
                statement.close();
                connection.close(); 
            }else{
                statement.executeUpdate("INSERT INTO atmortuary (bodyReceivedFromPerNumber,bodyHandedOverToPerNumber,Body_idDeathRegisterNumber,bodyHandOverFromOrganization) VALUES('" 
                    + bodyAtMortuary.getBodyReceivedFromPerNumber() + "','" 
                    + bodyAtMortuary.getBodyHandedOverToPerNumber() + ",'"
                    + bodyAtMortuary.getDeathRegisterNumber() + "','" + bodyAtMortuary.getBodyHandOverFromOrganization() + "');");
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
        return "successful"; //To change body of generated methods, choose Tools | Templates.
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
