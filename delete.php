<?php
include("connect.php");
error_reporting(0);

$id=$_GET['id'];
$query="DELETE FROM task WHERE $id=`id` ";
$data=mysqli_query($con,$query);
if($data){
    $_SESSION['status']="Data has delete successfully";
    $_SESSION['status_code']="success";
   // echo '<script>alert("RECORD HAS DELETED!");</script>';
 header("location:table.php");
}else{
    $_SESSION['status']="Data has not delete successfully";
    $_SESSION['status_code']="error";
  //  echo'<script>alert("RECORD HAS NOT DELETED!");</script>';
  header("location:table.php");
}
?>