/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package jcse.coachlab.mms.reports;

import java.util.Collection;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JasperRunManager;
import net.sf.jasperreports.engine.data.JRBeanCollectionDataSource;

/**
 *
 * @author Amazing
 */
public class ReportGenerator {
    private String sourceJasper;
    private Map parameters;
    private Collection data;

    public ReportGenerator(String sourceJasper, Map parameters, Collection data) {
        this.sourceJasper = sourceJasper;
        this.parameters = parameters;
        this.data = data;
    }
    
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
    
    
    
    

