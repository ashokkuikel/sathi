import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
import java.sql.DriverManager;
import java.util.*;

public class ListServlet extends HttpServlet{

	public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException{

		res.setContentType("text/html");

		PrintWriter out = res.getWriter();
		List dataList = new ArrayList(); 
		PreparedStatement ps = null;
		ResultSet rs = null;

		try{
			String driverName = "com.mysql.jdbc.Driver";
			String url = "jdbc:mysql://localhost:3306/sathidb";
			String user = "root";
			String dbpsw = "root";
			Class.forName(driverName);
			Connection con = DriverManager.getConnection(url, user, dbpsw);
			String listsql = "select * from sathidb12_user";
			Statement st = con.createStatement();
			rs = st.executeQuery(listsql);

			while(rs.next())
			{
				dataList.add(rs.getInt("u_id"));
				dataList.add(rs.getString("fname"));
				dataList.add(rs.getString("username"));
				dataList.add(rs.getString("emailadd"));
			}
			rs.close();
			st.close();

		}

		catch(Exception e)
		{
			out.println(e.getMessage());
		}

		req.setAttribute("data",dataList);

		RequestDispatcher rd = req.getRequestDispatcher("Listuser.jsp");

		rd.include(req,res);

	}
	public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException{

		res.setContentType("text/html");

		PrintWriter out = res.getWriter();
		List dataList = new ArrayList(); 
		PreparedStatement ps = null;
		ResultSet rs = null;

		try{
			String driverName = "com.mysql.jdbc.Driver";
			String url = "jdbc:mysql://localhost:3306/sathidb";
			String user = "root";
			String dbpsw = "root";
			Class.forName(driverName);
			Connection con = DriverManager.getConnection(url, user, dbpsw);
			String listsql = "select * from sathidb12_user";
			Statement st = con.createStatement();
			rs = st.executeQuery(listsql);

			while(rs.next())
			{
				dataList.add(rs.getInt("u_id"));
				dataList.add(rs.getString("fname"));
				dataList.add(rs.getString("username"));
				dataList.add(rs.getString("emailadd"));
			}
			rs.close();
			st.close();

		}

		catch(Exception e)
		{
			out.println(e.getMessage());
		}
		req.setAttribute("data",dataList);
		RequestDispatcher rd = req.getRequestDispatcher("Listuser.jsp");

		rd.forward(req,res);

	}
}