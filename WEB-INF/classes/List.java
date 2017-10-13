import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
import java.sql.DriverManager;
import java.util.*;


	public class List extends HttpServlet {
		public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException 
		{
			PrintWriter out = res.getWriter();
			res.setContentType("text/html");
			out.println("<html><body>");
			PreparedStatement ps = null;
			ResultSet rs = null;
			try {
				String driverName = "com.mysql.jdbc.Driver";
				String url = "jdbc:mysql://localhost:3306/sathidb";
				String user = "root";
				String dbpsw = "root";
				Class.forName(driverName);
				Connection con = DriverManager.getConnection(url, user, dbpsw);
				String listsql = "select * from sathidb12_user";
				Statement st = con.createStatement();
				rs = st.executeQuery(listsql);
				out.println("<table border=1 width=50% height=50%>");
				out.println("<tr><th>EmpId</th><th>EmpName</th><th>Salary</th><tr>");
				while (rs.next()) {
					String id = rs.getString("u_id");
					String fullname = rs.getString("fname");
					String username = rs.getString("username");
					String emailadd = rs.getString("emailadd");
 					out.println("<tr><td>" + id + "</td><td>" + fullname + "</td><td>" + username + "</td><td>" + emailadd + "</td></tr>"); 
				}
				out.println("</table>");
				out.println("</html></body>");
				con.close();
			}
			catch (Exception e) {
				out.println("error");
			}
		}

		public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException 
		{
			PrintWriter out = res.getWriter();
			res.setContentType("text/html");
			out.println("<html><body>");
			PreparedStatement ps = null;
			ResultSet rs = null;
			try {
				String driverName = "com.mysql.jdbc.Driver";
				String url = "jdbc:mysql://localhost:3306/sathidb";
				String user = "root";
				String dbpsw = "root";
				Class.forName(driverName);
				Connection con = DriverManager.getConnection(url, user, dbpsw);
				String listsql = "select * from sathidb12_user";
				Statement st = con.createStatement();
				rs = st.executeQuery(listsql);
				out.println("<table border=1");
				out.println("<tr><th>EmpId</th><th>EmpName</th><th>Salary</th><tr>");
				while (rs.next()) {
					String id = rs.getString("u_id");
					String fullname = rs.getString("fname");
					String username = rs.getString("username");
					String emailadd = rs.getString("emailadd");
 					out.println("<tr><td>" + id + "</td><td>" + fullname + "</td><td>" + username + "</td><td>" + emailadd + "</td><a href="delete.jsp?id=<%=id>"">Delete</a></tr>"); 
				}
				out.println("</table>");
				out.println("</html></body>");
				con.close();
			}
			catch (Exception e) {
				out.println("error");
			}
		}
	}
