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
 * @author Bandile
 */
public class MemberDb extends DatabaseConnector {
    Member member;

    public MemberDb(DbDetail dbDetail) {
        super(dbDetail);
    }

    public MemberDb(Member member, DbDetail dbDetail) {
        super(dbDetail);
        this.member = member;
    }
    
    //GETTER AND SETTER METHODS
    public Member getMember() {
        return member;
    }

    public void setMember(Member member) {
        this.member = member;
    }

    //DATABASE METHODS
    @Override
    public String add() {
        try 
        {
            statement.executeUpdate("INSERT INTO member (name,surname,rank,personnelNumber,organization,contactNumber,AtScene_Body_idDeathRegisterNumber, memberType) VALUES('" 
                    + member.getName() + "','" 
                    + member.getSurname()+"','" +member.getRank() +"','" +member.getPersonnelNumber() + "','"
                    + member.getOrganization() + "','" + member.getContactNumber() + "','" + member.getDeathRegisterNumber() + "','" + member.getMemberType() + "');");
            statement.close();
            connection.close(); 
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
    
    public ArrayList<Member> BodySpecificMemberList(String inDeathRegisterNumber) throws SQLException{
        ArrayList<Member> list = new ArrayList<Member>();
        try 
        {
            statement.executeQuery("SELECT * FROM member WHERE AtScene_Body_idDeathRegisterNumber = '" + inDeathRegisterNumber + "';");
            ResultSet resultSet = statement.getResultSet();
            while(resultSet.next())
            {
                list.add(new Member(resultSet.getInt("idMember"),resultSet.getString("name"), resultSet.getString("surname"), resultSet.getString("rank"),resultSet.getString("personnelNumber"),resultSet.getString("organization"), resultSet.getString("contactNumber"), resultSet.getString("AtScene_Body_idDeathRegisterNumber"), resultSet.getString("memberType")));
            }
            statement.close();
            connection.close();
        } 
        catch (SQLException ex) 
        {
            throw new SQLException(ex.getMessage());
        }
        return list;
    }
    
     public  ArrayList<Member> fullMembersAtSceneList() throws SQLException
    {
        ArrayList<Member> list = new ArrayList<Member>();
        try 
        {
            statement.executeQuery("SELECT * FROM member;");
            ResultSet resultSet = statement.getResultSet();
            while(resultSet.next())
            {
                list.add(new Member(resultSet.getString("name"), resultSet.getString("surname"), resultSet.getString("rank"),resultSet.getString("personnelNumber"),resultSet.getString("organization"), resultSet.getString("contactNumber"), resultSet.getString("AtScene_Body_idDeathRegisterNumber"), resultSet.getString("memberType")));
            }
            statement.close();
            connection.close();
        } 
        catch (SQLException ex) 
        {
            throw new SQLException(ex.getMessage());
        }
        return list;
    }

    public String edit_by_ID(){
        try
        {
            statement.executeUpdate("UPDATE member SET "
                    + "name='" + member.getName() + "',"
                    + "surname='" + member.getSurname() + "',"
                    + "rank='" + member.getRank() + "',"
                    + "personnelNumber='" + member.getPersonnelNumber() + "',"
                    + "organization='" + member.getOrganization() + "',"
                    + "contactNumber='" + member.getContactNumber() + "',"
                    + "memberType='" + member.getMemberType() + "'"
                    +" WHERE idMember="+ member.getIdMember()+";");
            statement.close();
            connection.close();
        } 
        catch (SQLException ex) 
        {
            return "failed " + ex.getMessage();
        }
        catch (Exception ex)
        {
            return "error" + ex.getMessage();
        }
        return "successful";
    }
    @Override
    public String edit() {
        try
        {
            statement.executeUpdate("UPDATE member SET "
                    + "name='" + member.getName() + "',"
                    + "surname='" + member.getSurname() + "',"
                    + "rank='" + member.getRank() + "',"
                    + "personnelNumber='" + member.getPersonnelNumber() + "',"
                    + "organization='" + member.getOrganization() + "',"
                    + "contactNumber='" + member.getContactNumber() + "',"
                    + "memberType='" + member.getMemberType() + "'"
                    +" WHERE AtScene_Body_idDeathRegisterNumber='"+ member.getDeathRegisterNumber()+"' AND contactNumber='" + member.getContactNumber() + "';");
            statement.close();
            connection.close();
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
