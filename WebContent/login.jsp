<%@ page language="java" contentType="text/html; charset=BIG5"
	pageEncoding="BIG5"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title></title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<!-- jQuery -->
	<script src="assets/js/jquery.js"></script>
	
	<!-- Bootstrap Core JavaScript -->
	<script src="assets/js/bootstrap.min.js"></script>
	
	<!-- Bootstrap Core CSS -->
	<link rel="stylesheet" href="assets/css/bootstrap.min.css" type="text/css">
	
	<!-- Custom CSS -->
	<link rel="stylesheet" href="assets/css/login.css" type="text/css">
</head>
<body>
	<nav class="navbar navbar-inverse navbar-fixed-top">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<a class="navbar-brand" href="index.jsp">
				<b>
					uVote
				</b>
			</a>
		</div>
	</nav>
	<div class="container">
		<div class="card card-container">
			<img id="profile-img" class="profile-img-card" src="//ssl.gstatic.com/accounts/ui/avatar_2x.png" />
			<p id="profile-name" class="profile-name-card">
			</p>
			<form class="form-signin" action="login.jsp"  method="POST">
				<span id="reauth-email" class="reauth-email">
				</span>
				<input type="text" name="account" id="account" class="form-control" placeholder="Account" required autofocus>
				<input type="password" name="password" id="password" class="form-control" placeholder="Password" required>
				<font color="red">
					<? echo $err;?>
				</font>
				<div id="remember" class="checkbox">
					<label>
						<input type="checkbox" value="remember-me"> Remember me
					</label>
				</div>
				<button class="btn btn-lg btn-primary btn-block btn-signin" type="submit">
					Sign in
				</button>

			</form>
			<button class="btn btn-lg btn-primary btn-block btn-signin"  type="button" onclick="location.href='registration.jsp'">
				Registration
			</button><!-- /form -->
		</div><!-- /card-container -->
	</div><!-- /container -->
</body>
</html>