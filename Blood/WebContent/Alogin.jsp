<%
 String id=request.getParameter("id");
String pwd = request.getParameter("pwd");
if(id.equals("vansh") && pwd.equals("12345"))
{
  session.setAttribute("id", id);
  response.sendRedirect("home.html");
}
else
{
	out.println("invalid id and password");
}
		
%>