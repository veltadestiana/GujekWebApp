<?php
session_start();
include_once 'dbconnect.php';

if(isset($_SESSION['user'])!="")
{
	header("Location: home.php");
}

if(isset($_POST['btn-login']))
{
	$email = mysql_real_escape_string($_POST['email']);
	$upass = mysql_real_escape_string($_POST['pass']);
	$res=mysql_query("SELECT * FROM users WHERE email='$email'");
	$row=mysql_fetch_array($res);
	
	if($row['password']==md5($upass))
	{
		$_SESSION['user'] = $row['user_id'];
		header("Location: home.php");
	}
	else
	{
		?>
        <script>alert('Wrong email/password. Please try again.');</script>
        <?php
	}
	
}
?>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Gujek Web App | Log In</title>
<link rel="stylesheet" href="css/style.css" type="text/css" />
</head>
<body>

<div id="loader-wrapper">
    <div id="loader"></div>
    <div class="loader-section section-left"></div>
    <div class="loader-section section-right"></div>
    </div>

    <div class="container">

      <div id="login">

        <h2><span class="fontawesome-lock"></span>Sign In To Continue</h2>

        <form name="login" method="POST">

          <fieldset>

            <p><label for="text">Email</label></p>
            <p><input type="text" name="email" id="email" placeholder="mail@mail.com" required></p>

            <p><label for="password">Password</label></p>
            <p><input type="password" name="pass" id="pass" placeholder="Password" required></p>

            <p><input type="submit" name="btn-login" value="Sign In"></p>

          </fieldset>

        </form>

      </div> <!-- end login -->

    </div>
</body>
</html>