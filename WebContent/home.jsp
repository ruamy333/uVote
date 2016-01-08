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
		<link rel="stylesheet" href="assets/css/home.css" type="text/css">


</head>
<body>
<div class="contain">
			<div class="left-panel">



				<h3>
					<center>
						分類
					</center>
				</h3>
				<div class="list-group">
					<a href="home.php" class="list-group-item">
						全部
					</a>
					<?
					$Type->getAllType();
					while($Type->HasNext())
					{
						echo '<a href="home.php?type='. $Type->type_id.'" class="list-group-item">
						'. $Type->type_name.'
						</a>';
					}
					?>

				</div>
			</div>
			<div class="right-panel">
				<div class="topbar">
					<form action="home.php" method="GET">
						<div class="search input-group custom-search-form">

							<input type="text" class="form-control" name="search" placeholder="Search...">
							<span class="input-group-btn">
								<button class="btn btn-default" type="submit">
									搜尋
								</button>
							</span>

						</div>
						<div class="btn-group create-btn" role="group">
							<button type="button" class="btn btn-default" onclick="location.href='home.php?sort=1'">
								熱門
							</button>
							<button type="button" class="btn btn-default" onclick="location.href='home.php?sort=2'">
								留言數
							</button>
							<button type="button" class="btn btn-default" onclick="location.href='home.php'">
								最新
							</button>
						</div>
						<button type="button" class="btn btn-primary create-btn" onclick="location.href='newVote.php'">
							新增問題
						</button>
					</form>


				</div>
				<?
				if(isset($_GET['sort']))
				{

					if($_GET['sort'] == 1)
						$arr = $Room->sortPopularRoom();
					elseif($_GET['sort'] == 2)
						$arr = $Room->sortMessageRoom();
					for($i = 0 ; $i < count($arr) ; $i++){
						$Room->getByRoomID($arr[$i]);
						if($Room->HasNext()){
							$messageCount = $Message->messageCountSum($Room->room_id);
							if($_SESSION['UserID'] == $Room->user_id)
							$edit = '<a href="editVote.php?rid='.$Room->room_id.'" class="edit glyphicon glyphicon-pencil btn btn-default"></a>
							<a href="home.php?del='.$Room->room_id.'" class="edit glyphicon glyphicon-trash btn btn-default"></a>';
							else
							$edit = "";
							$Type->getByTypeID($Room->type_id);
							if($Type->HasNext())
							$typeName = $Type->type_name;
							if($Room->privacy == 1)
							$privacy = '<span class="lock-logo glyphicon glyphicon-lock"></span>';
							else
							$privacy = '';
							echo '<a href="vote.php?rid=',$Room->room_id, '" >';
							echo '<div class="room-panel panel panel-gray">';
							echo '<div class="panel-heading">
							<div class="row">
							<div class="room-title">'.$privacy.'
							<b>'. $Room->title.'</b>
							</div>
							<div class="room-ticket"><span class="message-logo  glyphicon glyphicon-comment"></span>
							<span>'.$messageCount.'</span>
							</div>
							<br/><div class="room-time">', $Room->dateString, '</div>
							</div>
							</div>

							<div class="panel-footer">
							'.$typeName.$edit.'

							</div>
							</div>
							</a>';
						}

					}
				}
				else
				{
					if(isset($_GET['type']))
					{
						$Room->getByTypeID($_GET['type']);
					}
					elseif(isset($_GET['pri']))
					{
						$Room->getByUserID($_SESSION['UserID']);
					}
					elseif(isset($_GET['search']))
					{
						$Room->getByRoomTitle($_GET['search']);
					}
					else
					{
						$Room->GetAll();
					}

					while($Room->HasNext())
					{
						$messageCount = $Message->messageCountSum($Room->room_id);
						if($_SESSION['UserID'] == $Room->user_id)
						$edit = '<a href="editVote.php?rid='.$Room->room_id.'" class="edit glyphicon glyphicon-pencil btn btn-default"></a>
						<a href="home.php?del='.$Room->room_id.'" class="edit glyphicon glyphicon-trash btn btn-default"></a>';
						else
						$edit = "";
						$Type->getByTypeID($Room->type_id);
						if($Type->HasNext())
						$typeName = $Type->type_name;
						if($Room->privacy == 1)
						$privacy = '<span class="lock-logo glyphicon glyphicon-lock"></span>';
						else
						$privacy = '';
						echo '<a href="vote.php?rid=',$Room->room_id, '" >';
						echo '<div class="room-panel panel panel-gray">';
						echo '<div class="panel-heading">
						<div class="row">
						<div class="room-title">'.$privacy.'
						<b>'. $Room->title.'</b>
						</div>
						<div class="room-ticket"><span class="message-logo  glyphicon glyphicon-comment"></span>
						<span>'.$messageCount.'</span>
						</div>
						<br/><div class="room-time">', $Room->dateString, '</div>
						</div>
						</div>

						<div class="panel-footer">
						'.$typeName.$edit.'

						</div>
						</div>
						</a>';
					}
				}
				?>
			</div>
		</div>
</body>
</html>