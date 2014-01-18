package org.apache.jsp.app;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List _jspx_dependants;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.AnnotationProcessor _jsp_annotationprocessor;

  public Object getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_annotationprocessor = (org.apache.AnnotationProcessor) getServletConfig().getServletContext().getAttribute(org.apache.AnnotationProcessor.class.getName());
  }

  public void _jspDestroy() {
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
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\"\n");
      out.write("\thref=\"");
      out.print(request.getContextPath());
      out.write("/app/themes/saturn/saturn.css\">\n");
      out.write("<script type=\"text/javascript\" src=\"");
      out.print(request.getContextPath());
      out.write("/app/js/jquery-1.4.4.min.js\"></script>\n");
      out.write("<script type=\"text/javascript\" src=\"");
      out.print(request.getContextPath());
      out.write("/app/js/testCode.js\"></script>\n");
      out.write("<title>登录页面</title>\n");
      out.write("<script type=\"text/javascript\">\n");
      out.write("\tvar code = __getTestCode();\n");
      out.write("\n");
      out.write("\tfunction login() {\n");
      out.write("\t\tvar testCode = $('#testCode').val();\n");
      out.write("\t\t\n");
      out.write("\t\tif (testCode.toLowerCase() != code.toLowerCase()) {\n");
      out.write("\t\t\t//alert('验证码不正确');\n");
      out.write("\t\t\t$.messager.alert('提示','验证码不正确','info');\n");
      out.write("\t\t\t$('#testCode').focus();\n");
      out.write("\t\t\treturn;\n");
      out.write("\t\t}\n");
      out.write("\t\t\n");
      out.write("\t\t$('#loginForm').submit();\n");
      out.write("\t}\n");
      out.write("\t\n");
      out.write("\tfunction reload() {\n");
      out.write("\t\tcode = __getTestCode();\n");
      out.write("\t\t$('#testCodeImage').attr(\"src\", \"");
      out.print(request.getContextPath());
      out.write("/app/system/testcode/test.do?code=\" + code);\n");
      out.write("\t\treturn false;\n");
      out.write("\t}\n");
      out.write("\t\n");
      out.write("\t$(function() {\n");
      out.write("\t\tcode = __getTestCode();\n");
      out.write("\t\t$('#testCodeImage').attr(\"src\", \"");
      out.print(request.getContextPath());
      out.write("/app/system/testcode/test.do?code=\" + code);\n");
      out.write("\t\t\n");
      out.write("\t\t$('#testCode').val(code);\n");
      out.write("\t});\n");
      out.write("\t\n");
      out.write("</script>\n");
      out.write("</head>\n");
      out.write("<body background=\"");
      out.print(request.getContextPath());
      out.write("/app/themes/saturn/images/saturn/background.png\">\n");
      out.write("\t<div class=\"login_img\">\n");
      out.write("\t\t<div class=\"login_text\">\n");
      out.write("\t\t\t<form id=\"loginForm\" name=\"form1\" method=\"post\"\n");
      out.write("\t\t\t\taction=\"");
      out.print(request.getContextPath());
      out.write("/app/auth/user/login.do\">\n");
      out.write("\t\t\t\t用户名： <input name=\"id\" type=\"text\" class=\"login_input\" value=\"system\"/> <br /> <br />\n");
      out.write("\t\t\t\t密&nbsp;&nbsp;码： <input name=\"password\" type=\"password\" class=\"login_input\" value=\"111111\" /><br /> <br /> \n");
      out.write("\t\t\t\t验证码： <input id=\"testCode\" name=\"testCode\" type=\"text\" class=\"login_input\" value=\"\" /><br /> <br /> \n");
      out.write("\t\t\t\t<input name=\"Submit\" type=\"submit\" class=\"login_ok\" onclick=\"return login();\"\n");
      out.write("\t\t\t\t\tvalue=\"登录\" /> <img id=\"testCodeImage\" alt=\"验证码\" onclick=\"reload()\" style=\"cursor:hand\">\n");
      out.write("\t\t\t</form>\n");
      out.write("\t\t</div>\n");
      out.write("\t</div>\n");
      out.write("</body>\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
