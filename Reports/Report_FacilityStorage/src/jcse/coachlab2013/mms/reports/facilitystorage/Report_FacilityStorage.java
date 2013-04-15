/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package jcse.coachlab2013.mms.reports.facilitystorage;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import jcse.coachlab2013.mms.reports.ReportGenerator;

/**
 *
 * @author Mubien Nakhooda Coachlab 2013
 */
public class Report_FacilityStorage {

    private String source;
    private String destination;
    private ArrayList<Bean_FacilityStorage> beanList;
    private Map parameters;
    
    private Report_FacilityStorage(String source, String destination)
    {
        this.source = source;
        this.destination = destination;
                
        formatData();
    }
    
    private void formatData() {
        
        beanList = new ArrayList<>();
                
        beanList.add(produce(75)); 
                
        parameters = new HashMap();
        parameters.put("ReportTitle", "Facility Storage Status Report"); 
        parameters.put("TotalBins", 200);  
        parameters.put("avgIntake", 1.3);  
        parameters.put("avgOutput", 1);   
        parameters.put("timeTillFull", (200 - 75) / (1.3 - 1));
            
    }
    
    private void createReport() {
        
        ReportGenerator rg = new ReportGenerator(source, parameters, beanList);
        rg.savePDF(destination); 
    }
    
    private Bean_FacilityStorage produce(Integer number)
    {
        Bean_FacilityStorage bean = new Bean_FacilityStorage();
        bean.setBinsUsed(number);
        
        return bean;
    }
    
    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        new Report_FacilityStorage("./build/classes/jcse/coachlab2013/mms/reports/facilitystorage/Report_FacilityStorage.jrxml", "./test_report1.pdf").createReport();
    }
}
