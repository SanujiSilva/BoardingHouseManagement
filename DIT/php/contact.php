<?php
	include_once 'config.php';
 ?>
 

<?php
	  $firstname = $_POST["fname"];
	  $lastname = $_POST["lname"];
	  $email = $_POST["emailAdd"];
	  $review =  $_POST["review"];
	  
	  $sql = "INSERT INTO contact (First_Name,Last_Name,Email_Adress,Review)VALUES ('$firstname','$lastname','$email','$review')";
	  
	  
	  
	  if(mysqli_query($conn,$sql)) {
		  echo "<script>alert('Record inserted successfully!!!')</script>";
		  header("Location:../index.html");
	  }
	  else{
		  echo"<script>alert('Error')</script>";
	  }
	  
	  mysqli_close($conn);
  ?>