<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>Phalcon Poll Project</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css">
	<link rel="stylesheet" href="/poll-project/public/css/jumbotron-narrow.css">
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
		<div class="header clearfix">
			<nav>
				<ul class="nav nav-pills pull-right">
					<li role="presentation" class="active">{{ link_to('poll/index', 'Home') }}</li>
					<li role="presentation"><a href="#">About</a></li>
					<li role="presentation"><a href="#">Contact</a></li>
				</ul>
			</nav>
			<h3 class="text-muted">Phalcon Poll Project</h3>
		</div>

		<div class="jumbotron">
			<h1>Get Your Own Poll</h1>
			<p class="lead">Poll macam ni baru lah ohsem!</p>
			<p>{{ link_to('poll/create', 'Create New Poll', 'class': 'btn btn-lg btn-success', 'role': 'button') }}</p>
		</div>

		<div class="row marketing">
			<div class="col-md-12">
			{{ content() }}
			</div>
		</div>

		<footer class="footer">
			<p>2015 &copy; Muhammad Hamizi Jaminan</p>
		</footer>

	</div> 
	<!-- /container -->    
</body>
</html>
