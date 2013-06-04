package jcse.coachlab2013.mms.reports;

import java.sql.Connection;
import java.sql.ResultSet;

/**
 * @author      Mubien Nakhooda <coachlab@jcse.org.za>
 * @since       2012-05-20          (the version of the package this class was first added to)
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