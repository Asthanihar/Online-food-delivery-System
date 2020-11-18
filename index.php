<?php
$success = "";
$error_message = "";
require("conn.php");
$conn = mysqli_connect("localhost","root","","data_a");
 date_default_timezone_set("Asia/Kolkata");


function send($email,$otp){
$conn = mysqli_connect("localhost","root","","data_a");
$to_email =  $_POST["email"] ;
$subject = "OTP for order confirmation";
$body ="Your OTP for order confirmation is: '" . $otp . "'" ;
$headers = "From: speedonlinefood@gmail.com";

if (mail($to_email, $subject, $body, $headers)) {
	$error_message="OTP successfully sent to $to_email.";
	
}
 else {
    echo "OTP sending failed.";
}
}

if(!empty($_POST["submit_email"])) {
	$result = mysqli_query($conn,"SELECT * FROM `users` WHERE email='" . $_POST["email"] . "'");
	$count  = mysqli_num_rows($result);
	if($count>0) {
		// generate OTP
		$otp = rand(100000,999999);
		// Send OTP
		$mail_status = send($_POST["email"],$otp);
	
			$insert = mysqli_query($conn,"INSERT INTO `otp`(`email`, `OTP`, `Expired`, `Created at`) VALUES (' " . $_POST["email"] . " ','" . $otp . "', 0, ' " . date("Y-m-d H:i:s"). " ' )");
			$current_id = mysqli_insert_id($conn);
			if(!empty($current_id)) {
				$success=1;
			}
		}
	
	else {
		$error_message = "Email not Registered!";
	}
}

if(!empty($_POST["submit_otp"])) {
	$query = mysqli_query($conn,"SELECT * FROM `otp` WHERE `OTP`='" . $_POST["otp"] . "' AND Expired!=1 AND NOW() <= DATE_ADD(`Created at`, INTERVAL 5 HOUR_MINUTE)");
	$count  = mysqli_num_rows($query);
	if(!empty($count)) {
		$query1 = mysqli_query($conn,"UPDATE `otp` SET Expired = 1 WHERE `OTP` = '" . $_POST["otp"] . "'");
		$success = 2;	
	} else {
		$success =1;
		$error_message = "Invalid OTP!";
	}	
}
?>
<html>
<head>
<title>OTP Verification</title>
<style>
body{
	font-family: calibri;
}
.tblLogin {
	border: #95bee6 1px solid;
    background: #d1e8ff;
    border-radius: 4px;
    max-width: 300px;
	padding:20px 30px 30px;
	text-align:center;
}
.tableheader { font-size: 20px; }
.tablerow { padding:20px; }
.error_message {
	color: #b12d2d;
    background: #ffb5b5;
    border: #c76969 1px solid;
}
.message {
	width: 100%;
    max-width: 300px;
    padding: 10px 30px;
    border-radius: 4px;
    margin-bottom: 5px;    
}
.login-input {
	border: #CCC 1px solid;
    padding: 10px 20px;
	border-radius:4px;
}
.btnSubmit {
	padding: 10px 20px;
    background: #2c7ac5;
    border: #d1e8ff 1px solid;
    color: #FFF;
	border-radius:4px;
}

form
{margin-left: 60px;
margin-top: 50px;
}
ul {
  list-style-type: none;
  margin-top: 70px;
  margin-left: -10px;
  padding: 0;
  width: 20%;
  height: 100%;
  overflow: auto;
  background-color: #555;
  float: left;
  position: relative;
}

li a {
  display: block;
  color: #fff;
  padding: 8px 16px;
  text-decoration: none;
}


li a.active {
  background-color: red;
  color: white;
}

li a:hover:not(.active) {
  background-color:#f1f1f1;
  color: black;
}
input
{
	padding: 10px;
}

li
{
	font-size: 20px;
}
#d1
{
	padding: 5px;
	background-color: powderblue;
	text-align: center;
	margin-top: -20px;
	margin-left: -10px;
	width: 100%;
	position: fixed;
}

p
{
  text-align: left;
  font-size: 20px;
  margin-left: 60px;
}
form
{
	margin-top: 50px;
	margin-left: 300px;
}

h2
{
	margin-left: 300px;
	margin-top: 100px;
}
</style>


</head>
<body>
<?php
require 'session.php';
require 'conn.php';
if(!isset($_SESSION['c_id'])||empty($_SESSION['c_id'])&&!isset($_GET['a']))
{
	echo "<script>alert('Please login')</script>";
	echo "<script>location.href='user_login.php'</script>";
}
else
{
	 $c_id=$_SESSION['c_id'];
	 $price=$_GET['a'];
	 if(isset($_SESSION['i']))
   {
      $po=$_SESSION['i'];
      $po=0;
   }
}
?>
<div id="d1"><h1>Online Food Delivery System</h1></div>
<div>
<ul>
  <li><a href="welcome_user.php?del=<?php echo $c_id;?>">Profile</a></li>
  <li><a href="place_orders.php?del=<?php echo $c_id;?>">Place Orders</a></li>
  <li><a href="vieworder.php??del=<?php echo $c_id;?>&&i=<?php echo $_SESSION['i'];?>" class="active">View Orders</a></li>
  <li><a href="order.php?del=<?php echo $c_id;?>">Order Details</a></li>
  <li><a href="user_logout.php">Logout</a></li>
</ul>
</br></br></br></br>
<?php
		if(!empty($error_message)) {
	?>
	<div class="message error_message"><?php echo $error_message; ?></div>
	<?php
		}
	?>

<form name="frmUser" method="post" action="index.php">
	<table>
	<div class="tblLogin">
		<?php 
			if(!empty($success == 1)) { 
		?>
		<div class="tableheader">Enter OTP</div>
		<p style="color:#31ab00;">Check your email for the OTP</p>
			
		<div class="tablerow">
			<input type="text" name="otp" placeholder="One Time Password" class="login-input" required>
		</div>
		<div class="tableheader"><input type="submit" name="submit_otp" value="Submit" class="btnSubmit"></div>
		<?php 
			} else if ($success == 2) {

	$_SESSION['order']=1;
	$phone=$_POST['phn'];
	$location=$_POST['location'];
	$query="SELECT `boy_id` FROM `delivery_boy` WHERE `busy`='0' && `l`='0'";
	if($query_run=mysqli_query($conn,$query))
	{

    	if(mysqli_num_rows($query_run)>=1)
    	{
    		while($query_row=mysqli_fetch_assoc($query_run))
    		{
    			$del_id=$query_row['boy_id'];
    			break;
    		}
  			
  			$query7="INSERT INTO `orders` VALUES('','$c_id','$price','$del_id','n','$location','$phone')";
			if($query_run=mysqli_query($conn,$query7))
			{
				$query9="UPDATE `delivery_boy` set `busy`='1' where `boy_id`='$del_id'";
				mysqli_query($conn,$query9);
				$_SESSION['i']=1;
				echo "<script>alert('Order successfully placed');</script>";
				echo "<script>location.href='vieworder.php?del=".$c_id."&&i=".$_SESSION['i']."';</script>";
			}

    	}
	}

        ?>
		<p style="color:#31ab00;">Your order has been placed!</p>
		<?php
		}
			else {
		?>
		
		<div class="tableheader">Enter Your Login Email</div>
		<div class="tablerow"><input type="text" name="email" placeholder="Email" class="login-input" required></div>
		<div class="tableheader"><input type="submit" name="submit_email" value="Submit" class="btnSubmit"></div>
		<?php 
			}
		?>
	</div>
		</table>
</form>
</body></html>