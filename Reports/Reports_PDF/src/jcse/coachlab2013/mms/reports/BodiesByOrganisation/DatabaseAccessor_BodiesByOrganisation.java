package jcse.coachlab2013.mms.reports.BodiesByOrganisation;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import jcse.coachlab2013.mms.reports.Template_DatabaseAccessor;

/**
 *
 * @author Mubien Nakhooda Coachlab 2013
 */
public class DatabaseAccessor_BodiesByOrganisation extends Template_DatabaseAccessor{
                
    public DatabaseAccessor_BodiesByOrganisation(Connection connection){
        super(connection);
    }
    
    @Override
    public ResultSet read() {        
        ResultSet tempSet = null;
        
        try {
            
            preparedStatement = connection.prepareStatement("Select `dim_organisation`.`organisationType`  AS `organisationName`, SUM(`countBody`) AS `numberOfBodies`\n" +
                "FROM `reporting database`.`fact_body`\n" +
                "LEFT JOIN `reporting database`.`dim_organisation` ON `dim_organisation`.`organisation_SK` = `reporting database`.`fact_body`.`FK_Organisation_SK`\n" +
                "GROUP BY `dim_organisation`.`organisationType`;");
            tempSet = preparedStatement.executeQuery();
            
        } catch (SQLException ex) {
            Logger.getLogger(DatabaseAccessor_BodiesByOrganisation.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            
            return tempSet;
            
        }
    }     
}
