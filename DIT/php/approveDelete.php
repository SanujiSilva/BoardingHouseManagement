<?php
include_once'config.php';

if(isset($_GET['deleteid'])){
	$id = $_GET['deleteid'];
	
	$sql = "DELETE FROM approved WHERE ID='$id'";
	
	$result=mysqli_query($conn,$sql);
	if($result){
		//echo "Deleted Succuessfull";
		header('location:approve.php');
	}
	else{
		
		die("Connection failed: " . $conn->connect_error);
	}
}




?>