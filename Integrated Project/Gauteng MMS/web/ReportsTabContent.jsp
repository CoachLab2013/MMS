<%-- 
    Document   : ReportsTabContent
    Created on : 03 Jun 2013, 10:56:39 AM
    Author     : Mubien Nakhooda Coachlab 2013
--%>

<%@page import="java.io.File"%>
<%@page import="servlets.Tools"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Reports</title>
        <%!
            public Boolean accessReport(int access, String report) {

                //FMANAGER = 0
                //FOFFICER = 1
                //CFMEDICALPRACTITIONER = 2
                //FMEDICALPRACTITIONER = 3
                //SYSADMIN = 4

                boolean result = false;

                switch (access) {

                    case 0:
                        if (report.equalsIgnoreCase("Incident HouseKeeping")
                                || report.equalsIgnoreCase("Facility Storage")
                                || report.equalsIgnoreCase("Unidentified Bodies")
                                || report.equalsIgnoreCase("Body File")
                                || report.equalsIgnoreCase("Bodies by Organization")
                                || report.equalsIgnoreCase("Manner of Death")
                                || report.equalsIgnoreCase("Turn Around on Results")) {
                            result = true;
                        }
                        ;
                        break;

                    case 1:
                        if (report.equalsIgnoreCase("Audit Trail")
                                || report.equalsIgnoreCase("Incident HouseKeeping")
                                || report.equalsIgnoreCase("Unidentified Bodies")
                                || report.equalsIgnoreCase("Body File")
                                || report.equalsIgnoreCase("Turn Around on Results")) {
                            result = true;
                        }
                        ;
                        break;

                    case 2:
                        if (report.equalsIgnoreCase("Incident HouseKeeping")
                                || report.equalsIgnoreCase("Unidentified Bodies")
                                || report.equalsIgnoreCase("Specific Body")
                                || report.equalsIgnoreCase("Body File")
                                || report.equalsIgnoreCase("Turn Around on Results")) {
                            result = true;
                        }
                        ;
                        break;

                    case 3:
                        if (report.equalsIgnoreCase("Incident HouseKeeping")
                                || report.equalsIgnoreCase("Unidentified Bodies")
                                || report.equalsIgnoreCase("Specific Body")
                                || report.equalsIgnoreCase("Body File")
                                || report.equalsIgnoreCase("Turn Around on Results")) {
                            result = true;
                        }
                        ;
                        break;

                    case 4:
                        if (report.equalsIgnoreCase("Audit Trail")) {
                            result = true;
                        }
                        ;
                        break;

                    default:
                        result = false;
                }

                return result;
            }

            public String getFileList(HttpServletRequest request, String folder) {
                String out = "";
                int access = (Integer) request.getSession().getAttribute("accesslevel");

                File file = new File(request.getSession().getServletContext().getRealPath(request.getServletPath())).getParentFile();
                file = new File(file.getPath() + "/" + folder);
                File[] files = file.listFiles();
                for (File tmpFile : files) {
                    if (tmpFile.isFile() && (tmpFile.getName().contains(".pdf") || tmpFile.getName().contains(".xlsx"))) {
                        out += "<a href='" + folder + "/" + tmpFile.getName() + "'>" + tmpFile.getName() + "</a><br/>";
                    } else {
                        if (accessReport(access, tmpFile.getName())) {
                            out += "<h5>" + tmpFile.getName() + "</h5>";
                            out += getFileList(request, folder + "/" + tmpFile.getName());
                        }
                    }
                }
                return out;
            }
        %>
    </head>
    <body>
    <legend>Reports</legend> 
        <div class="tabbable tabs-left">
            <ul class="nav nav-tabs">
                <li class="active"><a href="#Daily" data-toggle="tab">Daily</a></li>
                <li><a href="#Weekly" data-toggle="tab">Weekly</a></li>
                <li><a href="#Monthly" data-toggle="tab">Monthly</a></li>
            </ul>
            <div class="tab-content">
                <div class="tab-pane active" id="Daily">
                    <%= getFileList(request, "Reports/Daily") %>                 
                </div>
                <div class="tab-pane" id="Weekly">
                    <%= getFileList(request, "Reports/Weekly") %>
                </div>
                <div class="tab-pane" id="Monthly">
                    <%= getFileList(request, "Reports/Monthly") %>
                </div>
            </div>
        </div>
        
    </body>
</html>
