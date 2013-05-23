/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package jcse.coachlab2013.mms.reports.MannerOfDeath;

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

public class DatabaseAccessor_MannerOfDeath extends Template_DatabaseAccessor{
    
/**
 * connects to the database through the parameter connection
 * @param connection 
 */                
    public DatabaseAccessor_MannerOfDeath(Connection connection){
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
            
            preparedStatement = connection.prepareStatement("SELECT \n" +
                "	`countBody` AS `numberOfDeaths`, \n" +
                "	`etl_Age`.`ageBand` AS `bodyAge`, \n" +
                "	`etl_Gender`.`genderDescription` AS `gender`\n" +
                "		FROM `reporting database`.`fact_body` AS `reporting_Body`\n" +
                "			LEFT JOIN `reporting database`.`dim_gender` AS `etl_Gender` ON (`etl_Gender`.`gender_SK` = `reporting_Body`.`FK_Gender_SK`)\n" +
                "			LEFT JOIN `reporting database`.`dim_age` AS `etl_Age` ON (`etl_Age`.`age_SK` = `reporting_Body`.`FK_Age_SK`)\n" +
                "			LEFT JOIN `reporting database`.`dim_mannerofdeath` AS `etl_MannerOfDeath` ON (`etl_MannerOfDeath`.`mannerofdeath_SK` = `reporting_Body`.`FK_MannerOfDeath_SK`);");            
            tempSet = preparedStatement.executeQuery();
            
        } catch (SQLException ex) {
            Logger.getLogger(DatabaseAccessor_MannerOfDeath.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            
            return tempSet;
            
        }
    }     
}
