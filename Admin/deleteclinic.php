<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="adminmain.css"> 
</head>
<body background= "images/mgrchange.jpg">
<ul>
<li class="dropdown"><font color="yellow" size="5">ADMIN</font></li>
<br>
<h2>
  <li class="dropdown">    
  <a href="javascript:void(0)" class="dropbtn">Doctor</a>
    <div class="dropdown-content">
      <a href="adddoctor.php">Add Doctor</a>
      <a href="deletedoctor.php">Delete Doctor</a>
      <a href="showdoctor.php">Show Doctor</a>
	  <a href="showdoctorschedule.php">Show Doctor Schedule</a>
    </div>
  </li>
  
  <li class="dropdown">
  <a href="javascript:void(0)" class="dropbtn">Clinic</a>
    <div class="dropdown-content">
      <a href="addclinic.php">Add Clinic</a>
      <a href="deleteclinic.php">Delete Clinic</a>
      <a href="adddoctorclinic.php">Assign Doctor to Clinic</a>
	  <a href="deletedoctorclinic.php">Delete Doctor from Clinic</a>
	  <a href="showclinic.php">Show Clinic</a>
    </div>
  </li>
   <li>  
	<form method="post" action="mainpage.php">	
	<button type="submit" class="cancelbtn" name="logout" style="float:right;font-size:22px"><b>Log Out</b></button>
	</form>
  </li>
	
</ul>
</h2>
<h1>
<center><h1>DELETE CLINIC</h1><hr>
<form method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>">  
Enter CID:<center><input type="number" name="cid"></center>
			<button type="submit" name="Submit1">Delete by CID</button>
			</center>
</form>			
<?php
session_start();
include 'dbconfig.php';
if(isset($_POST['Submit1']))
{
	$cid=$_POST['cid'];
	$sql = "DELETE FROM clinic WHERE CID= $cid ";

	if (mysqli_query($conn, $sql))
		{
		echo "Record deleted successfully.Refreshing....";
		header( "Refresh:2; url=deleteclinic.php");
		}
	else
		{
			echo "Error deleting record: " . mysqli_error($conn);
		}

}
if(isset($_POST['Submit2']))
{
	$cid=$_POST['clinicname'];
	$sql = "DELETE FROM clinic WHERE cid = $cid ";

	if (mysqli_query($conn, $sql))
		{
		echo "Record deleted successfully.Refreshing....";
		header( "Refresh:2; url=deleteclinic.php");
		}
	else
		{
			echo "Error deleting record: " . mysqli_error($conn);
		}

}	
if(isset($_POST['logout'])){
		session_unset();
		session_destroy();
		header( "Refresh:1; url=alogin.php"); 
	}
?>			
</body>
</html>