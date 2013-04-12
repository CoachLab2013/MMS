package jcse.coachlab2013.mms.reports;

import java.util.Collection;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JasperRunManager;
import net.sf.jasperreports.engine.data.JRBeanCollectionDataSource;

/**
 *
 * 
 * 
 * Class is used to compile reports from a .jasper file to a .pdf document
 */
public class ReportGenerator {
       
    private String sourceJasper;
    private Map parameters;
    private Collection data;    
    
    /**
     * Default Constructor
     * 
     * @param jasperSource path to the .jasper file used to compile report
     * @param reportParameters Map<Key, Value>  for any additional parameters passed to the report
     * @param reportData Collection of beanDataObjects used to populate report
     */
    public ReportGenerator(String jasperSource, Map reportParameters, Collection reportData)
    {           
        sourceJasper = jasperSource;
        parameters = reportParameters;
        data = reportData;
    }  
        
    /**
     * Calls the JasperRunManager to compile and save a report in pdf format
     * @param fileDestination Path to save the generated pdf document
     */
    public void savePDF (String fileDestination) {
        
        try {            
            JasperRunManager.runReportToPdfFile(sourceJasper, fileDestination, parameters, new JRBeanCollectionDataSource(data));  
            
        } catch (JRException ex) {            
            Logger.getLogger(ReportGenerator.class.getName()).log(Level.SEVERE, null, ex);            
        } catch (Exception ex) {            
            Logger.getLogger(ReportGenerator.class.getName()).log(Level.SEVERE, null, ex);            
        } 
    }
}
