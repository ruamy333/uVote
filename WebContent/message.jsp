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
		<script src="assets/js/more-message.js">
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
				<li role="presentation">
					<a href="vote.php?rid=<?echo $_GET["rid"]?>">
						問題
					</a>
				</li>
				<li role="presentation" class="active">
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
			
			
					
			<?php
			$Messages->getMessageByRoomID($roomid);
			$count = $Messages->messageCountSum($roomid);
			
			if($count > 4)
				echo '<div class="viewMore">檢視更多留言</div><div class="more">';
			while($Messages->HasNext())
			{
				$count--;
				$dateStr = $Messages->dateString;
				$User->getByID($Messages->user_id);
				$User->HasNext();
				if($count == 4)
					echo '</div>';
				echo '<hr><div class="message-panel">
				<div class="name-block-m">
				<div class="user-block glyphicon glyphicon-user">
				</div><div class="time-block-m">', $dateStr, '</div>';
				echo $User->UserName;
				echo '：</br></div><div class="message-detail">';
				echo showTxt($Messages->message_content);
				echo '</div></div>';
			}
			?>
			<hr/>
			<form action="message.php?rid=<? echo $_GET["rid"]?>"  method="POST">
				<input type="hidden" id="content" name="rid" value="<? echo $_GET["rid"]?>">
				</input>
				<div class="message-contain">
					<div  class="message-block glyphicon glyphicon-comment">
					</div>
					<input type="text" id="content" name="message" class="form-control message-txt" placeholder="在想些甚麼?" >
					</input>
					<button type = "submit" id="sendMessage" name = "saveMessageBtn">
					</button>
				</div>

			</form>
		</div>
</body>
</html>