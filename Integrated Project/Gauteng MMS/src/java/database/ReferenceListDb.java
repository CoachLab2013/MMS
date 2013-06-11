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
 * @author Chester
 */
public class ReferenceListDb extends DatabaseConnector {

    private String data;
    private String data2;
    private String newData;

    public String getNewData() {
        return newData;
    }

    public void setNewData(String newData) {
        this.newData = newData;
    }
    private String tableName, field1, field2, field3;

    public String getField3() {
        return field3;
    }

    public void setField3(String field3) {
        this.field3 = field3;
    }
    private int id;

    public ReferenceListDb(DbDetail dbDetail) {
        super(dbDetail);
        data = "";
        data2="";
        tableName = "";
        field1 = "";
        field2 = "";
        field3 = "";
        id = 0;
    }

    public ReferenceListDb(DbDetail dbDetail, String inTableName) {
        super(dbDetail);
        data = "";
        data2="";
        tableName = inTableName;
        field1 = "";
        field2 = "";
        field3 = "";
        id = 0;
    }

    public ReferenceListDb(String tableName, String field1, String field2, String data, DbDetail dbDetail) {
        super(dbDetail);
        this.data = data;
        this.tableName = tableName;
        this.field1 = field1;
        this.field2 = field2;
    }

    public ReferenceListDb(String tableName, String field1, String field2, String field3, String data,String data2, DbDetail dbDetail) {
        super(dbDetail);
        this.data = data;
        this.data2= data2;
        this.tableName = tableName;
        this.field1 = field1;
        this.field2 = field2;
        this.field3 = field3;

    }

    /**
     *
     * @return id of a specific reference data
     */
    public int getId() {
        return id;
    }

    /**
     *
     * @param id
     */
    public void setId(int id) {
        this.id = id;
    }

    public String getTableName() {
        return tableName;
    }

    /**
     *
     * @return column 1 of reference table
     */
    public String getField1() {
        return field1;
    }

    /**
     *
     * @return column 2 of reference table
     */
    public String getField2() {
        return field2;
    }

    /**
     *
     * @param field1 this is primary key a given reference list
     */
    public void setField1(String field1) {
        this.field1 = field1;
    }

    /**
     *
     * @param field2 this a given column for the reference data e.g. type
     */
    public void setField2(String field2) {
        this.field2 = field2;
    }

    /**
     *
     * @return data from list
     */
    public String getData() {
        return data;
    }

    /**
     *
     * @param data
     */
    public void setData(String data) {
        this.data = data;
    }

    /**
     *
     * @return
     */
    @Override
    public String add() {
        try {
            statement.executeUpdate("insert into " + tableName + " (" + field2 + ") values"
                    + "('"
                    + data + "')");
            statement.close();
            connection.close();
        } catch (SQLException ex) {
            return "failed " + ex.getMessage();
        } catch (Exception ex) {
            return "failed " + ex.getMessage();
        }
        return "successful";
    }
      public String addRegion() {
        try {
            statement.executeUpdate("INSERT INTO region (type,province) values" + "('" + data  + "','" +  data2 + "');");
            statement.close();
            connection.close();
        } catch (SQLException ex) {
            return "failed " + ex.getMessage();
        } catch (Exception ex) {
            return "failed " + ex.getMessage();
        }
        return "successful";
    }

    /**
     *
     * @return
     */
    @Override
    public String read() {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    /**
     *
     * @return
     */
    @Override
    public String edit() {
        try {
            statement.executeUpdate("update " + tableName + " set " + field2 + "='" + newData + "' where " + field2 + "='" + data + "';");
            statement.close();
            connection.close();
        } catch (SQLException ex) {
            return "fail " + ex.getMessage();
        }
        return "successful";
    }

     public String editReg() {
        try {
            statement.executeUpdate("update " + tableName + " set " + field2 + "='" + newData + "' where " + field2 + "='" + data + "' && "+ field3 +"='"+ data2 +"' ;");
            statement.close();
            connection.close();
        } catch (SQLException ex) {
            return "fail " + ex.getMessage();
        }
        return "successful";
    }
    /**
     *
     * @return list of strings of the reference list
     */
    public ArrayList<String> referenceList() throws SQLException {
        ArrayList<String> reflist = new ArrayList<String>();
        try {
            statement.executeQuery("select " + field2 + " from " + tableName + ";");
            ResultSet resultSet = statement.getResultSet();
            while (resultSet.next()) {
                reflist.add(resultSet.getString(field2));
            }
           
            statement.close();
            connection.close();
        } catch (SQLException ex) {
            throw new SQLException(ex.getMessage());
        }
        return reflist;
    }
     
       public ArrayList<String> referenceListReg(String province) throws SQLException {
        ArrayList<String> reflist = new ArrayList<String>();
        try {
            statement.executeQuery("select " + field2 + " from " + tableName + " where province = '"+ province+ "';");
            ResultSet resultSet = statement.getResultSet();
           
            while (resultSet.next()) {
                reflist.add(resultSet.getString(field2));
              
            }
             
            statement.close();
            connection.close();
        } catch (SQLException ex) {
            throw new SQLException(ex.getMessage());
        }
        return reflist;
    }

    /**
     *
     * @return
     */
    @Override
    public String delete() {
        try {
            statement.executeUpdate("delete from " + tableName + " where " + field2 + "='" + data + "';");

            statement.close();
            connection.close();
        } catch (SQLException ex) {
            return "fail " + ex.getMessage();
        }
        return "successful";
    }
    
       public String deleteReg() {
        try {
            statement.executeUpdate("delete from " + tableName + " where " + field2 + "='" + data + "' && "+ field3 +"='"+ data2 +"' ;");

            statement.close();
            connection.close();
        } catch (SQLException ex) {
            return "fail " + ex.getMessage();
        }
        return "successful";
    }
}
