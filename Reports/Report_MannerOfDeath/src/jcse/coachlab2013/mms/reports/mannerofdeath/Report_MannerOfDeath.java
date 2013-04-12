/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package jcse.coachlab2013.mms.reports.mannerofdeath;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import jcse.coachlab2013.mms.reports.ReportGenerator;

/**
 *
 * @author Cya
 */
public class Report_MannerOfDeath {
    
     private String source;
    private String destination;
    private ArrayList<Bean_MannerOfDeath> beanList;
    private Map parameters;
    
    private Report_MannerOfDeath(String source, String destination)
    {
        this.source = source;
        this.destination = destination;
                
        formatData();
    }
    
    private void formatData() {
        
        beanList = new ArrayList<>();
                
        beanList.add(produce("0 < 15",10));
        beanList.add(produce("15 > 30",50));
        beanList.add(produce("30 > 45",40));
        beanList.add(produce("45 > 60",22));
         
                
        parameters = new HashMap();
        parameters.put("ReportTitle", "Shooting Report"); 
            
    }
    
    private void createReport() {
      
        ReportGenerator rg = new ReportGenerator(source, parameters, beanList);
        rg.savePDF(destination); 
    }
    
    private Bean_MannerOfDeath produce(String name, Integer number)
    {
        Bean_MannerOfDeath bean = new Bean_MannerOfDeath();
        bean.setBodyAge(name);
        bean.setNumberOfDeaths(number);
        
        return bean;
    }
    

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        new Report_MannerOfDeath("./src/jcse/coachlab2013/mms/reports/mannerofdeath/Report_MannerOfDeath.jasper", "./test_report1.pdf").createReport();
    }
}
