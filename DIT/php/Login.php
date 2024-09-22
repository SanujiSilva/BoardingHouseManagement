<?php
	include_Once 'config.php';
	
	if(isset($_POST["log"])){
		$email=$_POST["email"];
		$rpw=$_POST["rpw"];
		
		//$sql="SELECT * FROM approved where Email='$email' AND Password='$rpw' limit 1";
		
		
		$sql="SELECT * FROM approved where Email='$email'";
		
		//$result=$conn->query($sql);
		
		$result=mysqli_query($conn,$sql);
		
		$num=mysqli_num_rows($result);
		
		if($num==1){
			$row=mysqli_fetch_assoc($result);
			if(password_verify($rpw,$row['Password'])){
				echo "Logged-in Successfully";
				header("Location:../index.html");
			}else{
				echo"incorrect username or password";
			}
		}else{
			echo"incorrect username or password";
		}
	}
		

?>