/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package database;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Cypril 
 */
public class ForensicSampleDb extends DatabaseConnector {

    ForensicSample forensicsamp;

    public ForensicSampleDb(ForensicSample forensicsamp, DbDetail dbDetail) {
        super(dbDetail);
        this.forensicsamp = forensicsamp;

    }

    public ForensicSampleDb(DbDetail dbDetail) {
        super(dbDetail);
        forensicsamp = null;

    }

    public ForensicSample getforensicSample() {
        return forensicsamp;
    }

    public void setforensicSample(ForensicSample forensicsamp) {
        this.forensicsamp = forensicsamp;
    }

    @Override
    public String add() {
        try {
            statement.executeUpdate("INSERT INTO forensicsample (sealNumber,deathRegisterNumber, reason,sealType,brokenSealNumber,typeOfAnalysis,institution,specialInstructions,received ,labNumber ,dateSent ,dateReceived   )" + " VALUES"
                    + "('"
                    + forensicsamp.getSealNumber() + "','"
                    + forensicsamp.getDeathRegisterNumber() + "','"
                    + forensicsamp.getReason() + "','"
                    + forensicsamp.getSealType() + "','"
                    + forensicsamp.getBrokenSealNumber() + "','"
                    + forensicsamp.getTypeOfAnalysis() + "','"
                    + forensicsamp.getInstitution() + "','"
                    + forensicsamp.getSpeacialInstructions() + "',"
                    + forensicsamp.getReceived() + ",'"
                    + forensicsamp.getLabNumber() + "','"
                    + forensicsamp.getDateSent() + "','"
                    + forensicsamp.getDateReceived() + "')");

            statement.close();
            connection.close();
        } catch (SQLException ex) {
            return "failed " + ex.getMessage();
        }
        return "successful";
    }

    public String read(String sealNumber) {
        try {
            statement.executeQuery("SELECT * FROM forensicsample WHERE `sealNumber` = '" + sealNumber + "';");
            ResultSet resultSet = statement.getResultSet();
            resultSet.next();
            this.forensicsamp = new ForensicSample(
                resultSet.getString("sealNumber"),
                resultSet.getString("deathRegisterNumber"),
                resultSet.getString("reason"), 
                resultSet.getString("sealType"),
                resultSet.getString("brokenSealNumber"),
                resultSet.getString("typeOfAnalysis"),
                resultSet.getString("institution"),
                resultSet.getString("specialInstructions"),
                resultSet.getBoolean("received"),
                resultSet.getString("labNumber"),
                resultSet.getString("dateSent"),
                resultSet.getString("dateReceived")
                );
        } catch (SQLException ex) {
           return "failed " + ex.getMessage();
        }
        return "successful";
    }
    

    public ArrayList<ForensicSample> SampleList() throws SQLException {
        ArrayList<ForensicSample> list = new ArrayList();
        try {
            statement.executeQuery("SELECT sealNumber,deathRegisterNumber, reason,sealType,brokenSealNumber,typeOfAnalysis,institution,specialInstructions,received ,labNumber ,dateSent ,dateReceived FROM forensicsample;");

            // Kin kinn = null;
            ResultSet resultSet = statement.getResultSet();
            while (resultSet.next()) {
                forensicsamp = new ForensicSample();
                forensicsamp.setSealNumber(resultSet.getString("sealNumber"));
                forensicsamp.setDeathRegisterNumber(resultSet.getString("deathRegisterNumber"));

                forensicsamp.setReason(resultSet.getString("reason"));
                forensicsamp.setSealType(resultSet.getString("sealType"));

                forensicsamp.setBrokenSealNumber(resultSet.getString("brokenSealNumber"));
                forensicsamp.setTypeOfAnalysis(resultSet.getString("typeOfAnalysis"));

                forensicsamp.setInstitution(resultSet.getString("institution"));
                forensicsamp.setSpeacialInstructions(resultSet.getString("typeOfAnalysis"));

                forensicsamp.setReceived(resultSet.getBoolean("received"));
                forensicsamp.setLabNumber(resultSet.getString("labNumber"));

                forensicsamp.setDateSent(resultSet.getString("dateSent"));
                forensicsamp.setDateReceived(resultSet.getString("dateReceived"));

                list.add(forensicsamp);
            }

            statement.close();
            connection.close();
        } catch (SQLException ex) {
            throw new SQLException(ex.getMessage());
        }
        return list;
    } 
 
    public ArrayList<ForensicSample> SampleList(String column, String where) throws SQLException {
        ArrayList<ForensicSample> list = new ArrayList();
        try {
            statement.executeQuery("SELECT sealNumber,deathRegisterNumber, reason,sealType,brokenSealNumber,typeOfAnalysis,institution,specialInstructions,received ,labNumber ,dateSent ,dateReceived FROM forensicsample WHERE `" + column + "` = '" + where + "';");

            // Kin kinn = null;
            ResultSet resultSet = statement.getResultSet();
            while (resultSet.next()) {
                forensicsamp = new ForensicSample();
                forensicsamp.setSealNumber(resultSet.getString("sealNumber"));
                forensicsamp.setDeathRegisterNumber(resultSet.getString("deathRegisterNumber"));

                forensicsamp.setReason(resultSet.getString("reason"));
                forensicsamp.setSealType(resultSet.getString("sealType"));

                forensicsamp.setBrokenSealNumber(resultSet.getString("brokenSealNumber"));
                forensicsamp.setTypeOfAnalysis(resultSet.getString("typeOfAnalysis"));

                forensicsamp.setInstitution(resultSet.getString("institution"));
                forensicsamp.setSpeacialInstructions(resultSet.getString("typeOfAnalysis"));

                forensicsamp.setReceived(resultSet.getBoolean("received"));
                forensicsamp.setLabNumber(resultSet.getString("labNumber"));

                forensicsamp.setDateSent(resultSet.getString("dateSent"));
                forensicsamp.setDateReceived(resultSet.getString("dateReceived"));

                list.add(forensicsamp);
            }

            statement.close();
            connection.close();
        } catch (SQLException ex) {
            throw new SQLException(ex.getMessage());
        }
        return list;
    } 
    @Override 
    public String edit() { 
         try {                       
             //sealNumber,deathRegisterNumber, reason,sealType,brokenSealNumber,typeOfAnalysis,institution,specialInstructions,received ,labNumber ,dateSent ,dateReceived
            statement.executeUpdate("UPDATE forensicsample set reason ='"+forensicsamp.getReason()
                    + "',sealType='" + forensicsamp.getSealType()
                    + "',brokenSealNumber='" + forensicsamp.getBrokenSealNumber()
                    + "',typeOfAnalysis='" + forensicsamp.getTypeOfAnalysis()
                    + "',institution='" + forensicsamp.getInstitution()    
                    + "',specialInstructions='" + forensicsamp.getSpeacialInstructions()
                    + "',received=" + forensicsamp.getReceived() 
                    + ",labNumber='" + forensicsamp.getLabNumber()
                    + "',dateSent='" + forensicsamp.getDateSent()
                    + "',dateReceived='" + forensicsamp.getDateReceived()
                    + "'where sealNumber='" +forensicsamp.getSealNumber() + "';");
            
            
            /*
             *      + forensicsamp.getSpeacialInstructions() + "',"
                    + forensicsamp.getReceived() + ",'"
             * 
             * 
             */
            statement.close();
            connection.close(); 
        } catch (SQLException ex) { 
            return "failed " + ex.getMessage();
        }
        return "successful";
    }

    @Override
    public String delete() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public String read() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
 