/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package jcse.coachlab2013.mms.reports.mannerofdeathstatistics;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import jcse.coachlab2013.mms.reports.ReportGenerator;

/**
 *
 * @author Cya
 */
public class Report_MannerOfDeathStatistics {

    
   private String source;
    private String destination;
    private ArrayList<Bean_MannerOfDeathStatistics> beanList;
    private Map parameters;
    
    private Report_MannerOfDeathStatistics(String source, String destination)
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
        parameters.put("ReportTitle", "Manner of Death Statistics "); 
            
    }
    
    private void createReport() {
      
        ReportGenerator rg = new ReportGenerator(source, parameters, beanList);
        rg.savePDF(destination); 
    }
    
    private Bean_MannerOfDeathStatistics produce(String name, Integer number)
    {
        Bean_MannerOfDeathStatistics bean = new Bean_MannerOfDeathStatistics();
        bean.setTypeOfDeath(name);
        bean.setNumberOfDeaths(number);
        
        return bean;
    }
    
    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
          new Report_MannerOfDeathStatistics("./build/classes/jcse/coachlab2013/mms/reports/mannerofdeathstatistics/Report_MannerOfDeathStatistics.jrxml", "./test_report1.pdf").createReport();
    }
}
