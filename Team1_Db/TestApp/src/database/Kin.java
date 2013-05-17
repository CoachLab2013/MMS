/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package database;

/**
 *
 * @author Cypril
 */
public class Kin {

    private String passport;
    private String name;
    private String surname;
    private String relationWithDeceased;
    private String contactNumber;
    private String address;
    private String workAddress;
    private String Id;
    private String body_idDeathRegisterNumber; 

    public Kin() {
        passport = "";
        name = "";
        surname = "";
        relationWithDeceased = "";
        contactNumber = "";
        address = "";
        workAddress = "";
        Id = "";
        body_idDeathRegisterNumber = "";

    }       //passport , name , surname,relationWithDeceased,contactNumber,address,workAddress,ID,Body_IdDeathRegisterNumber
    public Kin(String passport, String name, String surname, String relationWithDeceased, String contactNumber, String address, String workAddress, String Id, String body_idDeathRegisterNumber) {
        this.passport = passport;
        this.name = name;
        this.surname = surname;
        this.relationWithDeceased = relationWithDeceased;
        this.contactNumber = contactNumber;
        this.address = address;
        this.workAddress = workAddress;
        this.Id = Id;
        this.body_idDeathRegisterNumber = body_idDeathRegisterNumber;

    }

    public String getPassport() {
        return passport;
    }

    public String getName() {
        return name;
    }

    public String getSurname() {
        return surname;
    }

    public String getRelationWithDeceased() {
        return relationWithDeceased;
    }

    public String getContactNumber() {
        return contactNumber;
    }

    public String getAddress() {
        return address;
    }

    public String getWorkAddress() {
        return workAddress;
    }

    public String getID() {
        return Id;
    }
    //body_idDeathRegisterNumber

    public String getBody_idDeathRegisterNumber() {
        return body_idDeathRegisterNumber;
    }

    // setters 
    public void setPassport(String password) {
       this. passport = password;
    }

    public void setName(String name) {
      this.name = name;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public void setRelationWithDeceased(String relationWithDeceased) {
        this.relationWithDeceased = relationWithDeceased;
    }

    public void setContactNumber(String contactNumber) {
       this.contactNumber=contactNumber;
    }
 
    public void setAddress(String address) {
        this.address = address;
    } 

    public void setWorkAddress(String workAddress) {
      this.workAddress = workAddress;
    }

    public void setID(String Id) {
       this.Id = Id;
    }
    //body_idDeathRegisterNumber

    public void setBody_idDeathRegisterNumber(String body_idDeathRegisterNumber) {
       this.body_idDeathRegisterNumber = body_idDeathRegisterNumber;
    }
}
