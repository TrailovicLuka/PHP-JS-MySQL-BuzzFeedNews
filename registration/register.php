<?php include('server.php') ?>
<!DOCTYPE html>
<html>
<head>
  <title>User Registration</title>
  <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
  <div class="header">
  	 <a class="navbar-brand" ><img src="images/neww.png" height="200"></a>
  </div>
	
  <form method="post" action="register.php">
  	<?php include('errors.php'); ?>
  	<div class="input-group">
  	 
  	  <input type="text" name="username" placeholder='Username'<?php echo $username; ?>">
  	</div>
  	<div class="input-group">
  	  <input type="email" name="email" placeholder='Email'<?php echo $email; ?>">
  	</div>
  	<div class="input-group">
  	  <input type="password" name="password_1" placeholder='Password'>
  	</div>
  	<div class="input-group">
  	  <input type="password" name="password_2" placeholder='Reenter Password'>
  	</div>
  	<div class="input-group">
  	  <button type="submit" class="btn" name="reg_user">Register</button>
  	</div>
  	<p>
  		Already a member? <a href="../admin/index.php">Login</a> <br><br><a href="../index.php">Go back</a>
  	</p> 
  </form>
</body>
</html>