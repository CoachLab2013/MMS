/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package jcse.coachlab2013.mms.reports.excelReports;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.apache.poi.ss.usermodel.*;
import org.apache.poi.ss.util.CellRangeAddress;
import org.apache.poi.util.IOUtils;
import org.apache.poi.xssf.usermodel.XSSFFont;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

/**
 *
 * @author Amazing
 */
public class ExcelGenerator {

    Workbook wb;
    Sheet sheet;
    CreationHelper helper;

    public ExcelGenerator(int row, int column, String title) {
        System.out.println("Processing ...");
        wb = new XSSFWorkbook();
        sheet = wb.createSheet();
        helper = wb.getCreationHelper();
         int rows = row+10;
        int columns = 2*column-1;
        createSpreadsheet(rows, columns);
        createHeader(columns, title);
        createTable(rows, columns);
        createPageNumber(rows, columns);
        FileOutputStream fileOut = null;
        try {

            String file = "incident.xls";
            if (wb instanceof XSSFWorkbook) {
                file += "x";
            }
            fileOut = new FileOutputStream(file);
            wb.write(fileOut);
            fileOut.close();
            System.out.println("Done.\nYOUR DOCUMENT IS SAVED IN  " + file);

        } catch (FileNotFoundException ex) {
            Logger.getLogger(ExcelGenerator.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IOException ex) {
            Logger.getLogger(ExcelGenerator.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            try {
                fileOut.close();
            } catch (IOException ex) {
                Logger.getLogger(ExcelGenerator.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }

    private void createHeader(int columns, String title) {
        createLogo("C:\\Users\\Amazing\\Desktop\\MMS\\Reports\\Report_BodiesByOrganisation\\Logo.png");
        createTitle(columns, title);
        createBoarders(columns);
        printDate(columns);
        createForensicHeader(columns);

    }

    private void createTitle(int columns, String title) {
        sheet.addMergedRegion(new CellRangeAddress(7, 9, 0, columns));
        Cell cell = sheet.getRow(7).getCell(0);
        cell.setCellValue(title);
        CellStyle cellStyle = wb.createCellStyle();
        cellStyle.setAlignment(CellStyle.ALIGN_CENTER);
        cellStyle.setVerticalAlignment(CellStyle.VERTICAL_TOP);
        Font font = wb.createFont();
        font.setFontName("Arial");
        font.setFontHeightInPoints((short) 20);
        font.setColor(IndexedColors.AUTOMATIC.getIndex());
        font.setBoldweight(XSSFFont.BOLDWEIGHT_BOLD);
        cellStyle.setFont(font);
        cell.setCellStyle(cellStyle);
    }

    private void createBoarders(int columns) {
        CellStyle cellStyle5 = wb.createCellStyle();
        for (int i = 0; i <= columns; i++) {
            Cell cellboard = sheet.getRow(6).getCell(i);
            cellStyle5.setBorderBottom(CellStyle.BORDER_THICK);
            cellboard.setCellStyle(cellStyle5);
        }
    }

    private void printDate(int columns) {
        sheet.addMergedRegion(new CellRangeAddress(5, 5, columns - 2, columns));
        Font font = wb.createFont();
        CellStyle cellstyle = wb.createCellStyle();
        cellstyle.setAlignment(CellStyle.ALIGN_RIGHT);
        font.setBoldweight(Font.BOLDWEIGHT_BOLD);
        cellstyle.setDataFormat(helper.createDataFormat().getFormat("dddd, dd mmmmmm yyyy "));
        Cell celldate = sheet.getRow(5).getCell(columns - 2);
        celldate.setCellValue(new Date());
        cellstyle.setFont(font);
        celldate.setCellStyle(cellstyle);
    }

    private void createForensicHeader(int columns) {
        sheet.addMergedRegion(new CellRangeAddress(4, 4, columns - 3, columns));
        Font font = wb.createFont();
        font.setFontHeightInPoints((short) 10);
        font.setFontName("Arial");
        font.setColor(IndexedColors.DARK_YELLOW.getIndex());
        font.setBoldweight(Font.BOLDWEIGHT_BOLD);
        CellStyle cellstyle = wb.createCellStyle();
        cellstyle.setAlignment(CellStyle.ALIGN_RIGHT);
        cellstyle.setFont(font);
        Cell cell = sheet.getRow(4).getCell(columns - 3);
        cell.setCellValue("Forensic Pathology Service");
        cell.setCellStyle(cellstyle);
    }

    private void createLogo(String logoPath) {
        InputStream logo = null;
        helper = wb.getCreationHelper();
        try {
            logo = new FileInputStream(logoPath);
            byte[] bytes = IOUtils.toByteArray(logo);
            int pictureIdx = wb.addPicture(bytes, Workbook.PICTURE_TYPE_JPEG);
            logo.close();
            sheet.addMergedRegion(new CellRangeAddress(0, 6, 0, 6));
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
        } finally {
            try {
                logo.close();
            } catch (IOException ex) {
                Logger.getLogger(ExcelGenerator.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

    }

    private void createTable(int rows, int columns) {
        CellStyle style = wb.createCellStyle();
        style.setBorderBottom(CellStyle.BORDER_THIN);
        style.setBorderTop(CellStyle.BORDER_THIN);
        style.setBorderRight(CellStyle.BORDER_THIN);
        style.setBorderLeft(CellStyle.BORDER_THIN);
        for (int i = 10; i < rows; i++) {
            for (int j = 0; j <= columns; j++) {
                Cell cell = sheet.getRow(i).getCell(j);
                cell.setCellStyle(style);

            }


        }



    }

    private void createSpreadsheet(int rows, int columns) {
        CellStyle rowStyle = wb.createCellStyle();
        rowStyle.setWrapText(true);



        for (int i = 0; i <= rows + 2; i++) {
            sheet.createRow(i);
            for (int j = 0; j <= columns; j++) {
                sheet.getRow(i).createCell(j);
            }
        }

        for (int i = 0; i < 10; i++) {
            sheet.getRow(i).setHeightInPoints(15);
        }
        for (int i = 10; i < rows; i++) {
            sheet.getRow(i).setHeightInPoints(30);

        }
        for (int i = rows; i <= rows + 2; i++) {
            sheet.getRow(i).setHeightInPoints(15);

        }
        for (int i = 10; i < 20; i++) {
            for (int j = 0; j < columns; j += 2) {
                sheet.addMergedRegion(new CellRangeAddress(i, i, j, j + 1));
                Cell cell = sheet.getRow(i).getCell(j);
                cell.setCellStyle(rowStyle);
            }
        }



    }

    private void createPageNumber(int rows, int columns) {

        int count;
        CellStyle cellstyle = wb.createCellStyle();
        cellstyle.setAlignment(CellStyle.ALIGN_RIGHT);
        sheet.addMergedRegion(new CellRangeAddress(rows + 1, rows + 1, columns - 1, columns));
        Cell page = sheet.getRow(rows + 1).getCell(columns - 1);

        if ((rows + 1) % 34 == 0) {
            count = (rows + 1) / 34;
        } else {
            count = (rows + 1) / 34 + 1;
        }
        if (count == 1) {
            page.setCellValue(count + " page");
        } else {
            page.setCellValue(count + "  pages");
        }
        page.setCellStyle(cellstyle);

    }
}