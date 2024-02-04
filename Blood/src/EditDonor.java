
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/EditDonor")
public class EditDonor extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/adv440","root","vansh");
			String qr="select * from donor";
			Statement st=con.createStatement();
			ResultSet rs=st.executeQuery(qr);
			if(rs.next())
			{
				out.println("<table align=center border=1px>");
				out.println("<th>Name</th>");
				out.println("<th>Father Name</th>");
				out.println("<th>Mother Name</th>");
				out.println("<th>Mobile</th>");
				out.println("<th>Gender</th>");
				out.println("<th>E-mail</th>");
				out.println("<th>Blood Group</th>");
				out.println("<th>Address</th>");
				do{
					String name=request.getParameter("name");
					String fname=request.getParameter("fname");
					String mname=request.getParameter("mname");
					String p=request.getParameter("mobile");
					int mobile=Integer.parseInt(p);
					String gender=request.getParameter("gender");
					String email=request.getParameter("email");
					String bgroup=request.getParameter("bgroup");
					String address=request.getParameter("address");
					out.println("<tr>");
					out.println("<form action=UpdateDonor.jsp>");
					out.println("<td>");
					out.println(name);
					out.println("<input type=hidden name=name value="+name+" />");
					out.println("</td>");
					out.println("<td>");
					out.println("<input type=text name=fname value="+fname+" />");
					out.println("</td>");
					out.println("<td>");
					out.println("<input type=text name=mname value="+mname+" />");
					out.println("</td>");
					out.println("<td>");
					out.println("<input type=number name=mobile value="+mobile+" />");
					out.println("</td>");
					out.println("<td>");
					out.println("<input type=text name=gender value="+gender+" />");
					out.println("</td>");
					out.println("<td>");
					out.println("<input type=text name=email value="+email+" />");
					out.println("</td>");
					out.println("<td>");
					out.println("<input type=text name=bgroup value="+bgroup+" />");
					out.println("</td>");
					out.println("<td>");
					out.println("<input type=text name=address value="+address+" />");
					out.println("</td>");
					out.println("</tr>");
					out.println("<input type=submit value=Update />");
					out.println("</td>");
					out.println("<td>");
					out.println("<a href=DeleteDonor.jsp?name="+name+">Delete</a>");
					out.println("</td>");
					out.println("</form>");
					out.println("</tr>");
					
				}while(rs.next());
			}else
			{
				out.println("no records found");
			}
			con.close();
		} catch (Exception e) {
			out.println(e);
		}
	}

}
	
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
