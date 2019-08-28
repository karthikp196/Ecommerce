<?php

$server="localhost";
$user ="fixxgqip_karthik";
$password = "karthikp";
$db = "fixxgqip_iprints";

$conn = mysqli_connect($server,$user,$password,$db);
session_start();

setcookie("session_id", session_id(), time()+60*60);

$cookie = $_COOKIE['session_id'];



?>