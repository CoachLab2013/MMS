/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package mms.db;

/**
 *
 * @author Team 1 CoachLab 2013 Mortuary Manage Managemet System (Bandile)
 */
public class OrganizationDb extends DatabaseConnector {
    private Organization organization;
    
    public OrganizationDb( Organization org){
        this.organization = org;
    }
    
    public Organization getOrganization(){
        return this.organization;
    }
    
}
