<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
		<script src="assets/js/jquery.js">
		</script>
		<script src="assets/js/add-element.js">
		</script>
		<script src="assets/js/check-privacy.js">
		</script>

		<!-- Latest compiled and minified CSS -->
		<link rel="stylesheet" href="assets/css/bootstrap.min.css">

		<!-- Latest compiled and minified JavaScript -->
		<script src="assets/js/bootstrap.min.js">
		</script>

		<!-- Custom CSS -->
		<link rel="stylesheet" href="assets/css/header.css" type="text/css">
		<link rel="stylesheet" href="assets/css/footer.css" type="text/css">
		<link rel="stylesheet" href="assets/css/editVote.css" type="text/css">
</head>
<body>
<div class="contain panel panel-default">
			<div class="panel-heading">
				Modify the vote room.
			</div>
			<div class="panel-body">
				<form name="form" id="form">
					<input type="hidden" name="rid" value="<? echo $_GET["rid"];?>">
					<div class="form-group">
						Title:<input type="text" class="form-control" name="title" value="<? echo $roomArr[0];?>" required>
					</div>
					<div class="form-group">
						Type:
						<select class="form-control" name="type" >
							<?
							include('function/Type.php');
							$Type = new Type(new Mysql());
							$Type->getAllType();
							while($Type->HasNext())
							{
								if($roomArr[1] == $Type->type_id)
								echo '<option value="'.$Type->type_id.'" Selected>'. $Type->type_name.'</option>';
								else
								echo '<option value="'.$Type->type_id.'">'. $Type->type_name.'</option>';
							}
							?>

						</select>
					</div>
					<!--
					<div class="form-group">
						Password:
						<label class="radio-inline">
							<input type="radio" name="isPrivacy" value="1" <?
							if($roomArr[2] == 1) echo "checked" ?>> ¬O
						</label>
						<label class="radio-inline">
							<input type="radio" name="isPrivacy" value="0" <?
							if($roomArr[2] == 0) echo "checked" ?>> §_
						</label>
						<input type="text" class="form-control" name="password" id="password"  value="<? echo $roomArr[3];?>" <?
						if($roomArr[2] != 1) echo "disabled";?>>
					</div>
					-->
					<div class="form-group">
						Content:
						<textarea name="content" class="form-control" rows="5"  required><? echo $roomArr[4];?>
						</textarea>
					</div>

					<div class="form-group" id="demo">
						Option:
						<!--
						<button type="button" class="plus-button btn btn-default" onclick="add_element(this)">
							<span class="glyphicon glyphicon-plus" aria-hidden="true">
							</span>
						</button>
						-->
						<?
						$Option->getByRoomID($_GET['rid']);
						$index = 0;
						while($Option->HasNext()){
							$_SESSION['option_id'][$index] = $Option->option_id;
							$index += 1;
							echo '<div class="radio">
							<label>
							<input type="radio" name="options" disabled>
							<input type="text" class="form-control" name="option[]" placeholder="¿ï¶µ" value="'.$Option->detail.'" required="">
							</label>
							</div>';
						}
						?>
					</div>
					<div class="form-center">
						<button class="btn btn-primary">
							Submit
						</button>
					</div>
				</form>
			</div>
		</div>
</body>
</html>