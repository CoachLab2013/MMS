/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package jcse.coachlab.mms.reports.unidentifiedBodiesStatistics;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import jcse.coachlab.mms.reports.ReportGenerator;


public class Report_unidentifiedBodiesStatistics {

    
   private String source;
    private String destination;
    private ArrayList<Bean_UnidentifiedBodiesStatistics> beanList;
    private Map parameters;
    
    private Report_unidentifiedBodiesStatistics(String source, String destination)
    {
        this.source = source;
        this.destination = destination;
                
        formatData();
    }
    
    private void formatData() {
        
        beanList = new ArrayList<>();
                
                 
        beanList.add(produce("Suicide",5));
        beanList.add(produce("Travel",20));
        beanList.add(produce("Drowning",5));
        beanList.add(produce("Stabbing",12));
        beanList.add(produce("Shooting",10));
         
                
        parameters = new HashMap();
        parameters.put("ReportTitle", "Unidentified Bodies Statistical Report "); 
            
    }
    
    private void createReport() {
      
        ReportGenerator rg = new ReportGenerator(source, parameters, beanList);
        rg.savePDF(destination); 
    }
    
    private Bean_UnidentifiedBodiesStatistics produce(String name, double number)
    {
       Bean_UnidentifiedBodiesStatistics bean = new Bean_UnidentifiedBodiesStatistics();
        bean.setDeathManner(name);
        bean.setNumPeople(number);
        
        return bean;
    }
    
    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
          new Report_unidentifiedBodiesStatistics("C:\\Users\\Amazing\\Desktop\\MMS\\Reports\\Report_UnidentifiedBodiesStatistics\\src\\jcse\\coachlab\\mms\\reports\\unidentifiedBodiesStatistics\\Report_unidentifiedBodiesStatistics.jasper", "./test_report1.pdf").createReport();
    }
}
