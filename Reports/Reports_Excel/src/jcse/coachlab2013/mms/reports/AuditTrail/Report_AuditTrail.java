/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package jcse.coachlab2013.mms.reports.AuditTrail;

import java.sql.Connection;
import java.util.ArrayList;
import jcse.coachlab2013.mms.reports.ExcelGenerator;
import jcse.coachlab2013.mms.reports.Template_Report;

/**
 *
 * @author Mubien Nakhooda Coachlab 2013
 */
public final class Report_AuditTrail extends Template_Report {
    
    public Report_AuditTrail(String destination, Connection connection)
    {
        super(destination, connection);
        
        formatData();
    }
    
    @Override
    protected void formatData() {
        
        reportData = new DatabaseAccessor_AuditTrail(connection).read();                            
    }
    
    @Override
    public void createReport() {
        
        ArrayList<String> headings = new ArrayList<>();
        headings.add("a");
        headings.add("b");
        headings.add("c");
        headings.add("d");
        headings.add("e");
        headings.add("f");
        headings.add("g");
          
        ExcelGenerator excel = new ExcelGenerator("Testing!!!", headings, reportData);
        excel.printReport(destination);
        
    }    
}
