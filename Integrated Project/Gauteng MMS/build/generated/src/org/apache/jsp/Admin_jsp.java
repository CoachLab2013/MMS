package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import AssistiveClasses.SetDbDetail;
import servlets.Tools;
import database.EmployeeDb;
import java.util.ArrayList;
import database.Employee;
import database.DbDetail;
import database.ReferenceListDb;

public final class Admin_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("    <head>        \r\n");
      out.write("\r\n");
      out.write("        <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/1.6.4/jquery.min.js\"></script>\r\n");
      out.write("        <link type=\"text/css\" rel=\"stylesheet\"  href=\"bootstrap/css/bootstrap.css\">           \r\n");
      out.write("        <script src=\"bootstrap/js/bootstrap-tabs.js\"></script>\r\n");
      out.write("        <script src=\"bootstrap/js/bootstrap.min.js\"></script>\r\n");
      out.write("        <link type=\"text/css\" rel=\"stylesheet\"  href=\"CSS/Design.css\">\r\n");
      out.write("        <script src=\"js/jquery-1.7.1.min.js\"></script>\r\n");
      out.write("        <script src=\"js/jquery.validate.min.js\"></script>\r\n");
      out.write("        <script src=\"js/script.js\"></script>\r\n");
      out.write("        <link  type=\"text/css\" href=\"CSS files/style.css\" rel=\"stylesheet\">\r\n");
      out.write("        <title>MMS Administration</title>\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>  \r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("        ");

            //variables to store results
            String userResult = "";
            String instiResult = "";
            String analysisResult = "";
            String propertyResult = "";
            String vehicleResult = "";
            String rankResult = "";
            String genderResult = "";
            String occupationResult = "";
            String raceResult = "";
            String maritalResult = "";
            String oraganisationResult = "";
            String provinceResult = "";
            String iCD10Result = "";
            String mannerResult = "";
            String sampleResult = "";
            String statusResult = "";
            String relationshipResult = "";

            String main1 = "";
            String addUserTab = "";
            String currentUserTab = "";

            //checks which tab to open
            if (null != session.getAttribute("result")) {
                userResult = session.getAttribute("result").toString();
                if (null != session.getAttribute("tab")) {
                    addUserTab = session.getAttribute("tab").toString();
                    currentUserTab = "";
                }
            } else {
                addUserTab = "";
                currentUserTab = "active";
            }

            //Veriables to determine which tab to open
            String main2 = "";
            String inst = "";
            String analysis = "";
            String relationship = "";
            String status = "";
            String sample = "";
            String manner = "";
            String icd10 = "";
            String province = "";
            String organisation = "";
            String marital = "";
            String race = "";
            String occu = "";
            String gender = "";
            String rank = "";
            String vehi = "";
            String property = "";



            //Determine which tab must be open
            try {
                if (session.getAttribute("main").equals("ref")) {

                    main2 = "active";

                    if (session.getAttribute("tab").equals("insti")) {
                        inst = "active";
                        instiResult = session.getAttribute("insti").toString();

                    } else if (session.getAttribute("tab").equals("analysis")) {
                        analysis = "active";
                        analysisResult = session.getAttribute("analysisResult").toString();

                    } else if (session.getAttribute("tab").equals("property")) {
                        propertyResult = session.getAttribute("propertyResult").toString();
                        property = "active";
                    } else if (session.getAttribute("tab").equals("vehi")) {
                        vehicleResult = session.getAttribute("result").toString();
                        vehi = "active";
                    } else if (session.getAttribute("tab").equals("rank")) {
                        rankResult = session.getAttribute("result").toString();
                        rank = "active";
                    } else if (session.getAttribute("tab").equals("gender")) {
                        genderResult = session.getAttribute("genderResult").toString();
                        gender = "active";
                    } else if (session.getAttribute("tab").equals("occu")) {
                        occupationResult = session.getAttribute("occupationResult").toString();
                        occu = "active";
                    } else if (session.getAttribute("tab").equals("race")) {
                        raceResult = session.getAttribute("raceResult").toString();
                        race = "active";
                    } else if (session.getAttribute("tab").equals("marital")) {
                        maritalResult = session.getAttribute("maritalResult").toString();
                        marital = "active";
                    } else if (session.getAttribute("tab").equals("organisation")) {
                        oraganisationResult = session.getAttribute("result").toString();
                        organisation = "active";
                    } else if (session.getAttribute("tab").equals("province")) {
                        provinceResult = session.getAttribute("provinceResult").toString();
                        province = "active";
                    } else if (session.getAttribute("tab").equals("icd10")) {
                        iCD10Result = session.getAttribute("iCD10Result").toString();
                        icd10 = "active";
                    } else if (session.getAttribute("tab").equals("manner")) {
                        mannerResult = session.getAttribute("mannerResult").toString();
                        manner = "active";
                    } else if (session.getAttribute("tab").equals("sample")) {

                        sampleResult = session.getAttribute("sampleResult").toString();
                        sample = "active";

                    } else if (session.getAttribute("tab").equals("status")) {
                        statusResult = session.getAttribute("statusResult").toString();
                        status = "active";
                    } else if (session.getAttribute("tab").equals("relationship")) {
                        relationshipResult = session.getAttribute("relationshipResult").toString();
                        relationship = "active";
                    } else if (session.getAttribute("tab").equals("Adduser")) {
                        addUserTab = "active";
                        userResult = session.getAttribute("relationshipResult").toString();
                    }


                } else {
                    userResult = "";
                    instiResult = "";
                    analysisResult = "";
                    propertyResult = "";
                    vehicleResult = "";
                    rankResult = "";
                    genderResult = "";
                    occupationResult = "";
                    raceResult = "";
                    maritalResult = "";
                    oraganisationResult = "";
                    provinceResult = "";
                    iCD10Result = "";
                    mannerResult = "";
                    sampleResult = "";
                    statusResult = "";
                    relationshipResult = "";

                    main1 = "active";

                    currentUserTab = "active";



                }
            } catch (Exception ex) {
                currentUserTab = "active";
                main1 = "active";
            }
            SetDbDetail dbset = new SetDbDetail();
            
            //Code to fill users table
            EmployeeDb emplo = new EmployeeDb(dbset.getDbdetail());
            emplo.init();
            ArrayList<Employee> employeeList = emplo.employeeList();

            //Code to populate list boxes in tabs

            //For institution list box
            ReferenceListDb emp = new ReferenceListDb("institution", "e", "type", "e", dbset.getDbdetail());
            emp.init(); 
            ArrayList<String> institutionList = emp.referenceList();

            //For analysis list box
            emp = new ReferenceListDb("analysis", "e", "type", "e", dbset.getDbdetail());
            emp.init();
            ArrayList<String> analysisList = emp.referenceList();

            //For rank list box
            emp = new ReferenceListDb("rank", "e", "type", "e", dbset.getDbdetail());
            emp.init();
            ArrayList<String> rankList = emp.referenceList();

            //For gender list box
            emp = new ReferenceListDb("gender", "e", "type", "e", dbset.getDbdetail());
            emp.init();
            ArrayList<String> genderList = emp.referenceList();

            //For occupation list box
            emp = new ReferenceListDb("occupation", "e", "type", "e", dbset.getDbdetail());
            emp.init();
            ArrayList<String> occupationList = emp.referenceList();

            //For race list box
            emp = new ReferenceListDb("race", "e", "type", "e", dbset.getDbdetail());
            emp.init();
            ArrayList<String> raceList = emp.referenceList();

            //For maritalstatus list box
            emp = new ReferenceListDb("maritalstatus", "e", "type", "e", dbset.getDbdetail());
            emp.init();
            ArrayList<String> maritalstatusList = emp.referenceList();

            //For province list box
            emp = new ReferenceListDb("province", "e", "type", "e", dbset.getDbdetail());
            emp.init();
            ArrayList<String> provinceList = emp.referenceList();

            //For icd10 list box
            emp = new ReferenceListDb("icd10", "e", "code", "e", dbset.getDbdetail());
            emp.init();
            ArrayList<String> icd10List = emp.referenceList();

            //For mannerofdeath list box
            emp = new ReferenceListDb("mannerofdeath", "e", "type", "e", dbset.getDbdetail());
            emp.init();
            ArrayList<String> mannerofdeathList = emp.referenceList();

            //For sample list box
            emp = new ReferenceListDb("sample", "e", "type", "e", dbset.getDbdetail());
            emp.init();
            ArrayList<String> sampleList = emp.referenceList();

            //For bodystatus list box
            emp = new ReferenceListDb("bodystatus", "e", "state", "e", dbset.getDbdetail());
            emp.init();
            ArrayList<String> bodystatusList = emp.referenceList();

            //For relationship list box
            emp = new ReferenceListDb("relationship", "e", "type", "e", dbset.getDbdetail());
            emp.init();
            ArrayList<String> relationshipList = emp.referenceList();

            /*
             //For institution list box
             ReferenceListDb emp = new ReferenceListDb("institution", "e", "type", "e", dbDetail);
             emp.init();
             ArrayList<String> institutionList = emp.referenceList();
            
             //For institution list box
             ReferenceListDb emp = new ReferenceListDb("institution", "e", "type", "e", dbDetail);
             emp.init();
             ArrayList<String> institutionList = emp.referenceList();
            
             //For institution list box
             ReferenceListDb emp = new ReferenceListDb("institution", "e", "type", "e", dbDetail);
             emp.init();
             ArrayList<String> institutionList = emp.referenceList();
            
             //For institution list box
             ReferenceListDb emp = new ReferenceListDb("institution", "e", "type", "e", dbDetail);
             emp.init();
             ArrayList<String> institutionList = emp.referenceList();
             */
             
      out.write("\r\n");
      out.write("\r\n");
      out.write("        <p>\r\n");
      out.write("            <span style=\"float: left\">Welcome Mrs Admin </span>\r\n");
      out.write("            <span style=\"float: right\">Logout  .</span>\r\n");
      out.write("        </p>\r\n");
      out.write("        <div align=\"center\"><h1><img src=\"Images/logo.jpg\" width=\"75\" height=\"75\"> Gauteng MMS Administration</h1></div>\r\n");
      out.write("\r\n");
      out.write("        ");
      out.write("\r\n");
      out.write("        <div class=\"tabbable\">\r\n");
      out.write("            <ul class=\"nav nav-tabs \" data-tabs=\"tabs\">\r\n");
      out.write("                <li class=\"");
out.println(String.valueOf(main1));
      out.write("\"><a href=\"#User\" data-toggle=\"tab\">Users</a> </li>\r\n");
      out.write("                <li class=\"");
out.println(String.valueOf(main2));
      out.write("\"><a href=\"#RefList\" data-toggle=\"tab\">Reference Lists</a></li>       \r\n");
      out.write("            </ul>\r\n");
      out.write("            ");
      out.write("\r\n");
      out.write("            <div class=\"tab-content\" >\r\n");
      out.write("                <div id=\"User\" class=\"tab-pane ");
out.println(String.valueOf(main1));
      out.write(" \">  \r\n");
      out.write("                    <div align=\"center\"><h2>Users </h2> </div>\r\n");
      out.write("                    ");
      out.write("\r\n");
      out.write("                    <div class=\"tabbable\">\r\n");
      out.write("                        ");
      out.write("\r\n");
      out.write("                        <ul class=\"nav nav-tabs \" data-tabs=\"tabs\">\r\n");
      out.write("                            <li class=\"");
out.println(String.valueOf(currentUserTab));
      out.write("\"><a href=\"#cUser\" data-toggle=\"tab\">Current Users</a> </li>\r\n");
      out.write("                            <li class=\"");
out.println(String.valueOf(addUserTab));
      out.write(" \"><a href=\"#aUser\" data-toggle=\"tab\">Add User</a></li>       \r\n");
      out.write("                        </ul>\r\n");
      out.write("\r\n");
      out.write("                        <div class=\"tab-content\" >\r\n");
      out.write("                            <div id=\"cUser\" class=\"tab-pane ");
out.println(String.valueOf(currentUserTab));
      out.write("\">  \r\n");
      out.write("                                <div align=\"center\"><h2>Users </h2> </div>\r\n");
      out.write("                                ");
      out.write("\r\n");
      out.write("                                <table border=\"1\" class=\"bordered-table\">\r\n");
      out.write("                                    <tr>\r\n");
      out.write("                                    <th width=\"150\"><H4>Name</H4></th>\r\n");
      out.write("                                    <th width=\"150\"><H4>Surname</H4></th>\r\n");
      out.write("                                    <th width=\"150\"><H4>Persal number</H4></th>\r\n");
      out.write("                                    <th width=\"150\"><H4>Email Address <H4></th>\r\n");
      out.write("                                            <th width=\"150\"><H4>Active<H4></th>\r\n");
      out.write("                                                    </tr>\r\n");
      out.write("\r\n");
      out.write("                                                    ");

                                                        for (int i = 0; i < employeeList.size(); i++) {
                                                    
      out.write("\r\n");
      out.write("                                                    <TR>\r\n");
      out.write("\r\n");
      out.write("                                                    <form name=\"EditUser\" id=\"EditUser\" method=\"post\" action=\"EditUser\" >\r\n");
      out.write("                                                        <input type=\"hidden\" name=\"userPersonnel\" value=\"");
      out.print( employeeList.get(i).getName().trim());
      out.write(" \">\r\n");
      out.write("\r\n");
      out.write("                                                        <TD><a href=");
      out.print( "EditUser?Id=" + employeeList.get(i).getPersonnelNumber().trim());
      out.write(" target=\"_blank\">");
      out.print( employeeList.get(i).getName().trim());
      out.write("</a></TD>\r\n");
      out.write("                                                        <TD><a href=");
      out.print( "EditUser?Id=" + employeeList.get(i).getPersonnelNumber().trim());
      out.write(" target=\"_blank\">");
      out.print( employeeList.get(i).getSurname().trim());
      out.write("</a></TD>\r\n");
      out.write("                                                        <TD><a href=");
      out.print( "EditUser?Id=" + employeeList.get(i).getPersonnelNumber().trim());
      out.write(" target=\"_blank\">");
      out.print( employeeList.get(i).getPersonnelNumber().trim());
      out.write("</a></TD>\r\n");
      out.write("                                                        <TD><a href=");
      out.print( "EditUser?Id=" + employeeList.get(i).getPersonnelNumber().trim());
      out.write(" target=\"_blank\">");
      out.print( employeeList.get(i).getEmail().trim());
      out.write("</a></TD>\r\n");
      out.write("                                                        <TD><a href=");
      out.print( "EditUser?Id=" + employeeList.get(i).getPersonnelNumber().trim());
      out.write(" target=\"_blank\">");
      out.print( employeeList.get(i).isActive());
      out.write("</a></TD>\r\n");
      out.write("                                                    </form>\r\n");
      out.write("                                                    </TR>\r\n");
      out.write("                                                    ");

                                                        }
                                                    
      out.write("\r\n");
      out.write("                                                    </table>\r\n");
      out.write("\r\n");
      out.write("                                                    <br>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("                                                    </div>\r\n");
      out.write("                                                    <div id=\"aUser\" class=\"tab-pane ");
out.println(String.valueOf(addUserTab));
      out.write(" \">  \r\n");
      out.write("                                                        ");
      out.write("\r\n");
      out.write("                                                        <div align=\"center\"><h2>Add User </h2> </div>  \r\n");
      out.write("\r\n");
      out.write("                                                        <form name=\"AddUser\" id=\"AddUser\" method=\"post\" action=\"ReferenceListServlet\" class=\"form-horizontal\">\r\n");
      out.write("\r\n");
      out.write("                                                            <div class=\"offset2 span7 \">\r\n");
      out.write("                                                                <input type=\"text\" name=\"form\" value=\"AddUser\" style=\"visibility: hidden\" />\r\n");
      out.write("                                                                <fieldset>\r\n");
      out.write("                                                                    <legend>User Personal Details</legend>\r\n");
      out.write("                                                                    <label  > ");
 out.println(String.valueOf(userResult));
      out.write(" </label>\r\n");
      out.write("                                                                    <div class=\"control-group   error\">\r\n");
      out.write("\r\n");
      out.write("                                                                        <label  class=\"control-label\"   for=\"firstName\">Full Name(s):</label> \r\n");
      out.write("                                                                        <div class=\"controls\">\r\n");
      out.write("                                                                            <input type=\"text\"  name=\"firstName\"  id=\"firstName\"  /> \r\n");
      out.write("                                                                        </div>\r\n");
      out.write("                                                                    </div>\r\n");
      out.write("\r\n");
      out.write("                                                                    <div class=\"control-group error \">\r\n");
      out.write("                                                                        <label  class=\"control-label\"  for=\"surname\">Surname:</label> \r\n");
      out.write("                                                                        <div class=\"controls\">\r\n");
      out.write("                                                                            <input  type=\"text\" name=\"surname\"  id=\"surname\" />\r\n");
      out.write("                                                                        </div>\r\n");
      out.write("                                                                    </div>\r\n");
      out.write("\r\n");
      out.write("                                                                    <div class=\"control-group error \">\r\n");
      out.write("                                                                        <label  class=\"control-label\" for=\"email\">Email:</label> \r\n");
      out.write("                                                                        <div class=\"controls\">\r\n");
      out.write("                                                                            <input type=\"text\" name=\"email\"  id=\"email\" />\r\n");
      out.write("                                                                        </div>\r\n");
      out.write("                                                                    </div>\r\n");
      out.write("                                                                </fieldset>\r\n");
      out.write("\r\n");
      out.write("                                                                </br> </br>\r\n");
      out.write("\r\n");
      out.write("                                                                <fieldset>\r\n");
      out.write("                                                                    <legend>User Employment Details</legend>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("                                                                    <div class=\"control-group error \">\r\n");
      out.write("                                                                        <label  class=\"control-label\" for=\"personnelNumber\">Persal Number:</label>\r\n");
      out.write("                                                                        <div class=\"controls\">\r\n");
      out.write("                                                                            <input type=\"text\" name=\"personnelNumber\" maxlength=\"8\" id=\"personnelNumber\"  />\r\n");
      out.write("                                                                        </div>\r\n");
      out.write("                                                                    </div>\r\n");
      out.write("\r\n");
      out.write("                                                                    <div class=\"control-group error \">\r\n");
      out.write("                                                                        <label  class=\"control-label\" for=\"level\">Access Level:</label>\r\n");
      out.write("                                                                        ");
      out.write("\r\n");
      out.write("                                                                        <div class=\"controls\">\r\n");
      out.write("                                                                            <select name=\"level\" id=\"level\">\r\n");
      out.write("                                                                                <option value=\"\"> ");
 out.println(String.valueOf("-Please Select-"));
      out.write("</option>\r\n");
      out.write("                                                                                <option value=\"1\">Supervisor</option>\r\n");
      out.write("                                                                                <option value=\"2\">FPS Officer</option>\r\n");
      out.write("                                                                                <option value=\"3\">Pathologist</option>\r\n");
      out.write("                                                                                <option value=\"4\">Administrator</option>\r\n");
      out.write("\r\n");
      out.write("                                                                            </select>\r\n");
      out.write("                                                                        </div>\r\n");
      out.write("                                                                    </div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("                                                                    <div class=\"control-group error \">\r\n");
      out.write("                                                                        <label  class=\"control-label\" for=\"active\">Active:</label>\r\n");
      out.write("                                                                        ");
      out.write("\r\n");
      out.write("                                                                        <div class=\"controls\">\r\n");
      out.write("                                                                            <select name=\"active\" tabindex=\"1\" id=\"active\">\r\n");
      out.write("                                                                                <option value=\"\"> ");
 out.println(String.valueOf("-Please Select-"));
      out.write("</option>\r\n");
      out.write("                                                                                <option value=\"False\">False</option>\r\n");
      out.write("                                                                                <option value=\"True\">True</option>\r\n");
      out.write("                                                                            </select>\r\n");
      out.write("                                                                        </div>\r\n");
      out.write("                                                                    </div>\r\n");
      out.write("\r\n");
      out.write("                                                                </fieldset>\r\n");
      out.write("                                                                <br/> <br/>                                 \r\n");
      out.write("                                                                <div class=\"offset4\">\r\n");
      out.write("                                                                    <input type=\"submit\"  class=\"btn btn-primary\" type=\"button\" value=\"Add User\" /> \r\n");
      out.write("                                                                    ");
      out.write(" \r\n");
      out.write("                                                                </div>\r\n");
      out.write("\r\n");
      out.write("                                                                <br/> <br/> \r\n");
      out.write("\r\n");
      out.write("                                                            </div>\r\n");
      out.write("                                                        </form>\r\n");
      out.write("                                                    </div>           \r\n");
      out.write("                                                    </div>\r\n");
      out.write("\r\n");
      out.write("                                                    </div>       \r\n");
      out.write("                                                    </div>\r\n");
      out.write("                                                    <div id=\"RefList\" class=\"tab-pane ");
out.println(String.valueOf(main2));
      out.write(" \"> \r\n");
      out.write("                                                        ");
      out.write("\r\n");
      out.write("                                                        <div align=\"center\"><h2>Reference Lists </h2> </div> \r\n");
      out.write("                                                        <div class=\"tabbable\">\r\n");
      out.write("                                                            ");
      out.write("\r\n");
      out.write("                                                            <ul class=\"nav nav-tabs \" data-tabs=\"tabs\">\r\n");
      out.write("\r\n");
      out.write("                                                                <li class=\"");
out.println(String.valueOf(inst));
      out.write("\"><a href=\"#inst\" data-toggle=\"tab\">Institution</a> </li>\r\n");
      out.write("                                                                <li class=\"");
out.println(String.valueOf(analysis));
      out.write("\"><a href=\"#anlysis\" data-toggle=\"tab\">Type of Analysis</a></li>\r\n");
      out.write("                                                                <li class=\"");
out.println(String.valueOf(property));
      out.write("\"><a href=\"#prop\" data-toggle=\"tab\">Property</a></li>\r\n");
      out.write("                                                                <li class=\"");
out.println(String.valueOf(vehi));
      out.write("\"><a href=\"#vehicles\" data-toggle=\"tab\">Vehicles</a></li>\r\n");
      out.write("                                                                <li class=\"");
out.println(String.valueOf(rank));
      out.write("\"><a href=\"#rank\" data-toggle=\"tab\">Rank</a></li>\r\n");
      out.write("                                                                <li class=\"");
out.println(String.valueOf(gender));
      out.write("\"><a href=\"#gender\" data-toggle=\"tab\">Gender</a></li>\r\n");
      out.write("                                                                <li class=\"");
out.println(String.valueOf(occu));
      out.write("\"><a href=\"#occupation\" data-toggle=\"tab\">Occupation</a></li>\r\n");
      out.write("                                                                <li class=\"");
out.println(String.valueOf(race));
      out.write("\"><a href=\"#race\" data-toggle=\"tab\">Race</a></li>\r\n");
      out.write("                                                                <li class=\"");
out.println(String.valueOf(marital));
      out.write("\"><a href=\"#mStatus\" data-toggle=\"tab\">Marital Status</a></li>\r\n");
      out.write("                                                                <li class=\"");
out.println(String.valueOf(organisation));
      out.write("\"><a href=\"#org\" data-toggle=\"tab\">Organisation</a></li>\r\n");
      out.write("                                                                <li class=\"");
out.println(String.valueOf(province));
      out.write("\"><a href=\"#province\" data-toggle=\"tab\">Province</a></li>\r\n");
      out.write("                                                                <li class=\"");
out.println(String.valueOf(icd10));
      out.write("\"><a href=\"#icd10Codes\" data-toggle=\"tab\">ICD10 Codes</a></li>\r\n");
      out.write("                                                                <li class=\"");
out.println(String.valueOf(manner));
      out.write("\"><a href=\"#mDeath\" data-toggle=\"tab\">Manner of Death</a></li>\r\n");
      out.write("                                                                <li class=\"");
out.println(String.valueOf(sample));
      out.write("\"><a href=\"#sType\" data-toggle=\"tab\">Sample Type</a></li>\r\n");
      out.write("                                                                <li class=\"");
out.println(String.valueOf(status));
      out.write("\"><a href=\"#status\" data-toggle=\"tab\">Status</a></li>\r\n");
      out.write("                                                                <li class=\"");
out.println(String.valueOf(relationship));
      out.write("\"><a href=\"#relationship\" data-toggle=\"tab\">Relationship</a></li>\r\n");
      out.write("\r\n");
      out.write("                                                            </ul>\r\n");
      out.write("                                                            <div class=\"tab-content\" >\r\n");
      out.write("                                                                <div id=\"inst\" class=\"tab-pane ");
out.println(String.valueOf(inst));
      out.write("\">  \r\n");
      out.write("                                                                    <div align=\"center\"><h2>Institution </h2> </div>\r\n");
      out.write("\r\n");
      out.write("                                                                    <div class=\"offset2 \">\r\n");
      out.write("                                                                        <form name=\"AddInsitution\" id=\"AddInsitution\" method=\"post\" action=\"ReferenceListServlet\"  >\r\n");
      out.write("                                                                            <input type=\"text\" name=\"form\" value=\"AddInsitution\" style=\"visibility: hidden\" />\r\n");
      out.write("                                                                            <div class=\"control-group form-horizontal\">\r\n");
      out.write("                                                                                <label class=\"control-label\" for=\"txtInsitution\">Institution Name:</label>\r\n");
      out.write("                                                                                <div class=\"controls\">\r\n");
      out.write("                                                                                    <input type=\"text\" id=\"txtInsitution\" name=\"txtInsitution\"   />\r\n");
      out.write("                                                                                    <input type=\"submit\" value=\"Add Institution\" name=\"cmdInsitution\" />\r\n");
      out.write("                                                                                </div>\r\n");
      out.write("\r\n");
      out.write("                                                                                <br/>  </div>\r\n");
      out.write("                                                                        </form>\r\n");
      out.write("                                                                        <div class=\"controls offset2\" >\r\n");
      out.write("                                                                            <label class=\"control-label\" for=\"InsitutionList\">Current Institutions:</label>\r\n");
      out.write("\r\n");
      out.write("                                                                            <select id=\"InsitutionList\" name=\"InsitutionList\" size=\"5\">\r\n");
      out.write("                                                                                ");

                                                                                    for (int i = 0; i < institutionList.size(); i++) {
                                                                                
      out.write("\r\n");
      out.write("                                                                                <option>");
 out.print(institutionList.get(i));
      out.write(" </option>\r\n");
      out.write("\r\n");
      out.write("                                                                                ");

                                                                                    }
                                                                                
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("                                                                            </select>\r\n");
      out.write("                                                                        </div>\r\n");
      out.write("                                                                    </div>     \r\n");
      out.write("                                                                    <div  class=\"offset3\">\r\n");
      out.write("                                                                        <label  > ");
 out.println(String.valueOf(instiResult));
      out.write("</label>\r\n");
      out.write("                                                                    </div>   <br/>\r\n");
      out.write("                                                                    <br/>\r\n");
      out.write("                                                                </div>\r\n");
      out.write("                                                                <div id=\"anlysis\" class=\"tab-pane ");
out.println(String.valueOf(analysis));
      out.write("\"> \r\n");
      out.write("                                                                    <div align=\"center\"><h2>Type of Analysis </h2> </div> \r\n");
      out.write("                                                                    <div class=\"offset2 \">\r\n");
      out.write("                                                                        <form name=\"AddAnalysis\" id=\"AddAnalysis\" method=\"post\" action=\"ReferenceListServlet\"  >\r\n");
      out.write("                                                                            <input type=\"text\" name=\"form\" value=\"AddAnalysis\" style=\"visibility: hidden\" />\r\n");
      out.write("                                                                            <div class=\"control-group form-horizontal\">\r\n");
      out.write("                                                                                <label class=\"control-label\" for=\"txtAnalysis\">Analysis Type Name:</label>\r\n");
      out.write("                                                                                <div class=\"controls\">\r\n");
      out.write("                                                                                    <input type=\"text\" id=\"txtAnalysis\" name=\"txtAnalysis\"   />\r\n");
      out.write("                                                                                    <input type=\"submit\" value=\"Add Analysis\" name=\"cmdAnalysis\" />\r\n");
      out.write("                                                                                </div>\r\n");
      out.write("\r\n");
      out.write("                                                                                <br/>  </div>\r\n");
      out.write("                                                                        </form>\r\n");
      out.write("                                                                        <div class=\"controls offset2\" >\r\n");
      out.write("                                                                            <label class=\"control-label\" for=\"AnalysisList\">Current Type of Analysis:</label>\r\n");
      out.write("\r\n");
      out.write("                                                                            <select id=\"AnalysisList\" name=\"AnalysisList\" size=\"5\">\r\n");
      out.write("                                                                                ");

                                                                                    for (int i = 0; i < analysisList.size(); i++) {
                                                                                
      out.write("\r\n");
      out.write("                                                                                <option>");
 out.print(analysisList.get(i));
      out.write(" </option>\r\n");
      out.write("\r\n");
      out.write("                                                                                ");

                                                                                    }
                                                                                
      out.write("\r\n");
      out.write("\r\n");
      out.write("                                                                            </select>\r\n");
      out.write("                                                                        </div>\r\n");
      out.write("                                                                    </div> \r\n");
      out.write("                                                                    ");
      out.write(" \r\n");
      out.write("                                                                    <div  class=\"offset3\">\r\n");
      out.write("                                                                        <label  > ");
 out.println(String.valueOf(analysisResult));
      out.write("</label>\r\n");
      out.write("                                                                    </div>\r\n");
      out.write("                                                                    <br/>\r\n");
      out.write("                                                                    <br/>\r\n");
      out.write("                                                                </div>\r\n");
      out.write("\r\n");
      out.write("                                                                <div id=\"prop\" class=\"tab-pane ");
out.println(String.valueOf(property));
      out.write(" \"> \r\n");
      out.write("                                                                    <div align=\"center\"><h2>Property</h2> </div>                   \r\n");
      out.write("                                                                </div>\r\n");
      out.write("\r\n");
      out.write("                                                                <div id=\"vehicles\" class=\"tab-pane ");
out.println(String.valueOf(vehi));
      out.write(" \"> \r\n");
      out.write("                                                                    <div align=\"center\"><h2>Vehicles</h2> </div>                   \r\n");
      out.write("                                                                </div>\r\n");
      out.write("\r\n");
      out.write("                                                                <div id=\"rank\" class=\"tab-pane ");
out.println(String.valueOf(rank));
      out.write("\"> \r\n");
      out.write("                                                                    <div align=\"center\"><h2>Rank</h2> </div>\r\n");
      out.write("                                                                    <div class=\"offset2 \">\r\n");
      out.write("                                                                        <form name=\"AddRank\" id=\"AddRank\" method=\"post\" action=\"ReferenceListServlet\"  >\r\n");
      out.write("                                                                            <input type=\"text\" name=\"form\" value=\"AddRank\" style=\"visibility: hidden\" />\r\n");
      out.write("                                                                            <div class=\"control-group form-horizontal\">\r\n");
      out.write("                                                                                <label class=\"control-label\" for=\"txtRank\">Rank Name:</label>\r\n");
      out.write("                                                                                <div class=\"controls\">\r\n");
      out.write("                                                                                    <input type=\"text\" id=\"txtRank\" name=\"txtRank\"   />\r\n");
      out.write("                                                                                    <input type=\"submit\" value=\"Add Rank\" name=\"cmdRank\" />\r\n");
      out.write("                                                                                </div>\r\n");
      out.write("\r\n");
      out.write("                                                                                <br/>  </div>\r\n");
      out.write("                                                                        </form>\r\n");
      out.write("                                                                        <div class=\"controls offset2\" >\r\n");
      out.write("                                                                            <label class=\"control-label\" for=\"RankList\">Current Ranks:</label>\r\n");
      out.write("\r\n");
      out.write("                                                                            <select id=\"RankList\" name=\"RankList\" size=\"5\">\r\n");
      out.write("                                                                                ");

                                                                                    for (int i = 0; i < rankList.size(); i++) {
                                                                                
      out.write("\r\n");
      out.write("                                                                                <option>");
 out.print(rankList.get(i));
      out.write(" </option>\r\n");
      out.write("\r\n");
      out.write("                                                                                ");

                                                                                    }
                                                                                
      out.write("\r\n");
      out.write("                                                                            </select>\r\n");
      out.write("                                                                        </div>\r\n");
      out.write("                                                                    </div> \r\n");
      out.write("                                                                    ");
      out.write(" \r\n");
      out.write("                                                                    <div  class=\"offset3\">\r\n");
      out.write("                                                                        <label  > ");
 out.println(String.valueOf(rankResult));
      out.write("</label>\r\n");
      out.write("                                                                    </div>\r\n");
      out.write("                                                                    <br/>\r\n");
      out.write("                                                                    <br/>\r\n");
      out.write("                                                                </div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("                                                                <div id=\"gender\" class=\"tab-pane ");
out.println(String.valueOf(gender));
      out.write(" \"> \r\n");
      out.write("                                                                    <div align=\"center\"><h2>Gender</h2> </div>       \r\n");
      out.write("                                                                    <div class=\"offset2 \">\r\n");
      out.write("                                                                        <form name=\"AddGender\" id=\"AddGender\" method=\"post\" action=\"ReferenceListServlet\"  >\r\n");
      out.write("                                                                            <input type=\"text\" name=\"form\" value=\"AddGender\" style=\"visibility: hidden\" />\r\n");
      out.write("                                                                            <div class=\"control-group form-horizontal\">\r\n");
      out.write("                                                                                <label class=\"control-label\" for=\"txtGender\">Gender Type:</label>\r\n");
      out.write("                                                                                <div class=\"controls\">\r\n");
      out.write("                                                                                    <input type=\"text\" id=\"txtGender\" name=\"txtGender\"   />\r\n");
      out.write("                                                                                    <input type=\"submit\" value=\"Add Gender\" name=\"cmdGender\" />\r\n");
      out.write("                                                                                </div>\r\n");
      out.write("\r\n");
      out.write("                                                                                <br/>  </div>\r\n");
      out.write("                                                                        </form>\r\n");
      out.write("                                                                        <div class=\"controls offset2\" >\r\n");
      out.write("                                                                            <label class=\"control-label\" for=\"GenderList\">Current Gender Types:</label>\r\n");
      out.write("\r\n");
      out.write("                                                                            <select id=\"GenderList\" name=\"GenderList\" size=\"5\">\r\n");
      out.write("                                                                                ");

                                                                                    for (int i = 0; i < genderList.size(); i++) {
                                                                                
      out.write("\r\n");
      out.write("                                                                                <option>");
 out.print(genderList.get(i));
      out.write(" </option>\r\n");
      out.write("\r\n");
      out.write("                                                                                ");

                                                                                    }
                                                                                
      out.write("\r\n");
      out.write("                                                                            </select>\r\n");
      out.write("                                                                        </div>\r\n");
      out.write("                                                                    </div> \r\n");
      out.write("                                                                    ");
      out.write(" \r\n");
      out.write("                                                                    <div  class=\"offset3\">\r\n");
      out.write("                                                                        <label  > ");
 out.println(String.valueOf(genderResult));
      out.write("</label>\r\n");
      out.write("                                                                    </div>\r\n");
      out.write("                                                                    <br/>\r\n");
      out.write("                                                                    <br/>\r\n");
      out.write("                                                                </div>\r\n");
      out.write("\r\n");
      out.write("                                                                <div id=\"occupation\" class=\"tab-pane ");
out.println(String.valueOf(occu));
      out.write(" \"> \r\n");
      out.write("                                                                    <div align=\"center\"><h2>Occupation</h2> </div> \r\n");
      out.write("                                                                    <div class=\"offset2 \">\r\n");
      out.write("                                                                        <form name=\"AddOccu\" id=\"AddOccu\" method=\"post\" action=\"ReferenceListServlet\"  >\r\n");
      out.write("                                                                            <input type=\"text\" name=\"form\" value=\"AddOccu\" style=\"visibility: hidden\" />\r\n");
      out.write("                                                                            <div class=\"control-group form-horizontal\">\r\n");
      out.write("                                                                                <label class=\"control-label\" for=\"txtOccu\">Occupation Type:</label>\r\n");
      out.write("                                                                                <div class=\"controls\">\r\n");
      out.write("                                                                                    <input type=\"text\" id=\"txtOccu\" name=\"txtOccu\"   />\r\n");
      out.write("                                                                                    <input type=\"submit\" value=\"Add Occupation\" name=\"cmdOccu\" />\r\n");
      out.write("                                                                                </div>\r\n");
      out.write("\r\n");
      out.write("                                                                                <br/>  </div>\r\n");
      out.write("                                                                        </form>\r\n");
      out.write("                                                                        <div class=\"controls offset2\" >\r\n");
      out.write("                                                                            <label class=\"control-label\" for=\"OccuList\">Current Occupation Types:</label>\r\n");
      out.write("\r\n");
      out.write("                                                                            <select id=\"OccuList\" name=\"OccuList\" size=\"5\">\r\n");
      out.write("                                                                                ");

                                                                                    for (int i = 0; i < occupationList.size(); i++) {
                                                                                
      out.write("\r\n");
      out.write("                                                                                <option>");
 out.print(occupationList.get(i));
      out.write(" </option>\r\n");
      out.write("\r\n");
      out.write("                                                                                ");

                                                                                    }
                                                                                
      out.write("\r\n");
      out.write("                                                                            </select>\r\n");
      out.write("                                                                        </div>\r\n");
      out.write("                                                                    </div> \r\n");
      out.write("                                                                    ");
      out.write(" \r\n");
      out.write("                                                                    <div  class=\"offset3\">\r\n");
      out.write("                                                                        <label  > ");
 out.println(String.valueOf(occupationResult));
      out.write("</label>\r\n");
      out.write("                                                                    </div>\r\n");
      out.write("                                                                    <br/>\r\n");
      out.write("                                                                    <br/>\r\n");
      out.write("                                                                </div>\r\n");
      out.write("\r\n");
      out.write("                                                                <div id=\"race\" class=\"tab-pane ");
out.println(String.valueOf(race));
      out.write(" \"> \r\n");
      out.write("                                                                    <div align=\"center\"><h2>Race </h2> </div>      \r\n");
      out.write("                                                                    ");
      out.write("\r\n");
      out.write("                                                                    <div class=\"offset2 \">\r\n");
      out.write("                                                                        <form name=\"AddRace\" id=\"AddRace\" method=\"post\" action=\"ReferenceListServlet\"  >\r\n");
      out.write("                                                                            <input type=\"text\" name=\"form\" value=\"AddRace\" style=\"visibility: hidden\" />\r\n");
      out.write("                                                                            <div class=\"control-group form-horizontal\">\r\n");
      out.write("                                                                                <label class=\"control-label\" for=\"txtRace\">Race Type:</label>\r\n");
      out.write("                                                                                <div class=\"controls\">\r\n");
      out.write("                                                                                    <input type=\"text\" id=\"txtRace\" name=\"txtRace\"   />\r\n");
      out.write("                                                                                    <input type=\"submit\" value=\"Add Race\" name=\"cmdRace\" />\r\n");
      out.write("                                                                                </div>\r\n");
      out.write("\r\n");
      out.write("                                                                                <br/>  </div>\r\n");
      out.write("                                                                        </form>\r\n");
      out.write("                                                                        <div class=\"controls offset2\" >\r\n");
      out.write("                                                                            <label class=\"control-label\" for=\"RaceList\">Current Race Types:</label>\r\n");
      out.write("\r\n");
      out.write("                                                                            <select id=\"RaceList\" name=\"RaceList\" size=\"5\">\r\n");
      out.write("                                                                                ");

                                                                                    for (int i = 0; i < raceList.size(); i++) {
                                                                                
      out.write("\r\n");
      out.write("                                                                                <option>");
 out.print(raceList.get(i));
      out.write(" </option>\r\n");
      out.write("\r\n");
      out.write("                                                                                ");

                                                                                    }
                                                                                
      out.write("\r\n");
      out.write("                                                                            </select>\r\n");
      out.write("                                                                        </div>\r\n");
      out.write("                                                                    </div> \r\n");
      out.write("                                                                    ");
      out.write(" \r\n");
      out.write("                                                                    <div  class=\"offset3\">\r\n");
      out.write("                                                                        <label  > ");
 out.println(String.valueOf(raceResult));
      out.write("</label>\r\n");
      out.write("                                                                    </div>\r\n");
      out.write("                                                                    <br/>\r\n");
      out.write("                                                                    <br/>\r\n");
      out.write("                                                                </div>\r\n");
      out.write("\r\n");
      out.write("                                                                <div id=\"mStatus\" class=\"tab-pane ");
out.println(String.valueOf(marital));
      out.write(" \"> \r\n");
      out.write("                                                                    <div align=\"center\"><h2>Marital Status </h2> </div> \r\n");
      out.write("                                                                    ");
      out.write("\r\n");
      out.write("                                                                    <div class=\"offset2 \">\r\n");
      out.write("                                                                        <form name=\"AddMarital\" id=\"AddMarital\" method=\"post\" action=\"ReferenceListServlet\"  >\r\n");
      out.write("                                                                            <input type=\"text\" name=\"form\" value=\"AddMarital\" style=\"visibility: hidden\" />\r\n");
      out.write("                                                                            <div class=\"control-group form-horizontal\">\r\n");
      out.write("                                                                                <label class=\"control-label\" for=\"txtMarital\">Marital Status Type:</label>\r\n");
      out.write("                                                                                <div class=\"controls\">\r\n");
      out.write("                                                                                    <input type=\"text\" id=\"txtMarital\" name=\"txtMarital\"   />\r\n");
      out.write("                                                                                    <input type=\"submit\" value=\"Add Marital Status\" name=\"cmdMarital\" />\r\n");
      out.write("                                                                                </div>\r\n");
      out.write("\r\n");
      out.write("                                                                                <br/>  </div>\r\n");
      out.write("                                                                        </form>\r\n");
      out.write("                                                                        <div class=\"controls offset2\" >\r\n");
      out.write("                                                                            <label class=\"control-label\" for=\"MaritalList\">Current Marital Status Types:</label>\r\n");
      out.write("\r\n");
      out.write("                                                                            <select id=\"MaritalList\" name=\"MaritalList\" size=\"5\">\r\n");
      out.write("                                                                                ");

                                                                                    for (int i = 0; i < maritalstatusList.size(); i++) {
                                                                                
      out.write("\r\n");
      out.write("                                                                                <option>");
 out.print(maritalstatusList.get(i));
      out.write(" </option>\r\n");
      out.write("\r\n");
      out.write("                                                                                ");

                                                                                    }
                                                                                
      out.write("\r\n");
      out.write("                                                                            </select>\r\n");
      out.write("                                                                        </div>\r\n");
      out.write("                                                                    </div> \r\n");
      out.write("                                                                    ");
      out.write(" \r\n");
      out.write("                                                                    <div  class=\"offset3\">\r\n");
      out.write("                                                                        <label  > ");
 out.println(String.valueOf(maritalResult));
      out.write("</label>\r\n");
      out.write("                                                                    </div>\r\n");
      out.write("                                                                    <br/>\r\n");
      out.write("                                                                    <br/>\r\n");
      out.write("                                                                </div>\r\n");
      out.write("\r\n");
      out.write("                                                                <div id=\"org\" class=\"tab-pane ");
out.println(String.valueOf(organisation));
      out.write(" \"> \r\n");
      out.write("                                                                    <div align=\"center\"><h2> Organisation </h2> </div>\r\n");
      out.write("\r\n");
      out.write("                                                                </div>\r\n");
      out.write("\r\n");
      out.write("                                                                <div  id=\"province\" class=\"tab-pane ");
out.println(String.valueOf(province));
      out.write("\"> \r\n");
      out.write("                                                                    <div align=\"center\"><h2> Province </h2> </div>\r\n");
      out.write("                                                                    ");
      out.write("\r\n");
      out.write("                                                                    <div class=\"offset2 \">\r\n");
      out.write("                                                                        <form name=\"AddProvince\" id=\"AddProvince\" method=\"post\" action=\"ReferenceListServlet\"  >\r\n");
      out.write("                                                                            <input type=\"text\" name=\"form\" value=\"AddProvince\" style=\"visibility: hidden\" />\r\n");
      out.write("                                                                            <div class=\"control-group form-horizontal\">\r\n");
      out.write("                                                                                <label class=\"control-label\" for=\"txtProvince\">Province:</label>\r\n");
      out.write("                                                                                <div class=\"controls\">\r\n");
      out.write("                                                                                    <input type=\"text\" id=\"txtProvince\" name=\"txtProvince\"   />\r\n");
      out.write("                                                                                    <input type=\"submit\" value=\"Add Province\" name=\"cmdProvince\" />\r\n");
      out.write("                                                                                </div>\r\n");
      out.write("\r\n");
      out.write("                                                                                <br/>  </div>\r\n");
      out.write("                                                                        </form>\r\n");
      out.write("                                                                        <div class=\"controls offset2\" >\r\n");
      out.write("                                                                            <label class=\"control-label\" for=\"ProvinceList\">Current Provinces:</label>\r\n");
      out.write("\r\n");
      out.write("                                                                            <select id=\"ProvinceList\" name=\"ProvinceList\" size=\"5\">\r\n");
      out.write("                                                                                ");

                                                                                    for (int i = 0; i < provinceList.size(); i++) {
                                                                                
      out.write("\r\n");
      out.write("                                                                                <option>");
 out.print(provinceList.get(i));
      out.write(" </option>\r\n");
      out.write("\r\n");
      out.write("                                                                                ");

                                                                                    }
                                                                                
      out.write("\r\n");
      out.write("                                                                            </select>\r\n");
      out.write("                                                                        </div>\r\n");
      out.write("                                                                    </div> \r\n");
      out.write("                                                                    ");
      out.write(" \r\n");
      out.write("                                                                    <div  class=\"offset3\">\r\n");
      out.write("                                                                        <label  > ");
 out.println(String.valueOf(provinceResult));
      out.write("</label>\r\n");
      out.write("                                                                    </div>\r\n");
      out.write("                                                                    <br/>\r\n");
      out.write("                                                                    <br/>\r\n");
      out.write("                                                                </div>\r\n");
      out.write("\r\n");
      out.write("                                                                <div id=\"icd10Codes\" class=\"tab-pane ");
out.println(String.valueOf(icd10));
      out.write(" \"> \r\n");
      out.write("                                                                    <div align=\"center\"><h2>ICD10 Codes </h2> </div>      \r\n");
      out.write("                                                                    ");
      out.write("\r\n");
      out.write("                                                                    <div class=\"offset2 \">\r\n");
      out.write("                                                                        <form name=\"AddICD10\" id=\"AddICD10\" method=\"post\" action=\"ReferenceListServlet\"  >\r\n");
      out.write("                                                                            <input type=\"text\" name=\"form\" value=\"AddICD10\" style=\"visibility: hidden\" />\r\n");
      out.write("                                                                            <div class=\"control-group form-horizontal\">\r\n");
      out.write("                                                                                <label class=\"control-label\" for=\"txtICD10\">ICD10 code:</label>\r\n");
      out.write("                                                                                <div class=\"controls\">\r\n");
      out.write("                                                                                    <input type=\"text\" id=\"txtICD10\" name=\"txtICD10\"   />\r\n");
      out.write("                                                                                    <input type=\"submit\" value=\"Add ICD10 Code\" name=\"cmdICD10\" />\r\n");
      out.write("                                                                                </div>\r\n");
      out.write("\r\n");
      out.write("                                                                                <br/>  </div>\r\n");
      out.write("                                                                        </form>\r\n");
      out.write("                                                                        <div class=\"controls offset2\" >\r\n");
      out.write("                                                                            <label class=\"control-label\" for=\"ICD10List\">Current ICD10 Code(s):</label>\r\n");
      out.write("\r\n");
      out.write("                                                                            <select id=\"ICD10List\" name=\"ICD10List\" size=\"5\">\r\n");
      out.write("                                                                                ");

                                                                                    for (int i = 0; i < icd10List.size(); i++) {
                                                                                
      out.write("\r\n");
      out.write("                                                                                <option>");
 out.print(icd10List.get(i));
      out.write(" </option>\r\n");
      out.write("\r\n");
      out.write("                                                                                ");

                                                                                    }
                                                                                
      out.write("\r\n");
      out.write("                                                                            </select>\r\n");
      out.write("                                                                        </div>\r\n");
      out.write("                                                                    </div> \r\n");
      out.write("                                                                    ");
      out.write(" \r\n");
      out.write("                                                                    <div  class=\"offset3\">\r\n");
      out.write("                                                                        <label  > ");
 out.println(String.valueOf(iCD10Result));
      out.write("</label>\r\n");
      out.write("                                                                    </div>\r\n");
      out.write("                                                                    <br/>\r\n");
      out.write("                                                                    <br/>\r\n");
      out.write("                                                                </div>\r\n");
      out.write("\r\n");
      out.write("                                                                <div id=\"mDeath\" class=\"tab-pane ");
out.println(String.valueOf(manner));
      out.write(" \"> \r\n");
      out.write("                                                                    <div align=\"center\"><h2> Manner of Death</h2> </div>  \r\n");
      out.write("                                                                    ");
      out.write("\r\n");
      out.write("                                                                    <div class=\"offset2 \">\r\n");
      out.write("                                                                        <form name=\"AddManner\" id=\"AddManner\" method=\"post\" action=\"ReferenceListServlet\"  >\r\n");
      out.write("                                                                            <input type=\"text\" name=\"form\" value=\"AddManner\" style=\"visibility: hidden\" />\r\n");
      out.write("                                                                            <div class=\"control-group form-horizontal\">\r\n");
      out.write("                                                                                <label class=\"control-label\" for=\"txtManner\">Manner of Death:</label>\r\n");
      out.write("                                                                                <div class=\"controls\">\r\n");
      out.write("                                                                                    <input type=\"text\" id=\"txtManner\" name=\"txtManner\"   />\r\n");
      out.write("                                                                                    <input type=\"submit\" value=\"Add Manner of Death\" name=\"cmdManner\" />\r\n");
      out.write("                                                                                </div>\r\n");
      out.write("\r\n");
      out.write("                                                                                <br/>  </div>\r\n");
      out.write("                                                                        </form>\r\n");
      out.write("                                                                        <div class=\"controls offset2\" >\r\n");
      out.write("                                                                            <label class=\"control-label\" for=\"MannerList\">Current Manner of Death(s):</label>\r\n");
      out.write("\r\n");
      out.write("                                                                            <select id=\"MannerList\" name=\"MannerList\" size=\"5\">\r\n");
      out.write("                                                                                ");

                                                                                    for (int i = 0; i < mannerofdeathList.size(); i++) {
                                                                                
      out.write("\r\n");
      out.write("                                                                                <option>");
 out.print(mannerofdeathList.get(i));
      out.write(" </option>\r\n");
      out.write("\r\n");
      out.write("                                                                                ");

                                                                                    }
                                                                                
      out.write("\r\n");
      out.write("                                                                            </select>\r\n");
      out.write("                                                                        </div>\r\n");
      out.write("                                                                    </div> \r\n");
      out.write("                                                                    ");
      out.write(" \r\n");
      out.write("                                                                    <div  class=\"offset3\">\r\n");
      out.write("                                                                        <label  > ");
 out.println(String.valueOf(mannerResult));
      out.write("</label>\r\n");
      out.write("                                                                    </div>\r\n");
      out.write("                                                                    <br/>\r\n");
      out.write("                                                                    <br/>\r\n");
      out.write("                                                                </div>\r\n");
      out.write("\r\n");
      out.write("                                                                <div id=\"sType\" class=\"tab-pane ");
out.println(String.valueOf(sample));
      out.write(" \"> \r\n");
      out.write("                                                                    <div align=\"center\"><h2>Sample Type</h2> </div>   \r\n");
      out.write("                                                                    ");
      out.write("\r\n");
      out.write("                                                                    <div class=\"offset2 \">\r\n");
      out.write("                                                                        <form name=\"AddSample\" id=\"AddSample\" method=\"post\" action=\"ReferenceListServlet\"  >\r\n");
      out.write("                                                                            <input type=\"text\" name=\"form\" value=\"AddSample\" style=\"visibility: hidden\" />\r\n");
      out.write("                                                                            <div class=\"control-group form-horizontal\">\r\n");
      out.write("                                                                                <label class=\"control-label\" for=\"txtSample\">Sample Type:</label>\r\n");
      out.write("                                                                                <div class=\"controls\">\r\n");
      out.write("                                                                                    <input type=\"text\" id=\"txtSample\" name=\"txtSample\"   />\r\n");
      out.write("                                                                                    <input type=\"submit\" value=\"Add Sample Type\" name=\"cmdSample\" />\r\n");
      out.write("                                                                                </div>\r\n");
      out.write("\r\n");
      out.write("                                                                                <br/>  </div>\r\n");
      out.write("                                                                        </form>\r\n");
      out.write("                                                                        <div class=\"controls offset2\" >\r\n");
      out.write("                                                                            <label class=\"control-label\" for=\"SampleList\">Current Sample Types:</label>\r\n");
      out.write("\r\n");
      out.write("                                                                            <select id=\"SampleList\" name=\"SampleList\" size=\"5\">\r\n");
      out.write("                                                                                ");

                                                                                    for (int i = 0; i < sampleList.size(); i++) {
                                                                                
      out.write("\r\n");
      out.write("                                                                                <option>");
 out.print(sampleList.get(i));
      out.write(" </option>\r\n");
      out.write("\r\n");
      out.write("                                                                                ");

                                                                                    }
                                                                                
      out.write("\r\n");
      out.write("                                                                            </select>\r\n");
      out.write("                                                                        </div>\r\n");
      out.write("                                                                    </div> \r\n");
      out.write("                                                                    ");
      out.write(" \r\n");
      out.write("                                                                    <div  class=\"offset3\">\r\n");
      out.write("                                                                        <label  > ");
 out.println(String.valueOf(sampleResult));
      out.write("</label>\r\n");
      out.write("                                                                    </div>\r\n");
      out.write("                                                                    <br/>\r\n");
      out.write("                                                                    <br/>\r\n");
      out.write("                                                                </div>\r\n");
      out.write("\r\n");
      out.write("                                                                <div id=\"status\" class=\"tab-pane ");
out.println(String.valueOf(status));
      out.write(" \"> \r\n");
      out.write("                                                                    <div align=\"center\"><h2>Status</h2> </div>     \r\n");
      out.write("                                                                    ");
      out.write("\r\n");
      out.write("                                                                    <div class=\"offset2 \">\r\n");
      out.write("                                                                        <form name=\"AddStatus\" id=\"AddStatus\" method=\"post\" action=\"ReferenceListServlet\"  >\r\n");
      out.write("                                                                            <input type=\"text\" name=\"form\" value=\"AddStatus\" style=\"visibility: hidden\" />\r\n");
      out.write("                                                                            <div class=\"control-group form-horizontal\">\r\n");
      out.write("                                                                                <label class=\"control-label\" for=\"txtStatus\">Body Status :</label>\r\n");
      out.write("                                                                                <div class=\"controls\">\r\n");
      out.write("                                                                                    <input type=\"text\" id=\"txtStatus\" name=\"txtStatus\"   />\r\n");
      out.write("                                                                                    <input type=\"submit\" value=\"Add Body Status Type\" name=\"cmdStatus\" />\r\n");
      out.write("                                                                                </div>\r\n");
      out.write("\r\n");
      out.write("                                                                                <br/>  </div>\r\n");
      out.write("                                                                        </form>\r\n");
      out.write("                                                                        <div class=\"controls offset2\" >\r\n");
      out.write("                                                                            <label class=\"control-label\" for=\"StatusList\">Current Body Status Categories:</label>\r\n");
      out.write("\r\n");
      out.write("                                                                            <select id=\"StatusList  \" name=\"StatusList\" size=\"5\">\r\n");
      out.write("                                                                                ");

                                                                                    for (int i = 0; i < bodystatusList.size(); i++) {
                                                                                
      out.write("\r\n");
      out.write("                                                                                <option>");
 out.print(bodystatusList.get(i));
      out.write(" </option>\r\n");
      out.write("\r\n");
      out.write("                                                                                ");

                                                                                    }
                                                                                
      out.write("\r\n");
      out.write("                                                                            </select>\r\n");
      out.write("                                                                        </div>\r\n");
      out.write("                                                                    </div> \r\n");
      out.write("                                                                    ");
      out.write(" \r\n");
      out.write("                                                                    <div  class=\"offset3\">\r\n");
      out.write("                                                                        <label  > ");
 out.println(String.valueOf(statusResult));
      out.write("</label>\r\n");
      out.write("                                                                    </div>\r\n");
      out.write("                                                                    <br/>\r\n");
      out.write("                                                                    <br/>\r\n");
      out.write("                                                                </div>\r\n");
      out.write("\r\n");
      out.write("                                                                <div id=\"relationship\" class=\"tab-pane ");
out.println(String.valueOf(relationship));
      out.write(" \"> \r\n");
      out.write("                                                                    <div align=\"center\"><h2>Relationship</h2> </div>   \r\n");
      out.write("                                                                    ");
      out.write("\r\n");
      out.write("                                                                    <div class=\"offset2 \">\r\n");
      out.write("                                                                        <form name=\"AddRelationship\" id=\"AddRelationship\" method=\"post\" action=\"ReferenceListServlet\"  >\r\n");
      out.write("                                                                            <input type=\"text\" name=\"form\" value=\"AddRelationship\" style=\"visibility: hidden\" />\r\n");
      out.write("                                                                            <div class=\"control-group form-horizontal\">\r\n");
      out.write("                                                                                <label class=\"control-label\" for=\"txtRelationship\">Relationship Type:</label>\r\n");
      out.write("                                                                                <div class=\"controls\">\r\n");
      out.write("                                                                                    <input type=\"text\" id=\"txtRelationship\" name=\"txtRelationship\"   />\r\n");
      out.write("                                                                                    <input type=\"submit\" value=\"Add Relationship Type\" name=\"cmdRelationship\" />\r\n");
      out.write("                                                                                </div>\r\n");
      out.write("\r\n");
      out.write("                                                                                <br/>  </div>\r\n");
      out.write("                                                                        </form>\r\n");
      out.write("                                                                        <div class=\"controls offset2\" >\r\n");
      out.write("                                                                            <label class=\"control-label\" for=\"RelationshipList\">Current Relationship Type(s):</label>\r\n");
      out.write("\r\n");
      out.write("                                                                            <select id=\"RelationshipList\" name=\"RelationshipList\" size=\"5\">\r\n");
      out.write("                                                                                ");

                                                                                    for (int i = 0; i < relationshipList.size(); i++) {
                                                                                
      out.write("\r\n");
      out.write("                                                                                <option>");
 out.print(relationshipList.get(i));
      out.write(" </option>\r\n");
      out.write("\r\n");
      out.write("                                                                                ");

                                                                                    }
                                                                                
      out.write("\r\n");
      out.write("                                                                            </select>\r\n");
      out.write("                                                                        </div>\r\n");
      out.write("                                                                    </div> \r\n");
      out.write("                                                                    ");
      out.write(" \r\n");
      out.write("                                                                    <div  class=\"offset3\">\r\n");
      out.write("                                                                        <label  > ");
 out.println(String.valueOf(userResult));
      out.write("</label>\r\n");
      out.write("                                                                    </div>\r\n");
      out.write("                                                                    <br/>\r\n");
      out.write("                                                                    <br/>\r\n");
      out.write("                                                                </div>\r\n");
      out.write("                                                            </div>\r\n");
      out.write("\r\n");
      out.write("                                                        </div> \r\n");
      out.write("                                                    </div>           \r\n");
      out.write("                                                    </div>\r\n");
      out.write("\r\n");
      out.write("                                                    </div>\r\n");
      out.write("\r\n");
      out.write("                                                    </body>\r\n");
      out.write("                                                    </html>\r\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
