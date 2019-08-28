<?php
include('config.php');
$message = array();

if(isset($_POST['adminuser']) && ($_POST['password']))
{
    $username = $_POST['adminuser'];
    $password = $_POST['password'];

    $sql = "SELECT * FROM admin_users WHERE name='$username' AND password ='$password'";
    $result = mysqli_query($conn,$sql);
    $num_rows = mysqli_num_rows($result);
    $row = mysqli_fetch_assoc($result);
    if($num_rows==1)
    {
       $message['is_error'] = 0;
       //$message['msg'] = "Login successfull";
        //$session_start();
        $_SESSION['id'] = $row['name'];
        $message['msg'] = $_SESSION['id'];
    }
    else
    {
        $message['is_error'] = 1;
        $message['msg'] = "invalid credentials";
    }
    echo json_encode($message);
    
}



?>