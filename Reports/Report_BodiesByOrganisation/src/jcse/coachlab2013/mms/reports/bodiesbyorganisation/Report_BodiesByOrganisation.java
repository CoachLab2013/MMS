package jcse.coachlab2013.mms.reports.bodiesbyorganisation;

import jcse.coachlab2013.mms.reports.ReportGenerator;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/**
 *
 * @author Mubien Nakhooda Coachlab 2013
 * 
 * Class is used to receive information from the database, format the data and populate a set of dataBean Objects
 * The ReportGenerator class is used to compile the information into a pdf report
 */
public class Report_BodiesByOrganisation {
        
    private String source;
    private String destination;
    private ArrayList<Bean_BodiesByOrganisation> beanList;
    private Map parameters;
    
    private Report_BodiesByOrganisation(String source, String destination)
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
    
    private Bean_BodiesByOrganisation produce(String name, Integer number)
    {
        Bean_BodiesByOrganisation bean = new Bean_BodiesByOrganisation();
        bean.setOrganisationName(name);
        bean.setNumberOfBodies(number);
        
        return bean;
    }
    
    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
                
        new Report_BodiesByOrganisation("./src/jcse/coachlab2013/mms/reports/bodiesbyorganisation/Report_BodiesByOrganisation.jasper", "./test_report1.pdf").createReport();
    }
}
