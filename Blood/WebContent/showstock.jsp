<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@include file="db.jsp" %>
<style>
	*{
		background: url(https://images.pexels.com/photos/4230620/pexels-photo-4230620.jpeg?auto=compress&cs=tinysrgb&w=600);
		background-size: 100%;		
	}
	h1{
		
		width: 100%;
		font-size: 50px;
		text-align: center;
	}
	table{
		
		font-size: 60px
	}
	tr{
		font-size: 60px
	}
	td{
		font-size: 60px
	}
</style>
<h1>BLOOD STOCK(in units)</h1>
<h2 align="center">1 unit = 200 mL</h2>
<table align="center" border="1px">
        <th>A+</th>
       <th>A-</th>
       <th>B+</th><br>
       <th>B-</th>
       <th>AB+</th>
       <th>AB-</th><br>
       <th>O+</th>
       <th>O-</th>
<%
String qr="select * from stock";
Statement st=con.createStatement();
ResultSet rs=st.executeQuery(qr);
if(rs.next())
{
	do
	{
		int ap=rs.getInt("ap");
		int an=rs.getInt("an");
		int bp=rs.getInt("bp");
		int bn=rs.getInt("bn");
		int abp=rs.getInt("abp");
		int abn=rs.getInt("abn");
		int op=rs.getInt("op");
		int onn=rs.getInt("onn");
		String blood=rs.getString("bloodg");
		%>
		<tr>
		<form action="updatestock.jsp">
		<td><input type="number" name="ap" value="<%=ap %>"></td>
		<td><input type="number" name="an" value="<%=an %>"></td>
		<td><input type="number" name="bp" value="<%=bp %>"></td>
		<td><input type="number" name="bn" value="<%=bn %>"></td>
		<td><input type="number" name="abp" value="<%=abp %>"></td>
		<td><input type="number" name="abn" value="<%=abn %>"></td>
		<td><input type="number" name="op" value="<%=op %>"></td>
		<td><input type="number" name="onn" value="<%=onn %>"></td>
		<td><%=blood %><input type="hidden" name="bg" value="<%=blood %>"></td>
		<hr>
		<td><input type="submit" value="Update"></td>
		</form>
		</tr>
		<%
	}while(rs.next());
}
else
{
	out.println("no records found");
}
%>
</table>
</marquee>
	