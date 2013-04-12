/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package jcse.coachlab2013.mms.reports.unidentifiedBodiesStatistics;
import jcse.coachlab2013.mms.reports.ReportGenerator;

import java.util.*;


/**
 *
 * @author Amazing
 */
public class Report_UnidentifiedBodiesStatistics {
    private String source;
    private String destination;
    private ArrayList<Bean_UnidentifiedBodiesStatistics> beanList;
    private Map parameters;

    public Report_UnidentifiedBodiesStatistics(String source, String destination) {
        this.source = source;
        this.destination = destination;
        formatData();
    }
    
   private void formatData(){
       beanList.add(produce("a",1));
       beanList.add(produce("b",5));
       beanList.add(produce("c",3));
       beanList.add(produce("d",4));
       beanList.add(produce("e",5));
       
   
   }

    private Bean_UnidentifiedBodiesStatistics produce(String a, int i) {
        Bean_UnidentifiedBodiesStatistics bean = new Bean_UnidentifiedBodiesStatistics();
        bean.setMannerofDeath(source);
        return bean;
        
  
        
    }
    private void createReport() {
        
        ReportGenerator rg = new ReportGenerator(source, parameters, beanList);
        rg.savePDF(destination); 
    }
    
    public static void main(String args []){
        new Report_UnidentifiedBodiesStatistics("./src/jcse/coachlab2013/mms/reports/UnidentifiedBodiesStatistics/Report_UnidentifiedBodiesStatistics.jasper", "./test_report1.pdf").createReport();
    }
    
}
