<<<<<<< HEAD
package jcse.coachlab2013.mms.reports;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/**
 * @author      Mubien Nackoda <coachlab@jcse.org.za>
 * @since       2012-05-20          (the version of the package this class was first added to)
 */
public abstract class Template_Report {
    
    protected InputStream source;
    protected ArrayList<InputStream> sourceArray;
    
    protected String destination;
    protected Connection connection;
    
    protected ResultSet reportData;
    protected ArrayList<ResultSet> reportDataArray;
    
    protected Map parameters = new HashMap() {};
    protected ArrayList<Map> parameterArray;
    
    public Template_Report(String destination, Connection connection)
    {
        this.connection = connection;        
        this.destination = destination;
    }
    
    protected abstract void formatData();
    
    protected abstract void createReport();
=======
package jcse.coachlab2013.mms.reports;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/**
 *
 * @author Mubien Nakhooda Coachlab 2013
 */
public abstract class Template_Report {
    
    protected InputStream source;
    protected ArrayList<InputStream> sourceArray;
    
    protected String destination;
    protected Connection connection;
    
    protected ResultSet reportData;
    protected ArrayList<ResultSet> reportDataArray;
    
    protected Map parameters = new HashMap() {};
    protected ArrayList<Map> parameterArray;
    
    public Template_Report(String destination, Connection connection)
    {
        this.connection = connection;        
        this.destination = destination;
    }
    
    protected abstract void formatData();
    
    protected abstract void createReport();
>>>>>>> origin/HEAD
}