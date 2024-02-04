<%@include file="db.jsp"%>
<%
String name=request.getParameter("name");
String fname=request.getParameter("fname");
String mname=request.getParameter("mname");
String p=request.getParameter("mobile");
int mobile=Integer.parseInt(p);
String gender=request.getParameter("gender");
String email=request.getParameter("email");
String bgroup=request.getParameter("bgroup");
String address=request.getParameter("address");
String qr="update donor set fname=?,mname=?,mobile=?,gender=?,email=?,bgroup=?,address=? where name=?";
PreparedStatement ps = con.prepareStatement(qr);
ps.setString(8,name);
ps.setString(1,fname);
ps.setString(2,mname);
ps.setInt(3,mobile);
ps.setString(4,gender);
ps.setString(5,email);
ps.setString(6,bgroup);
ps.setString(7,address);
int i = ps.executeUpdate();
RequestDispatcher rd=request.getRequestDispatcher("EditDonor.jsp");
rd.include(request,response);
out.println(i+" donor updated sucessfully");
con.close();
%>