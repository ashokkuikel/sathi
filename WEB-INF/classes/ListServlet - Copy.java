	import java.io.*;
	import javax.servlet.*;
	import javax.servlet.http.*;
	import java.sql.*;
	import java.sql.DriverManager;
	import java.util.*;

	public class ListServlet extends HttpServlet
	{
		public void doPost(HttpServletRequest req,HttpServletResponse res) throws IOException,ServletException
		{
			res.setContentType("text/html");

			PrintWriter out = res.getWriter();
			List dataList = new ArrayList(); 
			PreparedStatement ps = null;
			ResultSet rs = null;
			try
			{
				String driverName = "com.mysql.jdbc.Driver";
				String url = "jdbc:mysql://localhost:3306/sathidb";
				String user = "root";
				String dbpsw = "root";
				Class.forName(driverName);
				Connection con = DriverManager.getConnection(url, user, dbpsw);
				String listsql = "select * from sathidb12_user";
				Statement st = con.createStatement();
				rs = st.executeQuery(listsql);
				while (rs.next()) 
				{
					dataList.add(rs.getInt("u_id"));
					String id = String.valueOf(rs.getInt("u_id"));
					req.setAttribute("id",id);
					dataList.add(rs.getString("fname"));
					dataList.add(rs.getString("username"));
					dataList.add(rs.getString("emailadd"));

					/*Integer id = rs.getInt("u_id");
					String fullname = rs.getString("fname");
					String username = rs.getString("username");
					String emailadd = rs.getString("emailadd");

					dataList.add(id);
					dataList.add(fullname);
					dataList.add(username);
					dataList.add(emailadd);*/
				//u_id, fname, username, emailadd, password
				}
				rs.close();
				con.close();
			} 
			catch (Exception e) 
			{
				e.printStackTrace();
			}
			req.setAttribute("data",dataList);

			RequestDispatcher dispatcher = req.getRequestDispatcher("Listuser.jsp");

			dispatcher.forward(req,res);

		}
		public void doGet(HttpServletRequest req,HttpServletResponse res) throws IOException,ServletException
		{
			res.setContentType("text/html");
			PrintWriter out = res.getWriter();
			List dataList = new ArrayList(); 
			PreparedStatement ps = null;
			ResultSet rs = null;
			try
			{
				String driverName = "com.mysql.jdbc.Driver";
				String url = "jdbc:mysql://localhost:3306/sathidb";
				String user = "root";
				String dbpsw = "root";
				Class.forName(driverName);
				Connection con = DriverManager.getConnection(url, user, dbpsw);
				String listsql = "select * from sathidb12_user";
				ps = con.prepareStatement(listsql);
				rs = ps.executeQuery();
				while (rs.next()) 
				{
					Integer id = rs.getInt("u_id");
					String fullname = rs.getString("fname");
					String username = rs.getString("username");
					String emailadd = rs.getString("emailadd");

					dataList.add(id);
					dataList.add(fullname);
					dataList.add(username);
					dataList.add(emailadd);
				//u_id, fname, username, emailadd, password
				}
				rs.close();
				con.close();
			} 
			catch (Exception e) 
			{
				e.printStackTrace();
			}
			req.setAttribute("data",dataList);

			RequestDispatcher dispatcher = req.getRequestDispatcher("Listuser.jsp");

			dispatcher.forward(req,res);

		}
	}
