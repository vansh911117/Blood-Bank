<%@include file="db.jsp"%>
<%
String p=request.getParameter("ap");
int ap=Integer.parseInt(p);
String q=request.getParameter("an");
int an=Integer.parseInt(q);
String r=request.getParameter("bp");
int bp=Integer.parseInt(r);
String s=request.getParameter("bn");
int bn=Integer.parseInt(s);
String t=request.getParameter("abp");
int abp=Integer.parseInt(t);
String u=request.getParameter("abn");
int abn=Integer.parseInt(u);
String v=request.getParameter("op");
int op=Integer.parseInt(v);
String w=request.getParameter("onn");
int onn=Integer.parseInt(w);
String blood=request.getParameter("bg");
String qr="insert into stock values(?,?,?,?,?,?,?,?,?)";
PreparedStatement ps = con.prepareStatement(qr);
ps.setInt(1, ap);
ps.setInt(2, an);
ps.setInt(3, bp);
ps.setInt(4, bn);
ps.setInt(5, abp);
ps.setInt(6, abn);
ps.setInt(7, op);
ps.setInt(8, onn);
ps.setString(9,blood);
int i = ps.executeUpdate();
out.println(i+" donor added sucessfully");
con.close();
%>