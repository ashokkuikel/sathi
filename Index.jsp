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
					<form class="form-inline navbar-right" action="Login" method="POST">
						<div class="form-group">
							<input type="text" class="form-control" id="email" placeholder="Enter Username" name="txt_username" required/>
						</div>
						<div class="form-group">
							<input type="password" class="form-control" id="pwd" placeholder="Enter password" name=txt_password" required/>
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
					<h1 class="text-center">Create your Account</h1>
					<form action="Signup" method="POST">
						<div class="form-group">				
							Full name
							<input type="text" class="cols-xs-2 form-control" name="txt_fname" placeholder="Enter Full name" required/>
							Username
							<input type="text" class="cols-sm-3 form-control" name="txt_username" placeholder="Username" required/>
							Email address
							<input type="email" class="cols-xs-3 form-control" name="txt_emailaddr" placeholder="Username@sathi.com" required/>
							Password
							<input type="password" class="cols-xs-3 form-control" name="txt_password" placeholder="Enter Password" required/>
							Retype Password
							<input type="password" class="cols-xs-3 form-control" name="confirmPassword"  placeholder="Re-enter Password" required/>
							<p style="font-size: 13px;text-align: justify;"><br>By clicking Create an account, you agree to our Terms and confirm that you have read our Data Policy, including our Cookie Use Policy.</p>
						</div>
						<button type="submit" class="btn btn-primary center">Create Your Account</button>
					</form>
					<p class="text-primary"><br><a href="#">Already have an account?</a></p>
				</div>
			</div>

			<div class="panel panel-inverse">
				<div class="panel-body text-center">Copyright &copy; 2017 SATHI.All right Reserved</div>
			</div>
		</body>
		</html>