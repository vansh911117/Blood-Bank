<%@ include file="db.jsp" %>
<%
String name=request.getParameter("name");
String address=request.getParameter("address");
String c=request.getParameter("contact");
int contact=Integer.parseInt(c);
String bgroup=request.getParameter("bgroup");
String qr="update blood set address=?,contact=?,bgroup=? where name=?";
PreparedStatement ps=con.prepareStatement(qr);
ps.setString(4, name);
ps.setString(1, address);
ps.setInt(2,contact);
ps.setString(3, bgroup);
int i =ps.executeUpdate();
RequestDispatcher rd=request.getRequestDispatcher("Showrequest.jsp");
rd.include(request,response);
out.println(i+" updated successfully");
con.close();

%>