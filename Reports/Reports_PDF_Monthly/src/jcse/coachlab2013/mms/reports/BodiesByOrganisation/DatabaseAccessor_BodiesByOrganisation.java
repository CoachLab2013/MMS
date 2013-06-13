package jcse.coachlab2013.mms.reports.BodiesByOrganisation;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import jcse.coachlab2013.mms.reports.Template_DatabaseAccessor;

/**
 * @author      Mubien Nakhooda <coachlab@jcse.org.za>
 * @since       2012-05-20          (the version of the package this class was first added to)
 */

/**
 * The code allows access to the connection to database                           (1)
 *
 * It takes in connection as a parameter and pass it to a super class    [2].
 * <p>
 * @param  connection connects to the database          (3)
 *
 */
public class DatabaseAccessor_BodiesByOrganisation extends Template_DatabaseAccessor{
                
    public DatabaseAccessor_BodiesByOrganisation(Connection connection){
        super(connection);
    }
/**
 * The method called ResultSet                            (1)
 *
 * creates an sql statement, executes it and returns results as a results set.    [2].
 * <p>
 * @param read                                                                  (3)
 *
 */
    
    @Override
    public ResultSet read() {        
        ResultSet tempSet = null;
        
        try {
            
            preparedStatement = connection.prepareStatement("Select `dim_organisation`.`organisationType` \n" +
"AS `organisationName`, SUM(`countBody`) AS `numberOfBodies`\n" +
"FROM `reporting database`.`fact_body`\n" +
"LEFT JOIN `reporting database`.`dim_organisation` \n" +
"ON `dim_organisation`.`organisation_SK` = `reporting database`.`fact_body`.`FK_Organisation_SK`\n" +
"WHERE EXTRACT(MONTH FROM TIMESTAMP (fact_body.dateInserted))=MONTH(NOW())\n" +
"GROUP BY `dim_organisation`.`organisationType`;");
            tempSet = preparedStatement.executeQuery();
            
        } catch (SQLException ex) {
            Logger.getLogger(DatabaseAccessor_BodiesByOrganisation.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            
            return tempSet;
            
        }
    }     
}
