/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Amazing
 */
import java.io.File;
import java.io.IOException;
import java.util.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import jxl.*;
import jxl.write.Label;
import jxl.write.WritableSheet;
import jxl.write.WritableWorkbook;
import jxl.write.WriteException;
import jxl.write.Number;



public class myFirstExcel {
    public static void main(String [] args){
        try {      
            WritableWorkbook workbook = Workbook.createWorkbook(new File("output"));
            WritableSheet sheet = workbook.createSheet("Incedent House Keeping", 0);
            Label label = new Label(0,2,"A label record");
            sheet.addCell(label);
            Number num = new Number(3,4,77777);
            sheet.addCell(num);
            workbook.write();
            workbook.close();
        } catch (IOException ex) {
            Logger.getLogger(myFirstExcel.class.getName()).log(Level.SEVERE, null, ex);
        } catch (WriteException ex) {
            Logger.getLogger(myFirstExcel.class.getName()).log(Level.SEVERE, null, ex);
        } 
            
            
            
             
            
            
            
      
    
    }
    
}
