<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@include file="db.jsp" %>
<style>
	*{
		background: url(https://images.pexels.com/photos/3786119/pexels-photo-3786119.jpeg?auto=compress&cs=tinysrgb&w=600);
		
		background-size: 100%;		
	}
	h1{
		
		width: 100%;
		font-size: 50px;
		text-align: center;
	}
	table{
		
		font-size: 100px
	}
	tr{
		font-size: 100px
	}
	td{
	   
		font-size: 75px
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
		<td><%=ap %></td>
		<td><%=an %></td>
		<td><%=bp %></td>
		<td><%=bn %></td>
		<td><%=abp %></td>
		<td><%=abn %></td>
		<td><%=op %></td>
		<td><%=onn %></td>
		
		<hr>
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
	