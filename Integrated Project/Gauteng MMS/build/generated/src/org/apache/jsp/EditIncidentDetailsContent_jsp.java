package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.text.SimpleDateFormat;
import java.util.Calendar;

public final class EditIncidentDetailsContent_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <style type=\"text/css\">\n");
      out.write("                label.error { \n");
      out.write("                    float: none; \n");
      out.write("                    color: red; \n");
      out.write("                    padding-left: .5em; \n");
      out.write("                    vertical-align: top; \n");
      out.write("                }\n");
      out.write("            </style>\n");
      out.write("<script language=\"javascript\" type=\"text/javascript\" src=\"https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js\"></script>\n");
      out.write("<script language=\"javascript\" type=\"text/javascript\" src=\"http://ajax.aspnetcdn.com/ajax/jquery.validate/1.10.0/jquery.validate.min.js\"></script>\n");
      out.write("        <script src=\"js/IncidentDetailsScript.js\"></script>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <legend>Incidents> Edit Incident> Incident Details</legend>\n");
      out.write("        <form id=\"detailform\" method=\"post\" action=\"\">\n");
      out.write("        <table>\n");
      out.write("            <tr>\n");
      out.write("                <td>FPS Incident Log Number:  </td> <td><input type=\"text\" id=\"fpsnumber\" name=\"fpsnumber\" readonly=\"true\" \n");
      out.write("                ");

                    String timestamp = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(Calendar.getInstance().getTime());
                    String[] datetime = timestamp.split(" ");
                    String date[] = datetime[0].split("-");
                    String currentdate = date[0]+date[1]+date[2];
                    out.println("value ="+"number"+currentdate);
                
      out.write("/></td>\n");
      out.write("            </tr>     \n");
      out.write("            <tr>\n");
      out.write("                <td>  SAPS\\ IR number reference number:</td> <td> <input type=\"text\" name=\"SAPSnumber:\" value=\"\" /> </td>\n");
      out.write("             </tr>\n");
      out.write("             <tr>     \n");
      out.write("                <td> Incident date:</td>  \n");
      out.write("                <td> \n");
      out.write("                    <select name=\"year\" id=\"year\">\n");
      out.write("                        <option selected=\"selected\">Year</option>>\n");
      out.write("                        ");
 
                           
                           String year = date[0];
                           int currentyear = Integer.parseInt(year);
                           String lastyear = Integer.toString(currentyear-1);
                           out.println("<option>"+lastyear+"</option>");
                           out.println("<option>"+year+"</option>");
                        
      out.write("\n");
      out.write("                    </select>\n");
      out.write(" \n");
      out.write("                    <select name=\"month\" id=\"month\">\n");
      out.write("             <option slected=\"selected\">Month</option>\n");
      out.write("             <option num=1>January</option>\n");
      out.write("             <option num=2>February</option>\n");
      out.write("             <option num=3>March</option>\n");
      out.write("             <option num=4>April</option>\n");
      out.write("             <option num=5>May</option>\n");
      out.write("             <option num=6>June</option>\n");
      out.write("             <option num=7>July</option>\n");
      out.write("             <option num=8>August</option>\n");
      out.write("             <option num=9>September</option>\n");
      out.write("             <option num=10>October</option>\n");
      out.write("             <option num=11>November</option>\n");
      out.write("             <option num=12>December</option>\n");
      out.write("         </select>\n");
      out.write("         <select name=\"day\" id=\"day\">\n");
      out.write("             <option selected=\"selected\" id=\"day\">Day</option>>\n");
      out.write("             ");
 
                           for(int i=1;i<32;i++){
                               out.println("<option>"+i+"</option>");
                           }
             
      out.write("\n");
      out.write("         </select>\n");
      out.write("                </td>\n");
      out.write("             </tr>\n");
      out.write("             <tr>       \n");
      out.write("                <td> Incident time:</td> \n");
      out.write("                <td>\n");
      out.write("                    ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "Time.jsp", out, false);
      out.write("\n");
      out.write("                </td>\n");
      out.write("             </tr>\n");
      out.write("             <tr> \n");
      out.write("                <td> Number of bodies:</td> \n");
      out.write("                <td>\n");
      out.write("                    <select name=\"numberofbodies\" >\n");
      out.write("                        <option selected=\"selected\">Select</option>\n");
      out.write("                        ");

                           for(int i=1;i<101;i++){
                               out.println("<option>"+i+"</option>");
                           }
                        
      out.write("\n");
      out.write("                    </select>\n");
      out.write("                </td>        \n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td> Place where body was found:</td> <td><textarea cols=\"50\" rows=\"3\" name=\"placefound\"> </textarea></td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td> Circumstances of death:</td> <td><textarea cols=\"50\" rows=\"3\" name=\"circumstancesofdeath\"> </textarea></td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td> Special Circumstances:</td> \n");
      out.write("                <td>\n");
      out.write("                    <select name=\"specialcircumstances\">\n");
      out.write("                        <option selected=\"selected\">Select</option>>\n");
      out.write("                        <option></option>\n");
      out.write("                        <option></option>\n");
      out.write("                        <option></option>\n");
      out.write("                        <option></option>\n");
      out.write("                        <option></option>\n");
      out.write("                        <option></option>\n");
      out.write("                        <option></option>\n");
      out.write("                        <option></option>\n");
      out.write("                    </select>\n");
      out.write("                </td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td>\n");
      out.write("                <br> <br>  <td>    <input type=\"submit\" value=\"Record Call Details\" /><td><br/></td>\n");
      out.write("                </td>  \n");
      out.write("            </tr>\n");
      out.write("        </table>\n");
      out.write("        </form>\n");
      out.write("    </body>\n");
      out.write("</html>");
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
