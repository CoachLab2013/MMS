package jcse.coachlab2013.mms.reports.audittrail;

import jcse.coachlab2013.mms.reports.ReportGenerator;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/**
 *
 * @author Mubien Nakhooda Coachlab 2013
 */
public class Report_AuditTrail {
        
    private String source;
    private String destination;
    private ArrayList<Bean_MonthlyStatistics> beanList;
    private Map parameters;
    
    private Report_AuditTrail(String source, String destination)
    {
        this.source = source;
        this.destination = destination;
                
        formatData();
    }
    
    private void formatData() {
        
        beanList = new ArrayList<>();
                
        beanList.add(produce("1st",1,2,3));
        beanList.add(produce("2nd",2,3,4));
        beanList.add(produce("3rd",3,2,1));
        beanList.add(produce("4th",4,3,5));
        beanList.add(produce("5th",5,4,6));   
                
        parameters = new HashMap();
        parameters.put("ReportTitle", "System Audit Statistics"); 
            
    }
    
    private void createReport() {
        
        ReportGenerator rg = new ReportGenerator(source, parameters, beanList);
        rg.savePDF(destination); 
    }
    
    private Bean_MonthlyStatistics produce(String date, Integer errors, Integer warnings, Integer events)
    {
        Bean_MonthlyStatistics bean = new Bean_MonthlyStatistics();
        bean.setDate(date);
        bean.setNumberOfErrors(errors);
        bean.setNumberOfWarnings(warnings);        
        bean.setNumberOfEvents(events);
        
        return bean;
    }
    
    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        new Report_AuditTrail("./src/jcse/coachlab2013/mms/reports/audittrail/Report_AuditTrail.jasper", "./test_report1.pdf").createReport();
    }
}
