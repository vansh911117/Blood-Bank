<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@include file="db.jsp" %>
<table align="center" border="1px">
<%
String qr="select * from blood";
Statement st=con.createStatement();
ResultSet rs=st.executeQuery(qr);
%>
<h1 align="center">BLOOD REQUESTS </h1>
<%
if(rs.next())
{
	%>
	<style>
	*{
		font-size: 25px;
		background: url(https://media.istockphoto.com/id/1040065870/photo/blood-red-paint-ink-splatter-sample.jpg?b=1&s=170667a&w=0&k=20&c=TzUggdC2mnIr19Dd9gVCIpCM-Vcto29Ec4tkLr0gkc4=
		);
		background-size: 100%;	
		
	}
	th{
	background: grey;
	}
	tr{
	background-color: white;
	}
	</style>
	 <table align=center border=1px >
        <th>Name</th>
        <th>Adress</th>
        <th>Contact no.</th>
        <th>Blood group</th>
        <%
	do
	{
		String name=rs.getString("name");
		String address=rs.getString("address");
		int contact=rs.getInt("contact");
		String bgroup=rs.getString("bgroup");
        %>
        <tr>
          <form action="Updaterequest.jsp">
          <td><%=name %><input type="hidden" name="name" value="<%=name %>"></td>
          <td><input type="text" name="address" value="<%=address %>"></td>
          <td><input type="number" name="contact" value="<%=contact %>"></td>
          <td><input type="text" name="bgroup" value="<%=bgroup %>"></td>
          <td><input type="submit" value="Update"></td>
          </form>
          <td><a href="delreq.jsp?name=<%= name %>">Delete</a></td>
        </tr>
        <%
	}while(rs.next());
	}
	else
	{
	 out.println("no request found");
	}
	%>
</table>
	