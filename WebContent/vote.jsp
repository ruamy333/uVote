<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Insert title here</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
		<script src="assets/js/jquery">
		</script>

		<!-- Latest compiled and minified CSS -->
		<link rel="stylesheet" href="assets/css/bootstrap.min.css">

		<!-- Latest compiled and minified JavaScript -->
		<script src="assets/js/bootstrap.min.js">
		</script>

		<!-- Custom CSS -->
		<link rel="stylesheet" href="assets/css/header.css" type="text/css">
		<link rel="stylesheet" href="assets/css/footer.css" type="text/css">
		<link rel="stylesheet" href="assets/css/vote.css" type="text/css">
</head>
<body>
<div class="bar">
			<ul class="nav nav-tabs">
				<li role="presentation" class="active">
					<a href="vote.php?rid=<?echo $_GET["rid"]?>">
						問題
					</a>
				</li>
				<li role="presentation">
					<a href="message.php?rid=<?echo $_GET["rid"]?>">
						留言
					</a>
				</li>
				<li role="presentation">
					<a href="analysis.php?rid=<?echo $_GET["rid"]?>">
						分析
					</a>
				</li>
			</ul>


		</div>
		<div class="contain">
			<div class="title">
				<?
				$room_data->HasNext();
				echo $room_data->title;?>
			</div>
			<div class="time-block">
				分類：<?
				$Type->getByTypeID($room_data->type_id);
				$Type->HasNext();
				echo $Type->type_name;?>
				　發文時間：
				<?
				echo $room_data->dateString;?>
			</div>
			<div class="name-block">
				<div class="user-block glyphicon glyphicon-user">
				</div>
				<?
				$User->getByID($room_data->user_id);
				$User->HasNext();
				echo $User->UserName;?>
			</div>

			<div class="question-block">
				<?
				echo $room_data->content;
				?>
			</div>
			<form method="POST">
				<div class="option-block">

					<?
					while($option_data->HasNext())
					{
						echo'<div class="checkbox">
						<label>
						<input type="checkbox"   name="option[]" value="'.$option_data->option_id.'">
						<span class="cr">
						<i class="cr-icon glyphicon glyphicon-ok">
						</i>
						</span>'.$option_data->detail.'</label></div>';
					}
					?>
				</div>
				<div class="vote-button">
					<input type="submit" name="send" value="投票" class="btn btn-primary btn-lg btn-block"> <br>
				</div>
			</form>
		</div>
</body>
</html>