<?php
	include_Once 'config.php';
	
	if(isset($_POST["log1"])){
		$email=$_POST["email"];
		$rpw=$_POST["rpw"];
		
		$sql="SELECT * FROM admin where Email='$email' AND Password='$rpw' limit 1";
		
		$result=$conn->query($sql);
		
		if(mysqli_num_rows($result)==1){
			echo"You Have logged Successfully";
			header("Location:registerdetails.php");
			exit();
		}
		else{
			echo"You Have Entered incorrect Enail or Password";
			exit();
		}
	}


?>