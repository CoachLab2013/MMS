package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public final class Date_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <select name=\"year\">\n");
      out.write("                         <option selected=\"selected\">Year</option>\n");
      out.write("                        ");

                           String timestamp = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(Calendar.getInstance().getTime());
                           String[] datetime = timestamp.split(" ");
                           String date[] = datetime[0].split("-");
                           String year = date[0];
                           int intyear = Integer.parseInt(year);
                           for(int i= intyear;i>=(intyear-150);i--){
                               out.println("<option>"+i+"</option>");
                           }
                        
      out.write("\n");
      out.write("         </select>\n");
      out.write("         <select name=\"month\">\n");
      out.write("             <option slected=\"selected\">Month</option>\n");
      out.write("             <option>January</option>\n");
      out.write("             <option>February</option>\n");
      out.write("             <option>March</option>\n");
      out.write("             <option>April</option>\n");
      out.write("             <option>May</option>\n");
      out.write("             <option>June</option>\n");
      out.write("             <option>July</option>\n");
      out.write("             <option>August</option>\n");
      out.write("             <option>September</option>\n");
      out.write("             <option>October</option>\n");
      out.write("             <option>November</option>\n");
      out.write("             <option>December</option>\n");
      out.write("         </select>\n");
      out.write("         <select name=\"day\">\n");
      out.write("             <option selected=\"selected\">Day</option>>\n");
      out.write("             ");
 
                           for(int i=1;i<32;i++){
                               out.println("<option>"+i+"</option>");
                           }
             
      out.write("\n");
      out.write("         </select>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
