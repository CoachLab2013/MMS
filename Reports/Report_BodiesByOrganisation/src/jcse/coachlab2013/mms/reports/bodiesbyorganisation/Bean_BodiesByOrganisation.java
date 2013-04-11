package jcse.coachlab2013.mms.reports.bodiesbyorganisation;

/**
 *
 * @author Mubien Nakhooda Coachlab 2013
 * 
 * Class is used to describe an individual row of information in the report
 */
public class Bean_BodiesByOrganisation {
    private String organisationName;
    private Integer numberOfBodies;
    
    public String getOrganisationName() { return organisationName; }
    public Integer getNumberOfBodies() { return numberOfBodies; }
    
    public void setOrganisationName(String organisationName) { this.organisationName = organisationName; }
    public void setNumberOfBodies(Integer numberOfBodies) { this.numberOfBodies = numberOfBodies; }
}
