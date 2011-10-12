<div id="toppanel">
    <div id="panel">
        <div class="content clearfix">
            <div class="left">

                <p class="grey">
                    <form class="clearfix" action="login" method="post">
                    <h1>Admin Login</h1>
                    <label class="grey" for="log">Username:</label>
                    <input class="field" type="text" name="log" id="admin_log" value="" size="23" />
                    <label class="grey" for="pwd">Password:</label>
                    <input class="field" type="password" name="pwd" id="admin_pwd" size="23" />
                    <label><input name="rememberme" id="rememberme" type="checkbox" checked="checked" value="forever" /> &nbsp;Remember me</label>
                    <div class="clear"></div>
                    <input type="submit" name="submit" value="Login" class="bt_login" />
                    <a class="admin_lost-pwd" href="lost_passw">Lost your password?</a>
                </form>

            </div>
            <div class="left">
                <!-- Login Form -->
                <form class="clearfix" action="login" method="post">
                    <h1>Member Login</h1>
                    <label class="grey" for="log">Username:</label>
                    <input class="field" type="text" name="log" id="log" value="" size="23" />
                    <label class="grey" for="pwd">Password:</label>
                    <input class="field" type="password" name="pwd" id="pwd" size="23" />
                    <label><input name="rememberme" id="rememberme" type="checkbox" checked="checked" value="forever" /> &nbsp;Remember me</label>
                    <div class="clear"></div>
                    <input type="submit" name="submit" value="Login" class="bt_login" />
                    <a class="lost-pwd" href="lost_passw">Lost your password?</a>
                </form>
            </div>
            <div class="left right">
                <!-- Register Form -->
                <form action="register" method="post">
                    <h1>Not a member yet? Sign Up!</h1>
                     <label class="grey" for="signup">Social Number:</label>
                    <input class="field" type="text" name="signup" id="social_number" value="" size="23" />
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