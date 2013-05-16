package jcse.coachlab2013.mms.reports.specificbody;

import java.sql.Connection;
import jcse.coachlab2013.mms.reports.ReportGenerator;
import jcse.coachlab2013.mms.reports.Template_Report;

/**
 *
 * @author Mubien Nakhooda Coachlab 2013
 */
public final class Report_SpecificBody extends Template_Report {
               
    public Report_SpecificBody(String destination, Connection connection)
    {        
            super(destination,connection);
            
            formatData();            
    }
    
    @Override
    protected void formatData() {
        
        source = "./build/classes/jcse/coachlab2013/mms/reports/facilitystorage/Report_SpecificBody.jrxml";
        
        parameters.put("ReportTitle", ""); 
        parameters.put("Incident Number:", "");
	parameters.put("Death Register Number:", "");
	parameters.put("Name Of Organization:",""); 
	parameters.put("SAPS Reference Number:","");
	parameters.put("Type Of Organisation:",""); 
	parameters.put("Date Recieved:","");
	parameters.put("Time Recieved:",""); 
	parameters.put("Body Released:",""); 
	parameters.put("Special Circumstances:",""); 
	parameters.put("Name:",""); 
	parameters.put("Next of Kin:",""); 
	parameters.put("Age:",""); 
	parameters.put("Gender:",""); 
	parameters.put("Race:",""); 
	parameters.put("Contact:",""); 
	parameters.put("Location Found:",""); 
	parameters.put("Manner of Death:",""); 
	parameters.put("Date of Incident:",""); 
	parameters.put("Time of Incident:",""); 
	parameters.put("Post Mortem Results:",""); 
	parameters.put("Autopsy Completed:", ""); 
        
        reportData = new DatabaseAccessor_SpecificBody(connection).read();
    }
    
    @Override
    public void createReport() {
        
        ReportGenerator rg = new ReportGenerator(source, parameters, reportData);
        rg.savePDF(destination); 
    }  
}


        
