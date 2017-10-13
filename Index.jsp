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
			<!-- <div class="collapse navbar-collapse" id="hnavbar">
				<ul class="nav navbar-nav navbar-right">
					<li class="active"><a href="#">Homepage</a></li>
					<li class="dropdown">
						<a href="#">Our Services</a></li>
						<li><a href="#">About us</a></li>
						<li><a href="#">Contact us</a></li>
						<li><a href="#"><span class="glyphicon glyphicon-user"></span>Login</a></li>
						<li><a href=""><span class="glyphicon glyphicon-log-in"></span>Register</a></li>
					</ul>
				</div> -->
				<div class="collapse navbar-collapse" id="hnavbar" style="margin-top: 1%">
					<form class="form-inline navbar-right" action="login" method="POST">
						<div class="form-group">
							<input type="text" class="form-control" placeholder="Enter Username" name="txt_username" required/>
						</div>
						<div class="form-group">
							<input type="password" class="form-control"  placeholder="Enter password" name="txt_password" required/>
						</div>
						<div class="checkbox"></div>
						<button type="submit" class="btn btn-default">Submit</button>
					</form>
				</div>
			</div>
		</nav>
		<div class="container">
			<div class="row">
				<div class="col-sm-8" >
					<div class="jumbotron" style="margin-top: 2%;background-color: white">
						<!-- <h2>SATHI</h2>  -->
						<p class="text-justify">Sathi helps you connect and share with the<br> people in your life.</p> 
						<img src="images/friend-index.jpg" class="img-responsive rounded" width="450"/>  

					</div>
				</div>
				<div class="col-sm-4">
					<h2 class="text-center">Create your Account</h2>
					<form action="Signup" method="POST">
						<div class="form-group">				
							<h4>Full name</h4>
							<input type="text" class="cols-xs-2 form-control" name="txt_fname" placeholder="Enter Full name" required/>
						</div>
						<div class="form-group">
							<h4>Username</h4>
							<input type="text" class="cols-sm-3 form-control" name="txt_username" placeholder="Username" required/>
						</div>
						<div class="form-group">
							<h4>Email address</h4>
							<input type="email" class="cols-xs-3 form-control" name="txt_emailaddr" placeholder="Username@sathi.com" required/>
						</div>
						<div class="form-group">
							<h4>Password</h4>
							<input type="password" class="cols-xs-3 form-control" name="txt_password" placeholder="Enter Password" required/>
						</div>
						<!-- 	<div class="form-group">
							Retype Password
							<input type="password" class="cols-xs-3 form-control" name="confirmPassword"  placeholder="Re-enter Password" required/>
						</div> -->
						<p style="font-size: 13px;text-align: justify;"><br>By clicking Create an account, you agree to our Terms and User Policy.</p>
						<div class="form-group text-center">
							<button type="submit" class="btn btn-primary center"><h4>Create Your Account</h4></button>
						</div>
					</form>
					<!-- <p class="text-primary"><br><a href="#">Already have an account?</a></p> -->
				</div>
			</div>

			<div class="panel ">
				<div class="panel-body text-center">Copyright &copy; 2017 SATHI.All right Reserved</div>
			</div>
		</body>
		</html>