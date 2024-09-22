<?php

session_start();

session_destroy();

//echo"Logout Successfully!";

//echo "<script> alert('Logout successfully!!!')</script>";
header("Location:../index.html");



session_unset();


?>