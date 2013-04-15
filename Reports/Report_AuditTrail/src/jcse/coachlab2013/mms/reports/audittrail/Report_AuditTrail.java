package jcse.coachlab2013.mms.reports.audittrail;

import jcse.coachlab2013.mms.reports.ReportGenerator;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

/**
 *
 * @author Mubien Nakhooda Coachlab 2013
 */
public class Report_AuditTrail {
        
    private ArrayList<String> source;
    private String destination;
    
    private ArrayList<Bean_MonthlyStatistics> beanList1;
    private ArrayList<Bean_EmployeeStatistics> beanList2;
    private ArrayList<Bean_LocationStatistics> beanList3;
    
    private Map parameters;
    
    public Report_AuditTrail(ArrayList<String> source, String destination)
    {        
            this.source = source;
            this.destination = destination;
            
            formatData();            
    }
    
    private void formatData() {
        
        beanList1 = new ArrayList<>();
        beanList2 = new ArrayList<>();
        beanList3 = new ArrayList<>();
                
        beanList1.add(produce("1st",1,2,3));
        beanList1.add(produce("2nd",2,3,4));
        beanList1.add(produce("3rd",3,2,1));
        beanList1.add(produce("4th",4,3,5));
        beanList1.add(produce("5th",5,4,6));   
          
        beanList2.add(produce("Tom",3));
        beanList2.add(produce("Dick",4));
        beanList2.add(produce("Harry",5));
        
        beanList3.add(produce("UI",3,1));
        beanList3.add(produce("Database",4,2));
        beanList3.add(produce("Reports",5,3));
        
        parameters = new HashMap();
        parameters.put("ReportTitle", "System Audit Statistics"); 
    }
    
    private void createReport() {
        
        ArrayList<Map> tempParameters = new ArrayList<>();
        tempParameters.add(parameters);
        tempParameters.add(parameters);
        tempParameters.add(parameters);
        
        ArrayList<Collection> tempData = new ArrayList<>();
        tempData.add(beanList1);
        tempData.add(beanList2);
        tempData.add(beanList3);
        
        ReportGenerator rg = new ReportGenerator(source, tempParameters, tempData);
        rg.savePDF(destination); 
    }
    
    private Bean_LocationStatistics produce (String locationName, Integer numberOfErrors, Integer numberOfWarnings) {        
        Bean_LocationStatistics bean = new Bean_LocationStatistics();
        bean.setLocationName(locationName);
        bean.setNumberOfErrors(numberOfErrors);        
        bean.setNumberOfWarnings(numberOfWarnings);
        
        return bean;
    }
        
    private Bean_EmployeeStatistics produce (String employeeName, Integer numberOfErrorsAndWarnings) {        
        Bean_EmployeeStatistics bean = new Bean_EmployeeStatistics();
        bean.setEmployeeName(employeeName);
        bean.setNumberOfErrorsAndWarnings(numberOfErrorsAndWarnings);
        
        return bean;
    }
    
    private Bean_MonthlyStatistics produce(String date, Integer errors, Integer warnings, Integer events) {
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
        
        ArrayList<String> tempSource = new ArrayList<>();
        tempSource.add("./build/classes/jcse/coachlab2013/mms/reports/audittrail/Report_MonthlyStatistics.jrxml");
        tempSource.add("./build/classes/jcse/coachlab2013/mms/reports/audittrail/Report_EmployeeStatistics.jrxml");
        tempSource.add("./build/classes/jcse/coachlab2013/mms/reports/audittrail/Report_LocationStatistics.jrxml");
        
         new Report_AuditTrail(tempSource, "./test_report1.pdf").createReport();
    }    
}
