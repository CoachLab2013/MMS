package jcse.coachlab2013.mms.reports;

import java.sql.Connection;
import java.sql.ResultSet;

/**
 *
 * @author Mubien Nakhooda Coachlab 2013
 */
public abstract class Template_Report {
    
    protected String destination;
    protected Connection connection;
    
    protected ResultSet reportData;
    
    public Template_Report(String destination, Connection connection)
    {
        this.connection = connection;
        this.destination = destination;
    }
    
    protected abstract void formatData();
    
    protected abstract void createReport();
}