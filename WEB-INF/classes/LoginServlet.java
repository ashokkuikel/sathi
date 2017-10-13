import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.sql.*;

public class LoginServlet extends HttpServlet
{
	public void doPost(HttpServletRequest req,HttpServletResponse res)
	throws IOException,ServletException
	{
		res.setContentType("text/html");
		PrintWriter out = res.getWriter();
		String username =  req.getParameter("txt_username");
		String password = req.getParameter("txt_password");
		if((!(username.equals(null) || username.equals("")) && !(password.equals(null) || password.equals(""))) )
		{
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
				if(rs.next())
				{
					String userd =  rs.getString("username");
					String pass = rs.getString("password");
					if((username).equals(userd)&&(password).equals(pass))
					{
						//out.println("dashboard");
						RequestDispatcher dispatcher = req.getRequestDispatcher("profile");
						dispatcher.include(req,res);
						
					}
					else
					{
						out.println("No User Found");
					}
				}
				else
				out.println("No Connection");
				rs.close();
				ps.close();				
			}
		catch(Exception e)
        {
        	out.println(e.getMessage());
        }

	}

}
}