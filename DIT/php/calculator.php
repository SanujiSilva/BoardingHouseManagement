<?php
	include_once 'config.php';
 ?>


<!DOCTYPE html>
<html>

<head>
	<!-- add title-->
	<title>home</title>
	
	<link rel="stylesheet" type="text/css" href="../styles/index.css">
	
</head>

<body>
<center>
	<!-- add header-->
	<h1 class="header">Boarding House Management System</h1>
	
	<!-- add logo-->
	<img class="logo" src="../images/logo.png"width="300" height="200">
	
	<!-- add sub header-->
	<marquee scrollamount="6"><h2>Find The Right House For Your Future</h2></marquee>
	
	<!-- add horizontal line-->
	<hr class="hr">
	
	<!-- add menue bar-->
	<ul>
		<li class="link"><a href="../index.html">Home</a></li>
		<li class="link"><a href="../room.html">Rooms</a></li>
		<li class="link"><a href="../register.html">Registration</a></li>
		<li class="link"><a href="../calculator.html">Calculator</a></li>
		<li class="link"><a href="../AboutUs.html">About Us</a></li>
		<li class="link"><a href="../contactUs.html">Contact Us</a></li>
		<li class="link"><a href="../terms.html">Tearms & Conditions</a></li>
		<li class="link"><a href="../Login.html">Login</a></li>
		<li class="link"><a href="Logout.php">Logout</a></li>
		
	</ul>
	
	<!-- add line break-->
	<br>
	<br>
	<br>
	<br>
	
	<hr class="hr">
	<br>
	<br>
	
	<?php

	// Get the user's details
	$electricityUsage = $_POST['electricity_usage'];
	
	$electricityRate=$_POST['electricity_rate'];
	
	$monthlyRental=$_POST['monthly_rental'];
	

	// Calculate the monthly bill.
	$monthlyBill = ($electricityUsage * $electricityRate) + $monthlyRental;

	// Display the monthly bill to the user.
	echo '<h2>Your monthly bill is: LKR ' . $monthlyBill;
 
	 
 
	?>
	
	<br>
	<br>
	<br>
	<br>
	
	
	
	
	
	
	
</center>	
	
	
	<hr class="hr">
	
	<!-- add footer-->
	<img src="../images/socialFooter.jpg" width="300" height="90">
	<img src="../images/appStore.jpeg" width="350" height="90">
	<img src="../images/googlePlay.png" width="300" height="90">
	<img src="../images/windowsStore.png" width="300" height="90">
</body>
</html>













<?php

	// Get the user's details
	$electricityUsage = $_POST['electricity_usage'];
	
	$electricityRate=$_POST['electricity_rate'];
	
	$monthlyRental=$_POST['monthly_rental'];
	

	// Calculate the monthly bill.
	$monthlyBill = ($electricityUsage * $electricityRate) + $monthlyRental;

	// Display the monthly bill to the user.
	echo 'Your monthly bill is: LKR ' . $monthlyBill;
 
	 
 
 ?>