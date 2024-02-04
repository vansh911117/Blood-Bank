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
String qr="insert into donor values(?,?,?,?,?,?,?,?)";
PreparedStatement ps = con.prepareStatement(qr);
ps.setString(1,name);
ps.setString(2,fname);
ps.setString(3,mname);
ps.setInt(4,mobile);
ps.setString(5,gender);
ps.setString(6,email);
ps.setString(7,bgroup);
ps.setString(8,address);
int i = ps.executeUpdate();
out.println(i+" donor added sucessfully");
response.sendRedirect("home.html");
con.close();
%>