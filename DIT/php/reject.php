<?php
include_once'config.php';

if(isset($_GET['rejectid'])){
	$id = $_GET['rejectid'];
	
	$sql = "DELETE FROM register WHERE ID='$id'";
	
	$result=mysqli_query($conn,$sql);
	if($result){
		//echo "Deleted Succuessfull";
		header('location:registerdetails.php');
	}
	else{
		
		die("Connection failed: " . $conn->connect_error);
	}
}




?>