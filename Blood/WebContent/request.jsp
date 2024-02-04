<%@ include file="db.jsp" %>
<%
String name=request.getParameter("name");
String address=request.getParameter("address");
String c=request.getParameter("contact");
int contact=Integer.parseInt(c);
String bgroup=request.getParameter("bgroup");
String qr="insert into blood values(?,?,?,?)";
PreparedStatement ps=con.prepareStatement(qr);
ps.setString(1, name);
ps.setString(2, address);
ps.setInt(3,contact);
ps.setString(4, bgroup);
int i =ps.executeUpdate();
out.println("request sent successfully");
response.sendRedirect("index.html");
con.close();

%>