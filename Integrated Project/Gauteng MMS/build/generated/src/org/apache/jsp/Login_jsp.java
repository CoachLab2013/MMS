package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Login_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_f_view;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _jspx_tagPool_f_view = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _jspx_tagPool_f_view.release();
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
      out.write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\"\r\n");
      out.write("    \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
      out.write("\r\n");
      out.write('\r');
      out.write('\n');
      //  f:view
      com.sun.faces.taglib.jsf_core.ViewTag _jspx_th_f_view_0 = (_jspx_resourceInjector != null) ? _jspx_resourceInjector.createTagHandlerInstance(com.sun.faces.taglib.jsf_core.ViewTag.class) : new com.sun.faces.taglib.jsf_core.ViewTag();
      _jspx_th_f_view_0.setPageContext(_jspx_page_context);
      _jspx_th_f_view_0.setParent(null);
      _jspx_th_f_view_0.setJspId("id7");
      int _jspx_eval_f_view_0 = _jspx_th_f_view_0.doStartTag();
      if (_jspx_eval_f_view_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        if (_jspx_eval_f_view_0 != javax.servlet.jsp.tagext.Tag.EVAL_BODY_INCLUDE) {
          out = _jspx_page_context.pushBody();
          _jspx_th_f_view_0.setBodyContent((javax.servlet.jsp.tagext.BodyContent) out);
          _jspx_th_f_view_0.doInitBody();
        }
        do {
          out.write("\r\n");
          out.write("    <html>\r\n");
          out.write("        <head>\r\n");
          out.write("            <title>MMS Login</title>\r\n");
          out.write("            <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n");
          out.write("            <style type=\"text/css\">\r\n");
          out.write("                label.error { \r\n");
          out.write("                    float: none; \r\n");
          out.write("                    color: red; \r\n");
          out.write("                    padding-left: .5em; \r\n");
          out.write("                    vertical-align: top; \r\n");
          out.write("                }\r\n");
          out.write("            </style>\r\n");
          out.write("<script language=\"javascript\" type=\"text/javascript\" src=\"https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js\"></script>\r\n");
          out.write("<script language=\"javascript\" type=\"text/javascript\" src=\"http://ajax.aspnetcdn.com/ajax/jquery.validate/1.10.0/jquery.validate.min.js\"></script>\r\n");
          out.write("            <script src=\"js/LoginScript.js\"></script>\r\n");
          out.write("            \r\n");
          out.write("            <script src=\"bootstrap/js/bootstrap-tabs.js\"></script>\r\n");
          out.write("            <script src=\"bootstrap/js/validate.js\"></script>\r\n");
          out.write("            <script src=\"bootstrap/js/bootstrap.min.js\"></script>\r\n");
          out.write("            <link type=\"text/css\" rel=\"stylesheet\"  href=\"CSS/Design.css\"> \r\n");
          out.write("            <link type=\"text/css\" rel=\"stylesheet\"  href=\"bootstrap/css/bootstrap.css\"> \r\n");
          out.write("        </head>\r\n");
          out.write("        <body>\r\n");
          out.write("            <h1 align=\"center\">Gauteng Mortuary Management System</h1>\r\n");
          out.write("            <div align=\"center\">\r\n");
          out.write("                <img src=\"Images/logo.jpg\" width=\"150\" height=\"150\">\r\n");
          out.write("            </div>\r\n");
          out.write("            \r\n");
          out.write("            <form name=\"login\" method=\"post\" action=\"LogInServlet\" class=\"form-horizontal\" id=\"loginform\" >\r\n");
          out.write("               \r\n");
          out.write("                <div class=\"offset5  span7 \">\r\n");
          out.write("                    <fieldset class=\"fieldset\">\r\n");
          out.write("                        <legend class=\"legend\"> Login</legend>\r\n");
          out.write("                        <div class=\"control-group\">\r\n");
          out.write("                            <label class=\"control-label\" for=\"personelnumber\">Personnel Number</label> \r\n");
          out.write("                            <div class=\"controls\">\r\n");
          out.write("                                <input type=\"text\" name=\"personnelnumber\" id=\"persnnlnum\"/> \r\n");
          out.write("                            </div>\r\n");
          out.write("                        </div>\r\n");
          out.write("                        <div class=\"control-group\">\r\n");
          out.write("                            <label class=\"control-label\" for=\"password\">Password</label>\r\n");
          out.write("                            <div class=\"controls\">\r\n");
          out.write("                                <input type=\"password\" name=\"password\" id=\"password\"/> \r\n");
          out.write("                            </div>\r\n");
          out.write("                        </div>\r\n");
          out.write("                        <div class=\"offset2 \">\r\n");
          out.write("                            <input type=\"submit\" class=\"btn\" value=\"Login\" /> <br><br>\r\n");
          out.write("                            ");

                                    if(null != session.getAttribute("loginerror")){
                                    out.println("<label class='error'>"+session.getAttribute("loginerror")+"</label>");
                                    session.removeAttribute("loginerror");
                                    }
                            
          out.write("\r\n");
          out.write("                        </div>\r\n");
          out.write("                    </fieldset>\r\n");
          out.write("                </div>\r\n");
          out.write("            </form>\r\n");
          out.write("        </body>\r\n");
          out.write("    </html>\r\n");
          int evalDoAfterBody = _jspx_th_f_view_0.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
        if (_jspx_eval_f_view_0 != javax.servlet.jsp.tagext.Tag.EVAL_BODY_INCLUDE)
          out = _jspx_page_context.popBody();
      }
      if (_jspx_th_f_view_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        _jspx_tagPool_f_view.reuse(_jspx_th_f_view_0);
        return;
      }
      _jspx_tagPool_f_view.reuse(_jspx_th_f_view_0);
      out.write('\r');
      out.write('\n');
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
