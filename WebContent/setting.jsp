<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Insert title here</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
		<script src="assets/js/jquery.js">
		</script>

		<!-- Latest compiled and minified CSS -->
		<link rel="stylesheet" href="assets/css/bootstrap.min.css">

		<!-- Latest compiled and minified JavaScript -->
		<script src="assets/js/bootstrap.min.js">
		</script>

		<!-- Custom CSS -->
		<link rel="stylesheet" href="assets/css/header.css" type="text/css">
		<link rel="stylesheet" href="assets/css/footer.css" type="text/css">
		<link rel="stylesheet" href="assets/css/registration.css" type="text/css">
</head>
<body>
<div class="contain">
			<form class="form-horizontal" action="setting.php?act=save"  method="POST">
				<fieldset>

					<!-- Form Name -->
					<legend>
						Setting
					</legend>

					<!-- Text input-->
					<div class="form-group">
						<label class="col-md-4 control-label">
							Account
						</label>
						<div class="col-md-4">
							<input name="account" type="text" placeholder="Account" class="form-control input-md"  value="<? echo $acc;?>" disabled>
						</div>
					</div>

					<!-- Text input-->
					<div class="form-group">
						<label class="col-md-4 control-label">
							Password
						</label>
						<div class="col-md-4">
							<input name="psd" type="password" placeholder="Password" class="form-control input-md" value="<? echo $pass;?>">

						</div>
					</div>

					<!-- Text input-->
					<div class="form-group">
						<label class="col-md-4 control-label">
							Name
						</label>
						<div class="col-md-4">
							<input name="name" type="text" placeholder="Name" class="form-control input-md" value="<? echo $name;?>">

						</div>
					</div>

					<!-- Text input-->
					<div class="form-group">
						<label class="col-md-4 control-label" for="email">
							Email
						</label>
						<div class="col-md-4">
							<input name="email" type="text" placeholder="Email" class="form-control input-md"  value="<? echo $email;?>">

						</div>
					</div>
					<div class="error">
						<? echo $err;?>
					</div>
					<!-- Button -->
					<div class="form-center">
						<button id="submit" name="submit" class="btn btn-primary">
							SAVE
						</button>
					</div>

				</fieldset>
			</form>

		</div>
</body>
</html>