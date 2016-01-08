<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=BIG5">
<title>
		</title>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
		<script src="assets/js/jquery">
		</script>

		<!-- Latest compiled and minified CSS -->
		<link rel="stylesheet" href="assets/css/bootstrap.min.css">

		<!-- Latest compiled and minified JavaScript -->
		<script src="assets/js/bootstrap.min.js">
		</script>

		<script type="text/javascript" src="assets/canvasjs/canvasjs.min.js">
		</script>
		<!-- Custom CSS -->
		<link rel="stylesheet" href="assets/css/header.css" type="text/css">
		<link rel="stylesheet" href="assets/css/footer.css" type="text/css">
		<link rel="stylesheet" href="assets/css/vote.css" type="text/css">
<!-- 
		<?
		echo '<script type="text/javascript">
		window.onload = function () {
		var chart = new CanvasJS.Chart("chartContainer-bar",
		{
		animationEnabled: true,
		title:{
		text: "票數分析"
		},
		data: [
		{
		type: "column", //change type to bar, line, area, pie, etc
		dataPoints: [';
		echo '{ label: "'.$detail[0].'", y: '.$ticketCounts[0].' }';
		for($i = 1; $i < count($detail); $i++)
		echo ',{ label: "'.$detail[$i].'", y: '.$ticketCounts[$i].' }';
		echo ']
		}
		]
		});

		chart.render();

		var chart2 = new CanvasJS.Chart("chartContainer-pie",
		{
		title:{
		text: "票數分析"
		},
		animationEnabled: true,
		legend:{
		verticalAlign: "bottom",
		horizontalAlign: "center"
		},
		data: [
		{
		type: "pie",
		showInLegend: true,
		toolTipContent: "{legendText}: <strong>{y}票</strong>",
		indexLabel: "{label} {y}票",
		dataPoints: [';
		echo '{  y: '.$ticketCounts[0].', legendText: "'.$detail[0].'", exploded: true, label: "'.$detail[0].'" }';
		for($i = 1; $i < count($detail); $i++)
		echo ',{  y: '.$ticketCounts[$i].', legendText: "'.$detail[$i].'", exploded: true, label: "'.$detail[$i].'" }';
		echo ']
		}
		]
		});
		chart2.render();
		}
		</script>';
		?>
		 -->
</head>
<body>
<div class="bar">
			<ul class="nav nav-tabs">
				<li role="presentation">
					<a href="vote.php?rid=<?echo $_GET["rid"]?>">
						問題
					</a>
				</li>
				<li role="presentation">
					<a href="message.php?rid=<?echo $_GET["rid"]?>">
						留言
					</a>
				</li>
				<li role="presentation" class="active">
					<a href="analysis.php?rid=<?echo $_GET["rid"]?>">
						分析
					</a>
				</li>
			</ul>
		</div>
		<div class="contain">
			<div class="chartContain" >
				<div id="chartContainer-bar" style="height: 100%; width: 100%;">
				</div>
			</div>
			<div class="chartContain" >
				<div id="chartContainer-pie" style="height: 100%; width: 100%;">
				</div>
			</div>
		</div>
</body>
</html>