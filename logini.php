<?php
 include 'connect.php';

?>
<?php
 error_reporting(E_ERROR);
	if (isset($_GET['id'])) {
		$id = $_GET['id'];
		$update = true;
		$record = mysqli_query($con, "SELECT * FROM task WHERE id=$id");
//var_dump($record);die;
		if (count($record) == 1 ) {
			$n = mysqli_fetch_array($record);
			$date = $n['date'];
  $deadline = $n['deadline'];
  $starttime = $n['starttime'];
  $endtime = $n['endtime'];
  $exdate = $n['exdate'];
  $status = $n['status'];
  $assign = $n['assign'];
  $textarea = $n['textarea'];

		}
	}
?>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:400,700">
<title>Task</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<style>
body {
  color: #fff;
  background: white;
  font-family: 'Roboto', sans-serif;
}
.form-control {
  height: 40px;
  box-shadow: none;
  color: #969fa4;
}
.form-control:focus {
  border-color: #5cb85c;
}
.form-control, .btn {        
  border-radius: 3px;
}
.signup-form {
  width: 450px;
  margin: 0 auto;
  padding: 30px 0;
    font-size: 15px;
}

.signup-form .hint-text {
  color: #999;
  margin-bottom: 30px;
  text-align: center;
}
.signup-form form {
  color:#71727d;
  border-radius: 3px;
  margin-bottom: 15px;
  background: #f3edf1;
  box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
  padding: 30px;
}
.signup-form .form-group {
  margin-bottom: 20px;
}
.signup-form input[type="checkbox"] {
  margin-top: 3px;
}
.signup-form .btn {        
  font-size: 16px;
  font-weight: bold;    
  min-width: 140px;
  outline: none !important;
}
.signup-form .row div:first-child {
  padding-right: 10px;
}
.signup-form .row div:last-child {
  padding-left: 10px;
}    
.signup-form a {
  color: #fff;
  text-decoration: underline;
}
.signup-form a:hover {
  text-decoration: none;
}
.signup-form form a {
  color: #5cb85c;
  text-decoration: none;
}
.signup-form form a:hover {
  text-decoration: underline;
}  
</style>
</head>
<body>
<div class="signup-form">
    <form method="post">
    <h2 style="position: relative;left:150px;">Task</h2>
   
    <div class="form-group"><label class="form-label" for="textAreaExample">Title</label>
  <textarea class="form-control" id="textAreaExample1" rows="4" name="textarea" value="<?php echo $textarea; ?>"> <?php echo $textarea; ?></textarea>

</div>

         <div class="form-group"><input type="hidden" name="id" value="<?php echo $id; ?>"><label class="form-label" for="">Start Date</label><label class="form-label" style="position: relative;left:140px;">Deadline</label>
      <div class="row">
        <div class="col md-4"><input type="date" class="form-control" name="date" placeholder="" value="<?php echo $startdate; ?>" required></div>
        
        <div class="col md-4"><input type="date" class="form-control" name="deadline" placeholder="" value="<?php echo $deadline; ?>"required></div>
       
      </div>          
      </div>

      <div class="form-group"> <input type="hidden" name="id" value="<?php echo $id; ?>"><label class="form-label" for="">Start Time</label><label class="form-label" style="position: relative;left:140px;">End Time</label>
      <div class="row">
        <div class="col md-6"><input type="time" class="form-control" name="starttime" placeholder=""value="<?php echo $starttime; ?>" ></div>
        
        <div class="col md-6"><input type="time" class="form-control" name="endtime" placeholder=""  value="<?php echo $endtime; ?>"></div>
       
      </div>          
      </div>


      <div class="form-group"><input type="hidden" name="id" value="<?php echo $id; ?>"><label class="form-label" for="">Extended Date</label><label class="form-label" style="position: relative;left:90px;">Status</label><label class="form-label" style="position: relative;left:150px;">Assign To</label>
      <div class="row">
        <div class="col md-4"><input type="date" class="form-control" name="exdate" placeholder=""value="<?php echo $deadline; ?>" ></div>
        
        <div class="col md-4"><input type="hidden" name="id" value="<?php echo $id; ?>">
         <select name="status" class="form-control" aria-label="Default select example" style="padding:8px;border: 1px solid #ced4da;">
           <option selected ><?php echo $status; ?></option>
                    <option value="Open">Open</option>
                     <option value="hold">Hold</option>
                    <option value="complete">Complete</option>
           </select>  
        </div>
        <div class="col md-4"><input type="hidden" name="id" value="<?php echo $id; ?>">
         <select name="assign" class="form-control" aria-label="Default select example" style="padding:8px;border: 1px solid #ced4da;">
           <option selected  value="<?php echo $assign; ?>"><?php echo $assign; ?> </option>
                    <option value="Nirmal">Nirmal</option>
                     <option value="prajwal">prajwal</option>
                    <option value="kartik">kartik</option>
                    <option value="pratiksha">pratiksha</option>
                    <option value="Ekta">Ekta</option>
                    <option value="prajakta">prajakta</option>
           </select>  
        </div>
      </div>          
      </div>


    <div class="form-group">
       <span id="wrong_pass_alert"></span>

     
       <?php if ($update == true): ?>
	<button type="submit" name="submit"class="btn btn-success" style="position: relative;left:140px;" >update</button>
<?php else: ?>
  <button type="submit" name="submit" class="btn btn-primary"style="position: relative;left:140px;">Submit</button>
<?php endif ?>

    </form>

</div>
<br>


</body>
</html>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
 
<?php 
if(isset($_POST['submit'])) {
  $id = $_POST['id'];
  $date = $_POST['date'];
  $deadline = $_POST['deadline'];
  $starttime = $_POST['starttime'];
  $endtime = $_POST['endtime'];
  $exdate = $_POST['exdate'];
  $status = $_POST['status'];
  $assign = $_POST['assign'];
  $textarea = $_POST['textarea'];
 
if($id){
  $query = "UPDATE `task` SET `date`='$date',`deadline`='$deadline',`starttime`='$starttime',`endtime`='$endtime',`exdate`='$exdate',`status`='$status',`assign`='$assign',`textarea`='$textarea' WHERE `id`=$id";
}else{
  $query= "INSERT INTO task (`id`, `date`, `deadline`, `starttime`, `endtime`, `exdate`, `status`, `assign`, `textarea`) VALUES ('', '$date', '$deadline', '$starttime', '$endtime', '$exdate', '$status', '$assign','$textarea')";
}

if ($con->query($query) === TRUE) {
  echo "<script type='text/javascript'>swal('Record Created Successfully.')
  .then((value) => {
     window.location.href = 'logini.php';
  });</script>";
  } 
  else 
  {
      echo 
      "<script type= 'text/javascript'>
          alert('Error: " . $query . "record not created " . $con->error."');
      </script>";
  }
  
  $con->close();
  }


?>
