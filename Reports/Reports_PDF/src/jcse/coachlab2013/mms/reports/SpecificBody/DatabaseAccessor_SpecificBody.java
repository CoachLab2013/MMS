package jcse.coachlab2013.mms.reports.SpecificBody;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import jcse.coachlab2013.mms.reports.Template_DatabaseAccessor;

/**
 * @author      Mubien Nackoda <coachlab@jcse.org.za>
 * @since       2012-05-20          (the version of the package this class was first added to)
 */

/**
 * connects to the database through the parameter connection
 * @param connection 
 */             

public class DatabaseAccessor_SpecificBody extends Template_DatabaseAccessor {

    public DatabaseAccessor_SpecificBody(Connection connection){
        super(connection);
    }
/**
 * creates an sql statement, executes it and returns results as a results set. 
 * @return tempSet
 */
    
    @Override
    public ResultSet read() {        
        ResultSet tempSet = null;
        
        try {
            
            
            preparedStatement = connection.prepareStatement("select dim_incident.incidentNumber_BK as incidentNumber,\n" +
"dim_incident.SAPSReference as SAPSReferenceNumber , \n" +
"dim_incident.dateInserted as dateOfIncident,\n" +
"dim_incident.specialCircumstance as specialCircumstances,\n" +
"dim_body.deathRegisterNumber_BK as deathRegisterNumber,\n" +
"dim_body.name as name,\n" +
"dim_gender.genderDescription as gender,\n" +
"dim_age.actualAge as age,\n" +
"dim_body.releasedTo as releasedTo,\n" +
"dim_kin.kinName as nextOfKin, \n" +
"dim_kin.kinContact as contact,\n" +
"dim_organisation.organisationType as typeOfOrganisation, \n" +
"dim_organisation.organisationName as nameOfOrganization,\n" +
"dim_location.locationName as locationFound,\n" +
"dim_mannerofdeath.deathType as mannerOfDeath,\n" +
"dim_postmortem.postMortemDescription as postMortemResults,\n" +
"dim_date.dateStamp as dateReceived,\n" +
"dim_date.dateStamp as dateReleased\n" +
"from `reporting database`.fact_body \n" +
"left join `reporting database`.dim_incident\n" +
"on dim_incident.incident_SK = fact_body.FK_Incident_SK\n" +
"left join `reporting database`.dim_body \n" +
"on fact_body.FK_Body_SK = dim_body.body_SK \n" +
"left join `reporting database`.dim_age\n" +
"on fact_body.FK_Age_SK=dim_age.age_SK\n" +
"left join `reporting database`.dim_gender\n" +
"on fact_body.FK_Gender_SK = dim_gender.gender_SK\n" +
"left join `reporting database`.dim_kin\n" +
"on fact_body.FK_Kin_SK = dim_kin.kin_SK\n" +
"left join `reporting database`.dim_organisation\n" +
"on fact_body.FK_Organisation_SK = dim_organisation.organisation_SK\n" +
"left join `reporting database`.dim_location\n" +
"on fact_body.FK_Location_SK=dim_location.location_SK\n" +
"left join `reporting database`.dim_mannerofdeath\n" +
"on fact_body.FK_MannerOfDeath_SK = dim_mannerofdeath.mannerOfDeath_SK\n" +
"left join `reporting database`.dim_postmortem\n" +
"on fact_body.FK_PostMortem_SK = dim_postmortem.postMortem_SK\n" +
"left join `reporting database`.dim_date\n" +
"on fact_body.FK_DateReceived_SK = date_SK and fact_body.FK_DateReleased_SK = date_SK\n" +
"\n" +
"\n" +
"");            
            tempSet = preparedStatement.executeQuery();
            
        } catch (SQLException ex) {
            Logger.getLogger(DatabaseAccessor_SpecificBody.class.getName()).log(Level.SEVERE, null, ex);
        } finally {            
            return tempSet;            
        }
    }     
}

