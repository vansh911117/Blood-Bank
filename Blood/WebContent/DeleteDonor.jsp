<%@include file="db.jsp"%>
<%
 String name=request.getParameter("name");
String qr = "delete from donor where name=?";
PreparedStatement ps = con.prepareStatement(qr);
ps.setString(1,name);
int i = ps.executeUpdate();
RequestDispatcher rd = request.getRequestDispatcher("EditDonor.jsp");
rd.include(request,response);
out.println(i+" donor deleted");
%>