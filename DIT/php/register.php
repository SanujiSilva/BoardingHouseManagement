<?php
	include_once 'config.php';
 ?>
 

<?php 
	 
     $name = $_POST["fname"];
	 $address =  $_POST["add"];
	 $mobile = $_POST["mobile"];
	 $NIC = $_POST["NIC"];
	 $mail = $_POST["email"];
	 $rNo = $_POST["rNo"];
	 $date = $_POST["date"];
	 $img = $_POST["img"];
	 $oimg = $_POST["oimg"];
	 $pwd = $_POST["rpw"];
	  
	  //$hashed_password=password_hash($pwd,PASSWORD_BCRYPT);
	  $hashed_password=password_hash($pwd,PASSWORD_DEFAULT);
	  
	   $sql = "INSERT INTO register(ID,Name,Address,Mobile,NIC,Email,RoomNo,Date,NICimg,Otherimg,Password )VALUES ('','$name','$address','$mobile','$NIC','$mail','$rNo','$date','$img','$oimg','$hashed_password')";
	
	  
	  
	  
	  if(mysqli_query($conn,$sql)) {
		  echo "<script> alert('Record inserted successfully!!!')</script>";
		  header("Location:../index.html");
	  }
	  else{
		  echo"<script>alert('Error')</script>";
	  }
	  
	  mysqli_close($conn);
  ?>