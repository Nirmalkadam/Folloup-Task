<!-- PHP code to establish connection with the localserver -->
<?php

// Username is root
$user = 'root';
$password = '';
$database = 'followup';
$servername='localhost';
$mysqli = new mysqli($servername, $user,$password, $database);

// Checking for connections
if ($mysqli->connect_error) {
die('Connect Error (' .
$mysqli->connect_errno . ') '.
$mysqli->connect_error);
}

// SQL query to select data from database
$sql = " SELECT * FROM task ORDER BY id ASC ";
$result = $mysqli->query($sql);
$mysqli->close();
?>


<!-- HTML code to display data in tabular format -->
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<title>Task Table</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>

<!-- CSS FOR STYLING THE PAGE -->
<style>
table {
margin: 0 auto;
font-size: large;
border: 1px solid black;
}

h1 {
text-align: center;
color: black;
font-size: xx-large;
font-family: 'poppins';
}

td {
background-color: #E4F5D4;
border: 1px solid black;
}

th,
td {
font-weight: bold;
border: 1px solid black;
padding: 10px;
text-align: center;
}

td {
font-weight: lighter;
}

header{
font-family: poppins;
display: flex;
justify-content: space-between;
align-items: center;
padding: 0px 60px;
            background-color: #f2f4f6;
}

     form {
      text-align: right;
      padding-right: 20px;
     }

</style>
</head>



<!-- PHP CODE TO FETCH DATA FROM ROWS -->
<?php
    include 'connect.php';
    $queryS= "SELECT * FROM `task`";
    $result= mysqli_query($con,$queryS);
    echo "<table class='table table-bordered table-striped mb-0'border='2' style='position: relative;' >
            <tr>
            <th>Id</th>
            <th>Date</th>
            <th>Daedline</th>
            <th>Start Time</th>
            <th>End Time</th>
            <th>Extened Date</th>
            <th>Status</th>
            <th>Assign To</th>
            <th>Text Box </th>
            <th>Delete</th>
            <th>Edit</th>
            
            ";

    while($user= mysqli_fetch_assoc($result))
    {
        echo"<tr>";
        
        echo "<td>".$user['id']."</td>";
        echo "<td>".$user['date']."</td>";
        echo "<td>".$user['deadline']."</td>";
        echo "<td>".$user['starttime']."</td>";
        echo "<td>".$user['endtime']."</td>";
        echo "<td>".$user['exdate']."</td>";
        echo "<td>".$user['status']."</td>";
        echo "<td>".$user['assign']."</td>";
        echo "<td>".$user['textarea']."</td>";
        echo "<td ><a href='delete.php?id=$user[id]'class='btn btn-danger'>Delete</td>";
      
         
        echo '<td><a href="logini.php?id='.$user['id'].'" class="btn btn-primary" name="edit">Edit</td>';

        echo"</tr>";
    }
    echo "</table>";
    mysqli_close($con);
    ?>
</table>
</div>
</section>
<?php  

?>
</body>
</html>

