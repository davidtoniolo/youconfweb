<!DOCTYPE html>
<html>
<head>
<title></title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- Bootstrap -->
<link href="/.resources/ycweb-project/bootstrap/css/bootstrap.min.css"
	rel="stylesheet" media="screen">
<style type="text/css">

/* Sticky footer styles
      -------------------------------------------------- */
html,body {
	height: 100%;
	/* The html and body elements cannot have any padding or margin. */
}

/* Wrapper for page content to push down footer */
#wrap {
	min-height: 100%;
	height: auto !important;
	height: 100%;
	/* Negative indent footer by it's height */
	margin: 0 auto -60px;
}

/* Set the fixed height of the footer here */
#push,#footer {
	height: 60px;
}

#footer {
	background-color: #f5f5f5;
}

/* Lastly, apply responsive CSS fixes as necessary */
@media ( max-width : 767px) {
	#footer {
		margin-left: -20px;
		margin-right: -20px;
		padding-left: 20px;
		padding-right: 20px;
	}
}

/* Custom page CSS
      -------------------------------------------------- */
/* Not required for template or sticky footer method. */
#wrap>.container {
	padding-top: 60px;
}

.container .credit {
	margin: 20px 0;
}

code {
	font-size: 80%;
}
</style>
<link
	href="/.resources/ycweb-project/bootstrap/css/bootstrap-responsive.css"
	rel="stylesheet">

<link
	href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css"
	rel="stylesheet">

[@cms.init /]
</head>
<body>

	<script src="http://code.jquery.com/jquery.js"></script>

	<!-- Part 1: Wrap all page content here -->
	<div id="wrap">

		<!-- Fixed navbar -->
		<div class="navbar navbar-fixed-top">
			<div class="navbar-inner">
				<div class="container">
					<button type="button" class="btn btn-navbar" data-toggle="collapse"
						data-target=".nav-collapse">
						<span class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="brand" href="#">Project name</a>
					<div class="nav-collapse collapse">
						<ul class="nav">
							<li class="active"><a href="#">Home</a></li>
							<li><a href="#about">About</a></li>
							<li><a href="#contact">Contact</a></li>
						</ul>
					</div>
					<!--/.nav-collapse -->
				</div>
			</div>
		</div>

		<!-- Begin page content -->
		<div class="container">

			<div class="page-header">
				<h1>Sticky footer with fixed navbar</h1>
			</div>

			[@cms.area name="promos" /]

			<ul class="nav nav-tabs" id="myTab">
				<li class="active"><a href="#home">${model.getContent()}</a></li>
				<li><a href="#profile">Profile</a></li>
				<li><a href="#messages">Messages</a></li>
				<li><a href="#settings">Settings</a></li>
			</ul>

			<div class="tab-content">
				<div class="tab-pane active" id="home">
					[@cms.area name="main"/]
				</div>
				<div class="tab-pane" id="profile">
					<p class="lead">
						Pin a fixed-height footer to the bottom of the viewport in desktop
						browsers with this custom HTML and CSS. A fixed navbar has been
						added within
						<code>#wrap</code>
						with
						<code>padding-top: 60px;</code>
						on the
						<code>.container</code>
						.
					</p>
				</div>
				<div class="tab-pane" id="messages">
				<i class="fa fa-camera-retro"></i> fa-camera-retro
				<br />
				<i class="fa fa-usd"></i> fa-usd
				</div>
				<div class="tab-pane" id="settings">Settings</div>
			</div>

			<script>
				$('#myTab a').click(function(e) {
					e.preventDefault();
					$(this).tab('show');
				})
				$(function() {
					$('#myTab a:last').tab('show');
				})
			</script>

		</div>

		<div id="push"></div>
	</div>

	<div id="footer">
		<div class="container">
			<p class="muted credit">
				Example courtesy <a href="http://martinbean.co.uk">Martin Bean</a>
				and <a href="http://ryanfait.com/sticky-footer/">Ryan Fait</a>.
			</p>
		</div>
	</div>

	<script src="/.resources/ycweb-project/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>