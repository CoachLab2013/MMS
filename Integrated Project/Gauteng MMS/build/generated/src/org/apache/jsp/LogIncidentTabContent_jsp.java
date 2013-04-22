package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class LogIncidentTabContent_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/1.6.4/jquery.min.js\"></script>\n");
      out.write("        <link type=\"text/css\" rel=\"stylesheet\"  href=\"bootstrap/css/bootstrap.css\">           \n");
      out.write("        <script  src=\"bootstrap/js/bootstrap-tabs.js\"></script>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"tabbable\">\n");
      out.write("            <ul class=\"nav nav-tabs \" data-tabs=\"tabs\">\n");
      out.write("                <li id=\"IncidentDetailsTab\" class=\"active\"><a href=\"#IncidentDetails\" data-toggle=\"tab\">Incident Details</a> </li>\n");
      out.write("                <li id=\"CallDetailsTab\"><a href=\"#CallDetails\" data-toggle=\"tab\">Call Details</a></li>   \n");
      out.write("                <li id=\"DispatchVehicleTab\"><a href=\"#DispatchVehicle\" data-toggle=\"tab\">Dispatch Vehicle</a></li> \n");
      out.write("            </ul>\n");
      out.write("            <div class=\"tab-content\" >\n");
      out.write("                <div id=\"IncidentDetails\" class=\"tab-pane active\">  \n");
      out.write("                    ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "IncidentDetailsContent.jsp", out, false);
      out.write("\n");
      out.write("                </div>\n");
      out.write("                \n");
      out.write("                <div id=\"CallDetails\" class=\"tab-pane \"> \n");
      out.write("                    \n");
      out.write("                     ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "CallDetailsContent.jsp", out, false);
      out.write("\n");
      out.write("                </div> \n");
      out.write("                \n");
      out.write("                <div id=\"DispatchVehicle\" class=\"tab-pane \"> \n");
      out.write("                    ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "DispatchVehicleContent.jsp", out, false);
      out.write("\n");
      out.write("                </div> \n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
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
