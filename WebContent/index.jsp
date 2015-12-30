<%@ page language="java" contentType="text/html; charset=BIG5"
	pageEncoding="BIG5"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

	<title>uVote</title>
	
	<!-- jQuery -->
	<script src="assets/js/jquery.js"></script>
	
	<!-- Bootstrap Core JavaScript -->
	<script src="assets/js/bootstrap.min.js"></script>
	
	<!-- Plugin JavaScript -->
	<script src="assets/js/jquery.easing.min.js"></script>
	<script src="assets/js/jquery.fittext.js"></script>
	<script src="assets/js/wow.min.js"></script>
	
	<link rel="stylesheet" href="assets/css/bootstrap.min.css"
		type="text/css">
	<link rel="stylesheet"
		href="assets/font-awesome/css/font-awesome.min.css" type="text/css">
	<link rel="stylesheet" href="assets/css/animate.min.css" type="text/css">
	<link rel="stylesheet" type="text/css" href="assets/css/index.css">
</head>
<body>
	<nav id="mainNav" class="navbar navbar-default navbar-fixed-top">
	<div class="container-fluid">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<a class="navbar-brand page-scroll" href="#page-top"> uVote </a>
		</div>

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav navbar-right">
				<li><a class="page-scroll" href="#about">About</a></li>
				<li><a class="page-scroll" href="#services"> Services </a></li>
				<li><a class="page-scroll" href="#team">Team</a></li>
				<li><a class="page-scroll" href="#contact">Contact</a></li>
				<li><a href="login.jsp">Login</a></li>
			</ul>
		</div>
	</div>
	</nav>

	<div class="heading">
		<div class="heading-content">
			<h1>You Vote, and I Vote.</h1>
			<hr class="light" />
			<p>
				I disapprove of what you say, but I will defend to the death your
				right to say it. <br />François-Marie Arouet
			</p>
			<a href="login.jsp" class="btn btn-default btn-xl wow tada">
				Get Started! </a>
		</div>
	</div>

	<section class="bg-primary" id="about">
	<div class="container">
		<div class="row">
			<div class="col-lg-8 col-lg-offset-2 text-center">
				<h2>We've got what you need!</h2>
				<hr class="light" />
				<p class="text-faded">Over 900 organizations from 48 countries
					rely on Simply Voting for their election needs. Our secure
					protocols, ease-of-use and flexible solutions transform elections
					across industries. Get in touch with us to learn how we can run
					your next election together.</p>

			</div>
		</div>
	</div>
	</section>

	<section id="services">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 text-center">
				<h2 class="section-heading">At Your Service</h2>
				<hr class="primary" />
			</div>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-lg-3 col-md-6 text-center">
				<div class="service-box">
					<i class="fa fa-4x fa-diamond wow bounceIn text-primary"> </i>
					<h3>Sturdy Vote</h3>
					<p class="text-muted">Our Vote are updated regularly so they
						don't break.</p>
				</div>
			</div>
			<div class="col-lg-3 col-md-6 text-center">
				<div class="service-box">
					<i class="fa fa-4x fa-paper-plane wow bounceIn text-primary"
						data-wow-delay=".1s"> </i>
					<h3>Ready to Vote</h3>
					<p class="text-muted">You can vote at any time, and you can
						make changes!</p>
				</div>
			</div>
			<div class="col-lg-3 col-md-6 text-center">
				<div class="service-box">
					<i class="fa fa-4x fa-newspaper-o wow bounceIn text-primary"
						data-wow-delay=".2s"> </i>
					<h3>Up to Date</h3>
					<p class="text-muted">We update dependencies to keep things
						fresh.</p>
				</div>
			</div>
			<div class="col-lg-3 col-md-6 text-center">
				<div class="service-box">
					<i class="fa fa-4x fa-heart wow bounceIn text-primary"
						data-wow-delay=".3s"> </i>
					<h3>Made with Love</h3>
					<p class="text-muted">You have to make your Vote with love
						these days!</p>
				</div>
			</div>
		</div>
	</div>
	</section>

	<section class="no-padding bg-dark" id="team">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 text-center">
				<h2>Team</h2>
				<hr class="light" />
			</div>
		</div>
		<div class="row">
			<div class="col-sm-4">
				<div class="team-member">
					<img src="assets/img/team/1.jpg" class="img-responsive img-circle"
						alt="">
					<h4>Tofu Chang</h4>
					<p class="text-muted">Lead Developer</p>
				</div>
			</div>
			<div class="col-sm-4">
				<div class="team-member">
					<img src="assets/img/team/2.jpg" class="img-responsive img-circle"
						alt="">
					<h4>Yen-Jung Lai</h4>
					<p class="text-muted">Lead Developer</p>
				</div>
			</div>
			<div class="col-sm-4">
				<div class="team-member">
					<img src="assets/img/team/3.jpg" class="img-responsive img-circle"
						alt="">
					<h4>Orange</h4>
					<p class="text-muted">Lead Designer</p>
				</div>
			</div>
		</div>
	</div>
	</section>

	<section id="contact">
	<div class="container">
		<div class="row">
			<div class="col-lg-8 col-lg-offset-2 text-center">
				<h2 class="section-heading">Let's Get In Touch!</h2>
				<hr class="primary">
				<p>Ready to start your next project with us? That's great! Give
					us a call or send us an email and we will get back to you as soon
					as possible!</p>
			</div>
			<div class="col-lg-4 col-lg-offset-2 text-center">
				<i class="fa fa-phone fa-3x wow bounceIn"> </i>
				<p>0912-746-008</p>
			</div>
			<div class="col-lg-4 text-center">
				<i class="fa fa-envelope-o fa-3x wow bounceIn" data-wow-delay=".1s">
				</i>
				<p>
					<a href="mailto:your-email@your-domain.com">
						SmallLie1203@gmail.com </a>
				</p>
			</div>
		</div>
	</div>
	</section>

	<!-- Custom Theme JavaScript -->
	<script src="assets/js/index.js"></script>

</body>
</html>