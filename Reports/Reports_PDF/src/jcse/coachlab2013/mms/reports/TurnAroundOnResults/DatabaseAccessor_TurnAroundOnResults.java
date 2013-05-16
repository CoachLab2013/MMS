package jcse.coachlab2013.mms.reports.turnaroundonresults;

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
public class DatabaseAccessor_TurnAroundOnResults extends Template_DatabaseAccessor{
                
    public DatabaseAccessor_TurnAroundOnResults(Connection connection){
        super(connection);
    }
    
    @Override
    public ResultSet read() {        
        ResultSet tempSet = null;
        
        try {
            
            preparedStatement = connection.prepareStatement("select dim_sample.analysisType as analysisType, \n" +
"fact_sample.durationOutstanding as averageTurnAroundTime\n" +
"from\n" +
"`reporting database`.dim_sample left join\n" +
"`reporting database`.fact_sample on \n" +
"FK_Sample_SK=sample_SK");            
            tempSet = preparedStatement.executeQuery();
            
        } catch (SQLException ex) {
            Logger.getLogger(DatabaseAccessor_TurnAroundOnResults.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            
            return tempSet;
            
        }
    }     
}
