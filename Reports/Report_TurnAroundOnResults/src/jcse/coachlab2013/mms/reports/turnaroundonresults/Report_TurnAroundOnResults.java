/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package jcse.coachlab2013.mms.reports.turnaroundonresults;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import jcse.coachlab2013.mms.reports.ReportGenerator;

/**
 *
 * @author Mubien Nakhooda Coachlab 2013
 */
public class Report_TurnAroundOnResults {

    private String source;
    private String destination;
    private ArrayList<Bean_TurnAroundOnResults> beanList;
    private Map parameters;
    
    private Report_TurnAroundOnResults(String source, String destination)
    {
        this.source = source;
        this.destination = destination;
                
        formatData();
    }
    
    private void formatData() {
        
        beanList = new ArrayList<>();
                
        beanList.add(produce("A",1));
        beanList.add(produce("B",2));
        beanList.add(produce("C",3));
        beanList.add(produce("D",4));
        beanList.add(produce("E",5));   
                
        parameters = new HashMap();
        parameters.put("ReportTitle", "Bodies By Organisation"); 
            
    }
    
    private void createReport() {
        
        ReportGenerator rg = new ReportGenerator(source, parameters, beanList);
        rg.savePDF(destination); 
    }
    
    private Bean_TurnAroundOnResults produce(String name, Integer number)
    {
        Bean_TurnAroundOnResults bean = new Bean_TurnAroundOnResults();
        bean.setAnalysisType(name);
        bean.setAverageTurnAroundTime(number);
        
        return bean;
    }
    
    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        new Report_TurnAroundOnResults("./build/classes/jcse/coachlab2013/mms/reports/turnaroundonresults/Report_TurnAroundOnResults.jrxml", "./test_report1.pdf").createReport();
    }
}
