package jcse.coachlab2013.mms.reports;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.apache.poi.hssf.usermodel.HeaderFooter;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.ClientAnchor;
import org.apache.poi.ss.usermodel.CreationHelper;
import org.apache.poi.ss.usermodel.Drawing;
import org.apache.poi.ss.usermodel.Font;
import org.apache.poi.ss.usermodel.Footer;
import org.apache.poi.ss.usermodel.IndexedColors;
import org.apache.poi.ss.usermodel.Picture;
import org.apache.poi.ss.usermodel.PrintSetup;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.ss.util.CellRangeAddress;
import org.apache.poi.util.IOUtils;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

/**
 *
 * @author Amazing
 */
public class ExcelGenerator {

    Workbook wb;
    Sheet sheet;
    CreationHelper helper;

    int rows = 23;
    int columns = 14;
    
    int tableColumns = 0;
    int tableRows = 0;
    
    public ExcelGenerator(String title, ArrayList<String> tableHeaders, ResultSet tableData) {
                        
        wb = new XSSFWorkbook();  
        
        sheet = wb.createSheet(title);        
        sheet.setAutobreaks(true);        
        sheet.getPrintSetup().setPaperSize(PrintSetup.A4_PAPERSIZE);
        sheet.getPrintSetup().setLandscape(true);
        sheet.getPrintSetup().setFitWidth((short) 1);
        
        helper = wb.getCreationHelper();
        getNumRowsCols(tableHeaders, tableData);
        
        if (tableRows > 9) { rows = rows - 9 + tableRows; }
        if (tableColumns > 7) { columns = tableColumns * 2;}
        
        createSpreadsheet();
        createHeader();
        createTitle(title);
        
        setTableHeaders(tableHeaders);
        createTable();
        setTableContent(tableData);
        createPageNumber();
         
    }
    
    private void getNumRowsCols(ArrayList<String> tableHeaders, ResultSet tableData) 
    {
        try {
            
            tableColumns = tableHeaders.size();
            
            tableData.last();
            tableRows = tableData.getRow();
            tableData.beforeFirst();
            
        } catch (SQLException ex) {
            Logger.getLogger(ExcelGenerator.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    private void createSpreadsheet() {
        
        for (int i = 0; i < rows; i++) {
            sheet.createRow(i);
            for (int j = 0; j < columns; j++) {
                sheet.getRow(i).createCell(j);
            }
        }
        
        for (int i = 0; i < 10; i++) {
            sheet.getRow(i).setHeightInPoints(15);
        }
        
        for (int i = 10; i < rows - 2; i++) {
            sheet.getRow(i).setHeightInPoints(30);
        } 
        
        for (int i = rows - 1; i > rows - 3; i--) {
            sheet.getRow(i).setHeightInPoints(15);
        }
        
        for (int i = 10; i < rows - 2; i++) {
            for (int j = 0; j < columns; j += 2) {
                sheet.addMergedRegion(new CellRangeAddress(i, i, j, j + 1));
            }
        }
    }

    private void createHeader() {
        createLogo();
        printDate();
        createBorders();
        printForensicTitle();
    }

    private void createLogo() {
        InputStream logo;

        try {
            logo = new FileInputStream("./Logo.png");
            byte[] bytes = IOUtils.toByteArray(logo);
            int pictureIdx = wb.addPicture(bytes, Workbook.PICTURE_TYPE_PNG);
            logo.close();
            sheet.addMergedRegion(new CellRangeAddress(0, 5, 0, 5));
            Drawing drawing = sheet.createDrawingPatriarch();
            ClientAnchor anchor = helper.createClientAnchor();
            anchor.setCol1(0);
            anchor.setRow1(0);
            Picture pict = drawing.createPicture(anchor, pictureIdx);
            pict.resize();
        } catch (FileNotFoundException ex) {
            Logger.getLogger(ExcelGenerator.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IOException ex) {
            Logger.getLogger(ExcelGenerator.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    private void printDate() {
        sheet.addMergedRegion(new CellRangeAddress(5, 5, columns - 4, columns - 1));
        
        Font font = wb.createFont();
        font.setFontName("Segoe UI");
        font.setFontHeightInPoints((short) 10);
        font.setBoldweight(Font.BOLDWEIGHT_BOLD);
        
        CellStyle cellstyle = wb.createCellStyle();
        cellstyle.setFont(font);
        cellstyle.setAlignment(CellStyle.ALIGN_RIGHT);
        cellstyle.setDataFormat(helper.createDataFormat().getFormat("dddd, dd mmmmmm yyyy "));
        
        Cell celldate = sheet.getRow(5).getCell(columns - 4);
        celldate.setCellValue(new Date());
        celldate.setCellStyle(cellstyle);
    }

    private void createBorders() {
        CellStyle cellStyle = wb.createCellStyle();
        cellStyle.setBorderBottom(CellStyle.BORDER_MEDIUM);
        
        for (int i = 0; i < columns; i++) {
            Cell cellboard = sheet.getRow(6).getCell(i);
            cellboard.setCellStyle(cellStyle);
            cellboard = sheet.getRow(rows - 2).getCell(i);
            cellboard.setCellStyle(cellStyle);
        }
    }

    private void printForensicTitle() {
        sheet.addMergedRegion(new CellRangeAddress(4, 4, columns - 4, columns - 1));
        
        Font font = wb.createFont();
        font.setFontName("Segoe UI");
        font.setFontHeightInPoints((short) 10);
        font.setColor(IndexedColors.DARK_YELLOW.getIndex());
        font.setBoldweight(Font.BOLDWEIGHT_BOLD);
        
        CellStyle cellstyle = wb.createCellStyle();
        cellstyle.setFont(font);
        cellstyle.setAlignment(CellStyle.ALIGN_RIGHT);
        
        Cell cell = sheet.getRow(4).getCell(columns - 4);
        cell.setCellValue("Forensic Pathology Service");
        cell.setCellStyle(cellstyle);
    }

    private void createTitle(String title) {
        sheet.addMergedRegion(new CellRangeAddress(7, 8, 0, columns - 1));
        Cell cell = sheet.getRow(7).getCell(0);
        cell.setCellValue(title);
        CellStyle cellStyle = wb.createCellStyle();
        cellStyle.setAlignment(CellStyle.ALIGN_CENTER);
        cellStyle.setVerticalAlignment(CellStyle.VERTICAL_CENTER);
        
        Font font = wb.createFont();
        font.setFontName("Segoe UI");
        font.setFontHeightInPoints((short) 20);
        cellStyle.setFont(font);
        cell.setCellStyle(cellStyle);
    }

    private void createTable() {
        
        Font font = wb.createFont();
        font.setFontName("Segoe UI");
        font.setFontHeightInPoints((short) 10);   
        
        CellStyle style = wb.createCellStyle();
        style.setBorderBottom(CellStyle.BORDER_THIN);
        style.setBorderTop(CellStyle.BORDER_THIN);
        style.setBorderRight(CellStyle.BORDER_THIN);
        style.setBorderLeft(CellStyle.BORDER_THIN);
        style.setWrapText(true);
        style.setFont(font);
        
        for (int i = 10; i < rows - 2; i++) {
            for (int j = 0; j < columns; j++) {                                   
                Cell cell = sheet.getRow(i).getCell(j);
                cell.setCellStyle(style);
            }
        }
        
        createTableHeader();
    }

    private void createTableHeader() {
             
        Font font = wb.createFont();
        font.setFontName("Segoe UI");
        font.setFontHeightInPoints((short) 10);       
        font.setBoldweight(Font.BOLDWEIGHT_BOLD);
        
        CellStyle style = wb.createCellStyle();    
        style.setAlignment(CellStyle.ALIGN_CENTER);
        style.setAlignment(CellStyle.VERTICAL_CENTER);
        style.setBorderBottom(CellStyle.BORDER_MEDIUM);
        style.setBorderTop(CellStyle.BORDER_MEDIUM);
        style.setBorderRight(CellStyle.BORDER_THIN);
        style.setBorderLeft(CellStyle.BORDER_THIN);
        style.setWrapText(true);
        style.setFont(font);
        
        for (int j = 0; j < columns; j++) {
            Cell cell = sheet.getRow(10).getCell(j);
            cell.setCellStyle(style);
        }
    }
    
    private void createPageNumber() {
        
        Footer footer = sheet.getFooter();
        footer.setRight( "Page " + HeaderFooter.page() + " of " + HeaderFooter.numPages());        

    } 
    
    private void setTableHeaders(ArrayList<String> tableHeaders)
    {
        for(String s: tableHeaders)
        {
            sheet.getRow(10).getCell(tableHeaders.indexOf(s) * 2).setCellValue(s);
        }
    }
    
    private void setTableContent(ResultSet tableData) {
        try {
            ResultSetMetaData tableMetaData = tableData.getMetaData();
            int colCount = tableMetaData.getColumnCount();
            
            while (tableData.next()) {
                for (int i = 0; i <  colCount; i++) {
                    Object value = tableData.getObject(i + 1);
                                       
                    if (value != null) {
                        sheet.getRow(tableData.getRow() + 10).getCell(i * 2).setCellValue(value.toString());
                    }
                }
            }
        } catch (SQLException ex) {
            Logger.getLogger(ExcelGenerator.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
    
    public void printReport(String title) {
        
        FileOutputStream fileOut;
        try {
            String file = title + ".xlsx";
            fileOut = new FileOutputStream(file);
            wb.write(fileOut);
            fileOut.close();

        } catch (FileNotFoundException ex) {
            Logger.getLogger(ExcelGenerator.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IOException ex) {
            Logger.getLogger(ExcelGenerator.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}