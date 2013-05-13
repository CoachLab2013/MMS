package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import servlets.Tools;
import java.text.SimpleDateFormat;
import java.util.Calendar;

public final class IncidentDetailsContent_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("        <style type=\"text/css\">\r\n");
      out.write("                label.error { \r\n");
      out.write("                    float: none; \r\n");
      out.write("                    color: red; \r\n");
      out.write("                    padding-left: .5em; \r\n");
      out.write("                    vertical-align: top; \r\n");
      out.write("                }\r\n");
      out.write("            </style>\r\n");
      out.write("<script language=\"javascript\" type=\"text/javascript\" src=\"https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js\"></script>\r\n");
      out.write("<script language=\"javascript\" type=\"text/javascript\" src=\"http://ajax.aspnetcdn.com/ajax/jquery.validate/1.10.0/jquery.validate.min.js\"></script>\r\n");
      out.write(" <script src=\"js/IncidentDetailsScript.js\"></script>\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("        <legend>Incidents> Log Incident> Incident Details</legend>\r\n");
      out.write("        <form id=\"detailform\"  name=\"detailform\" class=\"form-horizontal\" method=\"post\" action=\"LogIncidentServlet\">\r\n");
      out.write("        <table>\r\n");
      out.write("            <tr>\r\n");
      out.write("                <td>FPS Incident Log Number:  </td> <td><input type=\"text\" id=\"fpsnumber\" name=\"fpsnumber\" readonly=\"true\" \r\n");
      out.write("                ");

                    Tools t = new Tools();
                    out.println("value ="+ t.getIncidentLogNumber());
                
      out.write("/></td>\r\n");
      out.write("            </tr>     \r\n");
      out.write("            <tr>\r\n");
      out.write("                <td>  SAPS\\ IR number reference number:</td> <td> <input type=\"text\" name=\"SAPSnumber\" id =\"SAPSnumber\"/> </td>\r\n");
      out.write("             </tr>\r\n");
      out.write("             <tr>     \r\n");
      out.write("                <td> Incident date:</td>  \r\n");
      out.write("                <td> \r\n");
      out.write("                    <select name=\"detailyear\" id=\"detailyear\">\r\n");
      out.write("                        <option selected=\"selected\">Year</option>>\r\n");
      out.write("                        ");
 
                           String timestamp = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(Calendar.getInstance().getTime());
                           String[] datetime = timestamp.split(" ");
                           String date[] = datetime[0].split("-");
                           String year = date[0];
                           int currentyear = Integer.parseInt(year);
                           String lastyear = Integer.toString(currentyear-1);
                           out.println("<option>"+lastyear+"</option>");
                           out.println("<option>"+year+"</option>");
                        
      out.write("\r\n");
      out.write("                    </select>\r\n");
      out.write(" \r\n");
      out.write("                    ");
 
                           out.print(t.makeMonth("detailmonth")+" ");
                           out.print(t.makeDay("detailday"));
                    
      out.write("\r\n");
      out.write("                </td>\r\n");
      out.write("             </tr>\r\n");
      out.write("             <tr>       \r\n");
      out.write("                <td> Incident time:</td> \r\n");
      out.write("                <td>\r\n");
      out.write("                    ");
 
                           out.print(t.makeHour("detailhour")+" ");
                           out.print(t.makeMinute("detailminute"));
                    
      out.write("\r\n");
      out.write("                </td>\r\n");
      out.write("             </tr>\r\n");
      out.write("             <tr> \r\n");
      out.write("                <td> Number of bodies:</td> \r\n");
      out.write("                <td>\r\n");
      out.write("                    <select name=\"numberofbodies\" id=\"numberofbodies\" >\r\n");
      out.write("                        <option selected=\"selected\">Select</option>\r\n");
      out.write("                        ");

                           for(int i=1;i<101;i++){
                               out.println("<option>"+i+"</option>");
                           }
                        
      out.write("\r\n");
      out.write("                    </select>\r\n");
      out.write("                </td>        \r\n");
      out.write("            </tr>\r\n");
      out.write("            <tr>\r\n");
      out.write("                <td> Place where body was found:</td> <td><textarea cols=\"50\" rows=\"3\" name=\"placefound\" id=\"placefound\"> </textarea></td>\r\n");
      out.write("            </tr>\r\n");
      out.write("            <tr>\r\n");
      out.write("                <td> Circumstances of death:</td> <td><textarea cols=\"50\" rows=\"3\" name=\"circumstancesofdeath\" id=\"circumstancesofdeath\"> </textarea></td>\r\n");
      out.write("            </tr>\r\n");
      out.write("            <tr>\r\n");
      out.write("                <td> Special Circumstances:</td> \r\n");
      out.write("                <td>\r\n");
      out.write("                    ");
 
                           out.println(t.makeReferenceList("specialcircumstance"));
                    
      out.write("\r\n");
      out.write("                </td>\r\n");
      out.write("            </tr>\r\n");
      out.write("            <tr>\r\n");
      out.write("                <td>\r\n");
      out.write("                <br> <br>  <td>    <input type=\"submit\" value=\"Continue\" id=\"incidentcontinue\" /> <input type=\"reset\" value=\"Cancel\" id=\"incidentcancel\" /><td></td>\r\n");
      out.write("                </td>  \r\n");
      out.write("            </tr>\r\n");
      out.write("        </table>\r\n");
      out.write("        </form>\r\n");
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
