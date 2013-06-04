package jcse.coachlab2013.mms.reports.MannerOfDeath;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import jcse.coachlab2013.mms.reports.ReportGenerator;
import jcse.coachlab2013.mms.reports.Template_Report;

/**
 * @author Mubien Nakhooda <coachlab@jcse.org.za>
 * @since 2012-05-20 (the version of the package this class was first added to)
 */
public final class Report_MannerOfDeath extends Template_Report {

    /**
     * The code creates the Manner of Death Report It creates the report by
     * fetching data from the database using the parameter connection, fill the
     * data using the parameter formatData and saves the report in a specified
     * directory using the parameter destination
     *
     * @param destination connects to the database
     * @param connection gives the place where the Manner of Death Report is
     * going to be saved
     */
    public Report_MannerOfDeath(String destination, Connection connection) {
        super(destination, connection);

        formatData();
    }

    @Override
    /**
     * The method formatData populates the Manner of Death Report
     */
    protected void formatData() {

        try {
            sourceArray = new ArrayList<InputStream>();
            parameterArray = new ArrayList<Map>();
            reportDataArray = new ArrayList<ResultSet>();

            ResultSet param = connection.prepareStatement("SELECT DISTINCT(`deathType`) FROM `reporting database`.`dim_mannerofdeath`;").executeQuery();

            while (param.next()) {
                sourceArray.add(getClass().getResource("/jcse/coachlab2013/mms/reports/MannerOfDeath/Report_MannerOfDeath.jrxml").openStream());

                parameters = new HashMap();
                parameters.put("ReportTitle", "Manner of Death (" + param.getString("deathType") + ") Report");
                parameterArray.add(parameters);

                reportDataArray.add(new DatabaseAccessor_MannerOfDeath(connection).read(param.getString("deathType")));

            }

        } catch (SQLException ex) {
            Logger.getLogger(Report_MannerOfDeath.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IOException ex) {
            Logger.getLogger(Report_MannerOfDeath.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    /**
     * The method createReport creates the Manner of Death Report using the
     * class "ReportGenerator" and the object rg. After the creating the report
     * it is saved to destination
     */
    public void createReport() {

        //ReportGenerator rg = new ReportGenerator(source, parameters, reportData);
        ReportGenerator rg = new ReportGenerator(sourceArray, parameterArray, reportDataArray);
        rg.savePDF(destination);
    }
}
