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
    DbDetail dbDetail;
    BodyAtMortuary bodyAtMortuary;

    public BodyAtMortuaryDb(DbDetail dbDetail) {
        super(dbDetail);
        this.dbDetail = dbDetail;
    }

    public BodyAtMortuaryDb(BodyAtMortuary bodyAtMortary, DbDetail dbDetail) {
        super(dbDetail);
        this.bodyAtMortuary = bodyAtMortary;
        this.dbDetail = dbDetail;
    }
    

    @Override
    public String add() {
        try
        {
        //converting to a bodyAtMortuary object
            if(bodyAtMortuary.getBodyReceivedFromPerNumber() == null){
                statement.executeUpdate("INSERT INTO atmortuary (bodyHandedOverToPerNumber,Body_idDeathRegisterNumber,bodyHandOverFromOrganization) VALUES('" 
                    + bodyAtMortuary.getBodyHandedOverToPerNumber() + ",'"
                    + bodyAtMortuary.getDeathRegisterNumber() + "','" + bodyAtMortuary.getBodyHandOverFromOrganization() + "');");
                statement.close();
                connection.close(); 
            }else if(bodyAtMortuary.getBodyHandOverFromOrganization() == null){
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
        try
        {
            BodyDb bodyDb = new BodyDb(dbDetail, bodyAtMortuary);
            bodyDb.edit();
            if(bodyAtMortuary.getBodyReceivedFromPerNumber() == null){
                statement.executeUpdate("UPDATE atMortuary SET "
                  +"bodyHandedOverToPerNumber=" + bodyAtMortuary.getBodyHandedOverToPerNumber() + ","
                  +"bodyHandOverFromOrganization='" + bodyAtMortuary.getBodyHandOverFromOrganization() + "'"
                  +" WHERE Body_idDeathRegisterNumber='"+ bodyAtMortuary.getDeathRegisterNumber() + "';");
                statement.close();
                connection.close();
            }else if(bodyAtMortuary.getBodyHandOverFromOrganization() == null){
                statement.executeUpdate("UPDATE atMortuary SET "
                  +"bodyReceivedFromPerNumber='" + bodyAtMortuary.getBodyReceivedFromPerNumber() + "',"
                  +"bodyHandedOverToPerNumber=" + bodyAtMortuary.getBodyHandedOverToPerNumber() + ","
                  +" WHERE Body_idDeathRegisterNumber='"+ bodyAtMortuary.getDeathRegisterNumber() + "';");
                statement.close();
                connection.close();
            }else{
                statement.executeUpdate("UPDATE atMortuary SET "
                  +"bodyReceivedFromPerNumber='" + bodyAtMortuary.getBodyReceivedFromPerNumber() + "',"
                  +"bodyHandedOverToPerNumber=" + bodyAtMortuary.getBodyHandedOverToPerNumber() + ","
                  +"bodyHandOverFromOrganization='" + bodyAtMortuary.getBodyHandOverFromOrganization() + "'"
                  +" WHERE Body_idDeathRegisterNumber='"+ bodyAtMortuary.getDeathRegisterNumber() + "';");
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
    public String delete() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
