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
		<li class="link"><a href="../AdminLogin.html">Admin</a></li>
		<li class="link"><a href="registerdetails.php">Registered User Details</a></li>
		<li class="link"><a href="approve.php">Approved User Details</a></li>
		<li class="link"><a href="Logout.php">Logout</a></li>
		
	</ul>
	
	<!-- add line break-->
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	
	<hr class="hr">
	<br>
	<br>
	
	<h1><b>...Welcome to the Approved Rgistered User Details Page...</b></h1>
	<br>
	
	
	
	<b><br><br>
   <center> 
    
		
		
	<?php
		include_once'config.php';
		
		if(isset($_GET['approveid'])){
		$id = $_GET['approveid'];
	  
	   $sql1 = "INSERT INTO approved(ID,Name,Address,Mobile,NIC,Email,RoomNo,Date,NICimg,Otherimg,Password ) 
				SELECT ID,Name,Address,Mobile,NIC,Email,RoomNo,Date,NICimg,Otherimg,Password FROM register WHERE ID='$id'";
				
	   $sql2 = "DELETE from register where ID='$id'";
	   
	  
	  
	  if(mysqli_query($conn,$sql1) and mysqli_query($conn,$sql2)) {
		  echo "<script> alert('Record inserted successfully!!!')</script>";
		  //header("Location:../index.html");
	  }
	  else{
		  echo"<script>alert('Error')</script>";
	  }
	  
	 
		}
		
	?>	
		
		
		
		
		
		
		 <table border="1" width="100%">
         <tr>
		  <th class="col1">ID</th>
		  <th class="col1">Name</th>
		  <th class="col1">Address</th>
		  <th class="col1">Mobile</th>
		  <th class="col1">	NIC </th>
		  <th class="col1">	Email </th>
		  <th class="col1">RoomNo</th>
		  <th class="col1">	Date </th>
		  <th class="col1">	NICimg </th>
		  <th class="col1">	Otherimg </th>
		  <th class="coll">Operation</th>
		  
		  
	     </tr>
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		<?php
		include_once'config.php';
	
		$sql = "SELECT * FROM approved";
		$result = $conn->query($sql);
		
		if($result->num_rows>0){
			while($row=$result->fetch_assoc()){
				echo "<tr>
				<td>".$row["ID"]."</td>
				<td>".$row["Name"]."</td>
				<td>".$row["Address"]."</td>
				<td>".$row["Mobile"]."</td>
				<td>".$row["NIC"]."</td>
				<td>".$row["Email"]."</td>
				<td>".$row["RoomNo"]."</td>
				<td>".$row["Date"]."</td>
				<td>".$row["NICimg"]."</td>
				<td>".$row["Otherimg"]."</td>
				
				
				
				<td>
				<button style='background-color:red;'> <a href='approveDelete.php? deleteid=$row[ID]'>Delete</a></button>
				
				</td>
				</tr>";
			}
		}
		else{
			echo "no results";
		}
		echo "</table>";
		
		$conn->close();
	?>
	
	
     
   </center>
	
	
	
	
	
	
	
	
</center>	
	
	
	<hr class="hr">
	
	<!-- add footer-->
	<img src="../images/socialFooter.jpg" width="300" height="90">
	<img src="../images/appStore.jpeg" width="350" height="90">
	<img src="../images/googlePlay.png" width="300" height="90">
	<img src="../images/windowsStore.png" width="300" height="90">
</body>
</html>