package jcse.coachlab2013.mms.reports;

import java.io.InputStream;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JRPrintPage;
import net.sf.jasperreports.engine.JRResultSetDataSource;
import net.sf.jasperreports.engine.JasperCompileManager;
import net.sf.jasperreports.engine.JasperExportManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;
import net.sf.jasperreports.engine.fill.JRTemplatePrintText;
import net.sf.jasperreports.engine.type.WhenNoDataTypeEnum;

/**
 * @author Mubien Nackoda <coachlab@jcse.org.za>
 * @since 2012-05-20 (the version of the package this class was first added to)
 */
public class ReportGenerator {

    private JasperReport report;
    private JasperPrint mainPrint;

    /**
     * Default Constructor
     *
     * @param sourceJRXML path to the .jrxml file used to compile report
     * @param reportParameters Map<Key, Value> for any additional parameters
     * passed to the report
     * @param reportData ResultSet used to populate report
     */
    public ReportGenerator(InputStream sourceJRXML, Map reportParameters, ResultSet reportData) {
        try {
            report = JasperCompileManager.compileReport(sourceJRXML);
            report.setWhenNoDataType(WhenNoDataTypeEnum.ALL_SECTIONS_NO_DETAIL);
            mainPrint = JasperFillManager.fillReport(report, reportParameters, new JRResultSetDataSource(reportData));

        } catch (JRException ex) {
            Logger.getLogger(ReportGenerator.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Overloaded Constructor Takes a List of reports and combines them into one
     *
     * @param sourceJRXML List of paths to the .jrxml file used to compile
     * reports
     * @param reportParameters List of Map<Key, Value> for any additional
     * parameters passed to the reports
     * @param reportData List of ResultSet used to populate reports
     */
    public ReportGenerator(ArrayList<InputStream> sourceJRXML, ArrayList<Map> reportParameters, ArrayList<ResultSet> reportData) {
        if (sourceJRXML.size() == reportParameters.size() && sourceJRXML.size() == reportData.size()) {
            try {

                report = JasperCompileManager.compileReport(sourceJRXML.get(0));
                report.setWhenNoDataType(WhenNoDataTypeEnum.ALL_SECTIONS_NO_DETAIL);
                mainPrint = JasperFillManager.fillReport(report, reportParameters.get(0), new JRResultSetDataSource(reportData.get(0)));

                for (int i = 1; i < sourceJRXML.size(); i++) {

                    report = JasperCompileManager.compileReport(sourceJRXML.get(i));
                    JasperPrint tempPrint = JasperFillManager.fillReport(report, reportParameters.get(i), new JRResultSetDataSource(reportData.get(i)));

                    for (JRPrintPage page : tempPrint.getPages()) {
                        mainPrint.addPage(page);
                    }
                }
            } catch (JRException ex) {
                Logger.getLogger(ReportGenerator.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        correctPageNumbers();
    }

    /**
     * Uses the compile manager to save a report in pdf format
     *
     * @param fileDestination Path to save the generated pdf document
     */
    public void savePDF(String fileDestination) {

        try {
            String path = System.getProperty("java.class.path").substring(0, System.getProperty("java.class.path").lastIndexOf("\\") + 1);
            //Used when running in netbeans, before compile comment out the line below
            path = "";
            JasperExportManager.exportReportToPdfFile(mainPrint, path + fileDestination + ".pdf");

        } catch (JRException ex) {
            Logger.getLogger(ReportGenerator.class.getName()).log(Level.SEVERE, null, ex);
        } catch (Exception ex) {
            Logger.getLogger(ReportGenerator.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Method is used to correct page numbers when combining different reports
     */
    private void correctPageNumbers() {

        if (mainPrint != null) {
            List<JRPrintPage> listPages = mainPrint.getPages();
            int numberOfPages = listPages.size();

            int currentPageIndex = 1;
            for (JRPrintPage currentPage : listPages) {
                List listElements = currentPage.getElements();

                for (Object element : listElements) {
                    if (element instanceof JRTemplatePrintText) {
                        JRTemplatePrintText templatePrintText = (JRTemplatePrintText) element;

                        if (templatePrintText.getKey() != null && templatePrintText.getKey().equalsIgnoreCase("textFieldCurrentPage")) {
                            templatePrintText.setText("Page " + String.valueOf(currentPageIndex) + " of ");
                        }

                        if (templatePrintText.getKey() != null && templatePrintText.getKey().equalsIgnoreCase("textFieldNumberOfPages")) {
                            templatePrintText.setText(" " + String.valueOf(numberOfPages));
                        }
                    }
                }
                currentPageIndex++;
            }
        }
    }
}
