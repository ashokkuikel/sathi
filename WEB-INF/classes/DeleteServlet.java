import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.util.*;
import java.sql.*;

public class DeleteServlet extends HttpServlet
{
	public void doPost(HttpServletRequest req,HttpServletResponse res) throws IOException,ServletException
	{
		res.setContentType("text/html");
		PrintWriter out = res.getWriter();
		String ID = req.getParameter("id");
		//String ID = "102";
		PreparedStatement ps = null;
		ResultSet rs = null;

		try{
			String driverName = "com.mysql.jdbc.Driver";
			String url = "jdbc:mysql://localhost:3306/sathidb";
			String user = "root";
			String dbpsw = "root";
			Class.forName(driverName);
			Connection con = DriverManager.getConnection(url, user, dbpsw);
			String delsql = "DELETE from sathidb12_user where u_id = ?";
			ps = con.prepareStatement(delsql);
      		ps.setString(1,ID);
			ps.execute();
			con.close();
		}
		catch(Exception e)
		{
			out.println(e.getMessage());
		}
	}
		public void doGet(HttpServletRequest req,HttpServletResponse res) throws IOException,ServletException
	{
		res.setContentType("text/html");
		PrintWriter out = res.getWriter();
		String ID = req.getParameter("id");
		//String ID = "102";
		PreparedStatement ps = null;
		ResultSet rs = null;

		try{
			String driverName = "com.mysql.jdbc.Driver";
			String url = "jdbc:mysql://localhost:3306/sathidb";
			String user = "root";
			String dbpsw = "root";
			Class.forName(driverName);
			Connection con = DriverManager.getConnection(url, user, dbpsw);
			String delsql = "DELETE from sathidb12_user where u_id = ?";
			ps = con.prepareStatement(delsql);
      		ps.setString(1,ID);
			ps.execute();
			con.close();
		}
		catch(Exception e)
		{
			out.println(e.getMessage());
		}








	}
}