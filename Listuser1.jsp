<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" 
import="java.util.*"
import="java.sql.*"
%>

<!DOCTYPE html>
<html>
<head>
	<meta name="viewport" content="width=device-width,initial-scale=1"/>
	<title>SATHI | Homepage</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="./js/validpassword.js"></script>
	<script type="text/javascript">
		function del()
		{
			if(confirm("Do You Want to Delete User?"))
			{
			}
			else
			{
				return false;
			}
		}
	</script>
</head>
<body>
	<% 
	Statement st= null;
	PreparedStatement ps = null;
	String delete_id=request.getParameter("delete_id");
	/*String id1=request.getParameter("id");
	out.println(id1);*/
	String id1="103";
	if("yes".equals(delete_id))
		{
			try{
			String driverName = "com.mysql.jdbc.Driver";
			String url = "jdbc:mysql://localhost:3306/sathidb";
			String user = "root";
			String dbpsw = "root";
			Class.forName(driverName);
			Connection con = DriverManager.getConnection(url, user, dbpsw);
			String delsql = "DELETE from sathidb12_user where u_id = ?";
			ps = con.prepareStatement(delsql);
			ps.setString(1,"id1");
			ps.execute();
			con.close();
		}
		catch(Exception e)
		{
			out.println(e.getMessage());
		}
	}

		%>


		<nav class="navbar navbar-inverse">
			<div class="container-fluid">
				<div class="navbar-header" style="margin-top:0.05%;margin-left:10%;">
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#hnavbar">
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>                        
					</button>
					<a class="navbar-brand responsive" href="#"><img src="images/sathi-white2.png" width="125" class="img-fluid"></a>
				</div>
				<div class="collapse navbar-collapse" id="hnavbar">
					<ul class="nav navbar-nav navbar-right">
						<li class="active"><a href="#">Home</a></li>
						<li><a href="#"><span class="glyphicon glyphicon-log-out"></span>Logout</a></li>

					</ul>
				</div>

			</div>
		</nav>
		<div class="container">
			<div class="row">
				<div class="col-sm-3">
					<!-- <h1 class="text-center">Dashboard</h1> -->
					<div class="panel panel-default text-center" style="max-width:100%;height:455px;margin-top: 15%">
						<div class="panel-heading">User Profile</div>
						<div class="panel-body center-block">
							<img src="images/User.png" width="125px" height="140px" class="img-responsive img-round center-block"/>
							<h4>Ashok kuikel</h4>
							<h5>@dreamspark71</h5>
							<h5>dreamspark71@gmail.com</h5>
						</div>
					</div>
				</div>
				<div class="col-sm-9" style="margin-top:3% ">
					<h3>Registered Users</h3>
					<table class="table table-striped">

						<thead>
							<tr>
								<th width="119"><b>ID</b></td>
									<th width="168"><b>Fullname</b></td>
										<th width="168"><b>Username</b></td>
											<th width="168"><b>Email address</b></td>
												<th width="168"><b>Action</b></th>
											</tr>
										</thead>

										<tbody>
											<%
											try {
											Class.forName("com.mysql.jdbc.Driver");
											String url = "jdbc:mysql://localhost/sathidb";
											String username = "root";
											String password = "root";
											String query = "SELECT * FROM sathidb12_user ";
											Connection conn = DriverManager.getConnection(url, username, password);
											Statement stmt = conn.createStatement();
											ResultSet rs = stmt.executeQuery(query);
											while (rs.next()) {
											Integer id=rs.getInt("u_id");
											%>
											<tr>

												<td><%=rs.getInt("u_id")%></td>
												<td><%=rs.getString("fname")%></td>
												<td><%=rs.getString("username")%></td>
												<td><%=rs.getString("emailadd")%></td>
												<td><div align="center"><a href="Listuser.jsp?id=<%=id%>delete_id=yes" onclick="return del()">Delete</a></div></td>
											</tr>


											<%
										}
										%>


										<%
										rs.close();
										stmt.close();
										conn.close();
									} catch (Exception e) {
									e.printStackTrace();
								}
								%>
							</tbody>
						</div>

					</div>

					<div class="panel panel-inverse">
						<div class="panel-body text-center">Copyright &copy; 2017 SATHI.All right Reserved</div>
					</div>
				</body>
				</html>