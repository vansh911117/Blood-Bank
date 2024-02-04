<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@include file="db.jsp" %>
<table  border="1px">
<%
String qr="select * from donor";
Statement st=con.createStatement();
ResultSet rs=st.executeQuery(qr);
if(rs.next())
{
	%>
	<style>
	*{
		font-size: 12px;
		background: url(https://media.istockphoto.com/id/877270936/photo/drop-of-blood-on-finger-on-white-background.jpg?b=1&s=170667a&w=0&k=20&c=sMw3dhOokio6wcgBQhjDoWHRwAiRqUVWD4uluI1SZQ8=);
		background-size: 100%;	
	}
	th{
	background: grey;
	height:40px;
	}
	tr{
	background-color: lightgray;
	height:40px;
	font-size:25px
	}
	td{
	font-size:20px;
	}
	input{
	font-size:13px;
	height:40px;
	background: lightgrey;
	}
	</style>
	 <table align=center border=1px >
        <th>Name</th>
        <th>Father's Name</th>
        <th>Mother's Name</th>
        <th>Contact Number</th>
        <th>Gender</th>
        <th>E-mail</th>
        <th>Blood group</th>
        <th>Address</th>
        <%
	
	do
	{
		String name=rs.getString("name");
		String fname=rs.getString("fname");
		String mname=rs.getString("mname");
		int mobile=rs.getInt("mobile");
		String gender=rs.getString("gender");
		String email=rs.getString("email");
		String bgroup=rs.getString("bgroup");
		String address=rs.getString("address");
		%>
		<tr>
		<form action="UpdateDonor.jsp">
		<td><%=name %><input type="hidden" name="name" value="<%=name %>"></td>
		<td><input type="text" name="fname" value="<%=fname %>"></td>
		<td><input type="text" name="mname" value="<%=mname %>"></td>
		<td><input type="number" name="mobile" value="<%=mobile %>"></td>
		<td><input type="text" name="gender" value="<%=gender %>"></td>
		<td><input type="email" name="email" value="<%=email %>"></td>
		<td><input type="text" name="bgroup" value="<%=bgroup %>"></td>
		<td><input type="text" name="address" value="<%=address %>"></td>
		
		<td><input type="submit" value="Update"></td>
		</form>
		<td><a href="DeleteDonor.jsp?name=<%= name %>">Delete</a></td>
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
	