package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import database.Employee;

public final class Home_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <style type=\"text/css\">\r\n");
      out.write("            label.error { \r\n");
      out.write("                float: none; \r\n");
      out.write("                color: red; \r\n");
      out.write("                padding-left: .5em; \r\n");
      out.write("                vertical-align: top; \r\n");
      out.write("            }\r\n");
      out.write("        </style>\r\n");
      out.write("        <script language=\"javascript\" type=\"text/javascript\" src=\"https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js\"></script>\r\n");
      out.write("        <script language=\"javascript\" type=\"text/javascript\" src=\"http://ajax.aspnetcdn.com/ajax/jquery.validate/1.10.0/jquery.validate.min.js\"></script>\r\n");
      out.write("        <script src=\"js/SetFocus.js\"></script>\r\n");
      out.write("\r\n");
      out.write("        <link type=\"text/css\" rel=\"stylesheet\"  href=\"bootstrap/css/bootstrap.css\">           \r\n");
      out.write("        <script  src=\"bootstrap/js/bootstrap-tabs.js\"></script>\r\n");
      out.write("        <title>Gauteng Mortuary Management System</title>\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("\r\n");
      out.write("        <p>\r\n");
      out.write("\r\n");
      out.write("            <span style=\"float: left\">Welcome ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${employee.getName()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write(' ');
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${employee.getSurname()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</span>\r\n");
      out.write("            <span style=\"float: right\">Logout</span>\r\n");
      out.write("        </p>\r\n");
      out.write("        ");

            if (session.getAttribute("incidentlogged") != null) {
                out.println("<input name='incidentlogged' id='incidentlogged' type=hidden value=true>");
            }
        
      out.write("\r\n");
      out.write("        <div align=\"center\"><h1> <img src=\"Images/logo.jpg\" width=\"75\" height=\"75\"> Gauteng Mortuary Management System</h1></div>\r\n");
      out.write("        <div class=\"tabbable\">\r\n");
      out.write("            <ul class=\"nav nav-tabs \" data-tabs=\"tabs\">\r\n");
      out.write("                <li id=\"IncidentTab\" class=\"active\"><a href=\"#Incident\" data-toggle=\"tab\">Incidents</a> </li>\r\n");
      out.write("                <li id =\"BodyFileTab\"><a href=\"#BodyFile\" data-toggle=\"tab\">Body File</a></li>       \r\n");
      out.write("            </ul>\r\n");
      out.write("            <div class=\"tab-content\" >\r\n");
      out.write("                <div id=\"Incident\" class=\"tab-pane active\">  \r\n");
      out.write("                    ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "IncidentsTabContent.jsp", out, false);
      out.write(" \r\n");
      out.write("\r\n");
      out.write("                </div>\r\n");
      out.write("                <div id=\"BodyFile\" class=\"tab-pane \"> \r\n");
      out.write("                    <div align=\"center\"><h2>Body File </h2> </div>\r\n");
      out.write("\r\n");
      out.write("                </div>           \r\n");
      out.write("            </div>\r\n");
      out.write("\r\n");
      out.write("        </div>\r\n");
      out.write("\r\n");
      out.write("    </body>\r\n");
      out.write("</html>\r\n");
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
