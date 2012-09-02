<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Vinspin</title>
	<!-- stylesheets -->	
	<link rel="stylesheet" href="assets/stylesheets/style.css" type="text/css" media="screen" />
  	<link rel="stylesheet" href="assets/stylesheets/slide.css" type="text/css" media="screen" />
    <link rel="stylesheet" href="assets/stylesheets/application.css" type="text/css" media="all" />
    
	<script src="assets/jquery-1.7.2.min.js" type="text/javascript"></script>
    <script src="assets/javascripts/application.js" type="text/javascript"></script>
	<style type="text/css">body { background-image: url(assets/images/bg.jpg); background-repeat: repeat; }</style>
  </head>

<script type="text/javascript">
	function clearForm(form){
		$(form).children('input, select, textarea').val('');
		$(form).children('input[type=radio], input[type=checkbox]').each(function(){			
			this.checked = false;
			// or
			$(this).attr('checked', false);
		});
	}
</script>

<body>
<!-- Panel -->
<div id="toppanel">
	<div id="panel">
		<div class="content clearfix">
			<div class="left">
				<h1>Welcome to VinSpin</h1>
			</div>

			<div class="left">
				<!-- Login Form -->
				<form accept-charset="UTF-8" action="/login" class="new_user" id="new_user" method="post">
				<h1>Sign-In!</h1>
				<label class="grey" for="log">Email:</label>
				<input id="user_email" name="email" size="30" type="email" value="" />
				<!--<input class="field" type="text" name="log" id="log" value="" size="23" /> -->
				<label class="grey" for="pwd">Password:</label>
				<!--<input class="field" type="password" name="pwd" id="pwd" size="23" /> -->
				<input id="user_password" name="password" size="30" type="password" />
				<!-- <label><input name="rememberme" id="rememberme" type="checkbox" checked="checked" value="forever" /> &nbsp;Remember me</label> -->
				<div class="clear"></div>
				<input type="submit" name="submit" value="Login" class="bt_login" />
				<input type="button" name="Clear" value="Clear" class="bt_login" onclick="clearForm('#login');"/>
				</form>
			</div>

		</div>
	</div>
	<!-- /login -->

	<!-- The tab on top -->
	<div class="tab">
		<ul class="login">
			<li class="left">
				&nbsp;
			</li>
			<li>
				Hello Guest!
			</li>
			<li class="sep">
				|
			</li>
			<li id="toggle">
				<a id="open" class="open" href="#">Log In</a>
				<a id="close" style="display: none;" class="close" href="#">Close Panel</a>
			</li>
			<li>
			</li>
			<li class="right">
				&nbsp;
			</li>
		</ul>
	</div>
	<!-- / top -->
</div>
<!--panel -->

<div id="container">
	<div id="content" style="padding-top:500px;">
	</div><!-- / container -->
</div><!-- / container -->

</body>


</html>
