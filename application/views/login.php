
<!-- Panel -->
<div id="toppanel">
	<div id="panel">
		<div class="content clearfix">
			<div class="left">
				
			</div>


            <?php

			if($session->userdata('logged_in') < 1):

			?>

			<div class="left">
				<!-- Login Form -->
				<form class="clearfix" action="/msf/index.php/welcome/login/" method="post">
					<h3>Member Login</h3>
					<label class="grey" for="email">Email:</label>
					<input class="field" type="text" name="email" id="email" value="" size="23" />
					<label class="grey" for="password">Password:</label>
					<input class="field" type="password" name="password" id="password" size="23" />
	            	<label><input name="rememberMe" id="rememberMe" type="checkbox" checked="checked" value="1" /> &nbsp;Remember me</label>
        			<div class="clear"></div>
					<input type="submit" name="submit" value="Login" class="bt_login" />
				</form>
			</div>
			<div class="left right">
				<!-- Register Form -->
				<form action="/msf/index.php/welcome/register/" method="post">
					<h3>Not a member yet? Sign Up!</h3>
<label class="grey" for="email">Email:</label>
					<input class="field" type="text" name="email" id="email" value="" size="23" />
					<label class="grey" for="password">Password:</label>
					<input class="field" type="password" name="password" id="password" size="23" />
					<input type="submit" name="submit" value="Register" class="bt_register" />
				</form>
			</div>

            <?php

			else:

			?>

            <div class="left">

            <h1>Members panel</h1>

            <p>You can put member-only data here</p>
            <a href="registered.php">View a special member page</a>
            <p>- or -</p>
            <a href="logout">Log off</a>

            </div>

            <div class="left right">
            </div>

            <?php
			endif;
			?>
		</div>
	</div> <!-- /login -->

    <!-- The tab on top -->
	<div class="tab">
		<ul class="login">
	    	<li class="left">&nbsp;</li>
	        <li>Hello <?php echo $session->userdata('email') ? $session->userdata('email') : 'Guest';?>!</li>
			<li class="sep">|</li>
			<li id="toggle">
				<a id="open" class="open" href="#"><?php echo $session->userdata('session_id')?'Open Panel':'Log In | Register';?></a>
				<a id="close" style="display: none;" class="close" href="#">Close Panel</a>
			</li>
	    	<li class="right">&nbsp;</li>
		</ul>
	</div> <!-- / top -->

</div> <!--panel -->



</body>
</html>
