<nav class="navbar navbar-inverse navbar-fixed-top">
	<!-- Brand and toggle get grouped for better mobile display -->
	<div class="navbar-header">
		<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
			<span class="sr-only">
				Toggle navigation
			</span>
			<span class="icon-bar">
			</span>
			<span class="icon-bar">
			</span>
			<span class="icon-bar">
			</span>
		</button>
		<a class="navbar-brand" href="home.php">
			<b>
				uVote
			</b>
		</a>
	</div>

	<!-- Top Menu Items -->
	<ul class="nav navbar-nav navbar-right top-nav">
		<li class="dropdown">
			<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
				<? echo $_SESSION['UserName']; ?>
				<span class="caret">
				</span>
			</a>
			<ul class="dropdown-menu">
				<li>
					<a href="home.php?pri=my">
						My Vote
					</a>
				</li>
				<li>
					<a href="setting.php">
						Setting
					</a>
				</li>
				<li role="separator" class="divider">
				</li>
				<li>
					<a href="login.php?Action=Logout">
						Log out
					</a>
				</li>
			</ul>
		</li>
	</ul>
</nav>