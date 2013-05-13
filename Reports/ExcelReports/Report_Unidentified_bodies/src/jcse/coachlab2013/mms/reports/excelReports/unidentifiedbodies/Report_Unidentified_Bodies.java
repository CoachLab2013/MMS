/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package jcse.coachlab2013.mms.reports.excelReports.unidentifiedbodies;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Member;
import static java.lang.System.out;

import java.util.ArrayList;
import java.util.Vector;
import jcse.coachlab2013.mms.reports.excelReports.ExcelGenerator;

/**
 *
 * @author James
 */
public class Report_Unidentified_Bodies {
    private ArrayList<Bean_UnidentifiedBodies>beanlist;
    public static void main(String[]largs){
        Vector<String> fields = new Vector();
        fields.add("Incident No.");
        fields.add("Death No.");
        fields.add("Date Received");
        fields.add("SAPS Station");
        fields.add("Date Released");
        fields.add("Days at Facility");
        
        
   ExcelGenerator spread = new ExcelGenerator(10,6,"Unidentified Bodies Report", true,fields);
   
   
        
       
}
    private ArrayList sampleData(){
        beanlist = new ArrayList<>();
        for(int i = 0; i<10;i++){
            
            Bean_UnidentifiedBodies bean = new Bean_UnidentifiedBodies("id000","death000","date0000","saps0000","date0001","day00000");
            beanlist.add(bean);
        }
        
        return  beanlist;
    
    
    }
}