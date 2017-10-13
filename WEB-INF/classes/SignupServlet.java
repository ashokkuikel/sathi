import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;

public class SignupServlet extends HttpServlet {

	public void doPost(HttpServletRequest req, HttpServletResponse res)
    throws IOException, ServletException
    {
		res.setContentType("Text/html");
		PrintWriter out = res.getWriter();
		String fname = req.getParameter("txt_fname");
		String username = req.getParameter("txt_username");
		String emailaddr = req.getParameter("txt_emailaddr");
		String password = req.getParameter("txt_password");
		if(!(fname.equals(null) || fname.equals("")) && !(username.equals(null) || username.equals("")) && !(emailaddr.equals(null) || emailaddr.equals(""))&&!(password.equals(null) || password.equals("")) )
		{

			//out.println("Connected");
		
			try
			{
				PreparedStatement ps = null;
				ResultSet rs = null;
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
					String emailadd = rs.getString("emailadd");
					if(!(username).equals(userd)&&!(emailaddr).equals(emailadd))
					{
						Statement st =con.createStatement();
						st.executeUpdate("insert into sathidb12_user(fname,username,emailadd,password)values('"+fname+"', '"+username+"', '"+emailaddr+"','"+password+"')");
						out.println("You are successfully Registered"); 
					}
					else
					{
						RequestDispatcher dispatcher = req.getRequestDispatcher("exists.jsp");
            			dispatcher.forward(req,res); //forwarded to next page without undefined parameter in the previous page
            			rs.close();
            			ps.close();
					}
				}
			
			else
			{
				RequestDispatcher dispatcher = req.getRequestDispatcher("/failedconn.jsp");
            	dispatcher.forward(req,res); //forwarded to next page without undefined parameter in the previous page
            	rs.close();
            	ps.close();	
            }
        }
        catch(Exception e)
        {
        	out.println(e.getMessage());
        }

    }
    else
    {
    	out.println("Not Connected");
    }
}
}
