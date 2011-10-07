<html>
	<head>
	<meta http-equiv="Content-type" content="text/html; charset=UTF-8" />
	<title>Modular School Forms</title>
	<meta http-equiv="Content-Language" content="en-us" />

	<meta name="author" content="Meias" />


         <!-- jQuery - the core -->
	<script src="../js/jquery-1.3.2.min.js" type="text/javascript"></script>
	<!-- Sliding effect -->
	<script src="../js/slide.js" type="text/javascript"></script>

	<!-- Begin Stylesheets -->
		
                
              <link rel="stylesheet" href="css/style.css" type="text/css" >
              <link rel="stylesheet" href="css/slide.css" type="text/css" >
              <link rel="stylesheet" href="css/login_style.css" type="text/css" >
              <script type="text/javascript" >
                  // Copyright 2006-2007 javascript-array.com
                  type=""
var timeout	= 500;
var closetimer	= 0;
var ddmenuitem	= 0;

// open hidden layer
function mopen(id)
{
	// cancel close timer
	mcancelclosetime();

	// close old layer
	if(ddmenuitem) ddmenuitem.style.visibility = 'hidden';

	// get new layer and show it
	ddmenuitem = document.getElementById(id);
	ddmenuitem.style.visibility = 'visible';

}
// close showed layer
function mclose()
{
	if(ddmenuitem) ddmenuitem.style.visibility = 'hidden';
}

// go close timer
function mclosetime()
{
	closetimer = window.setTimeout(mclose, timeout);
}

// cancel close timer
function mcancelclosetime()
{
	if(closetimer)
	{
		window.clearTimeout(closetimer);
		closetimer = null;
	}
}

// close layer when click-out
document.onclick = mclose;
        </script>

</head>

	<body>
            <div id="main_container">
               
            <!-- Panel -->
<div id="toppanel">
	<div id="panel">
		<div class="content clearfix">
			<div class="left">
				
				<p class="grey">
                                    Invite Onlyf!</p>
				
				
			</div>
			<div class="left">
				<!-- Login Form -->
				<form class="clearfix" action="#" method="post">
					<h1>Member Login</h1>
					<label class="grey" for="log">Username:</label>
					<input class="field" type="text" name="log" id="log" value="" size="23" />
					<label class="grey" for="pwd">Password:</label>
					<input class="field" type="password" name="pwd" id="pwd" size="23" />
	            	<label><input name="rememberme" id="rememberme" type="checkbox" checked="checked" value="forever" /> &nbsp;Remember me</label>
        			<div class="clear"></div>
					<input type="submit" name="submit" value="Login" class="bt_login" />
					<a class="lost-pwd" href="#">Lost your password?</a>
				</form>
			</div>
			<div class="left right">
				<!-- Register Form -->
				<form action="#" method="post">
					<h1>Not a member yet? Sign Up!</h1>
					<label class="grey" for="signup">Username:</label>
					<input class="field" type="text" name="signup" id="signup" value="" size="23" />
					<label class="grey" for="email">Email:</label>
					<input class="field" type="text" name="email" id="email" size="23" />
					<label>A password will be e-mailed to you.</label>
					<input type="submit" name="submit" value="Register" class="bt_register" />
				</form>
			</div>
		</div>
</div> <!-- /login -->

	<!-- The tab on top -->
	<div class="tab">
		<ul class="login">
			<li class="left">&nbsp;</li>
			<li>Admin</li>
			<li class="sep">|</li>
			<li id="toggle">
				<a id="open" class="open" href="#">Log In | Register</a>
				<a id="close" style="display: none;" class="close" href="#">Close Panel</a>
			</li>
			<li class="right">&nbsp;</li>
		</ul>
	</div> <!-- / top -->

</div> <!--panel -->
            
		<div class="container">

			
			<div class="header">
    			
                        </div>

                    <ul id="sddm">
    <li><a href="#"
        onmouseover="mopen('m1')"
        onmouseout="mclosetime()">Exams</a>
        <div id="m1"
            onmouseover="mcancelclosetime()"
            onmouseout="mclosetime()">
        <a href="#">Blog</a>
        <a href="#">Blog</a>
       
        </div>
    </li>
    <li><a href="#"
        onmouseover="mopen('m2')"
        onmouseout="mclosetime()">Evaulation</a>
        <div id="m2"
            onmouseover="mcancelclosetime()"
            onmouseout="mclosetime()">
        <a href="#">Test</a>
        
        </div>
    </li>

    <li><a href="#"
        onmouseover="mopen('m3')"
        onmouseout="mclosetime()">Courses</a>
        <div id="m3"
            onmouseover="mcancelclosetime()"
            onmouseout="mclosetime()">
        <a href="Test"></a>
        </div></li>
      
        <li><a href="#"
        onmouseover="mopen('m4')"
        onmouseout="mclosetime()">Login</a>
        <div id="m4"
            onmouseover="mcancelclosetime()"
            onmouseout="mclosetime()">
      

        </div>
    </li>
    
      
        
  
<div style="clear:both"></div>

    	
           

            <div class="footer">
    			&copy All rights reserved by Meias & Marcus!
    		</div>
          </div>
</div>
        </body>
</html>

