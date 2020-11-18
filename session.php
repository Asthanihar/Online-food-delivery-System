<?php
ob_start();
session_start();
$_SESSION['start']=time();
$_SESSION['expire']=$_SESSION['start']+(1*60);
?>