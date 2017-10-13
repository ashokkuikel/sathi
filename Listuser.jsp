<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" import="java.util.*" %>

<!DOCTYPE html>
<html>
<head>
	<meta name="viewport" content="width=device-width,initial-scale=1"/>
	<title>SATHI | Homepage</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="./js/validpassword.js"></script>
</head>
<body>
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
										<% Iterator itr;%>
										<% List data = (List)request.getAttribute("data"); 

										for (itr=data.iterator(); itr.hasNext();)
											{
												%>										<tr>
													<%Integer id = (Integer)itr.next(); %>
													<td width="119"><%=id %></td>

													<td width="168"><%=itr.next() %></td>
													<td width="168"><%=itr.next() %></td>
													<td width="168"><%=itr.next() %></td>
													<td>
														<div class="btn-group" role="group" aria-label="Basic example">
															<button type="button" class="btn btn-secondary">Edit</button>
															<button type="button" class="btn btn-danger"><a style="color:black;" href="delete?id=<%=id%>">Remove</a></button>
															<input type="hidden" name="id" value="<%=id %>">
														</div>
													</td>
												</tr>
												
												<%
											}
											%>
										</tbody>
									</table>
								</div>

							</div>

							<div class="panel panel-inverse">
								<div class="panel-body text-center">Copyright &copy; 2017 SATHI.All right Reserved</div>
							</div>
						</body>
						</html>