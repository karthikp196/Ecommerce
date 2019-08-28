<?php
include('config.php');

if(isset($_POST['business_submit']))
{
    $name = $_POST['name'];
    $company_name = $_POST['company_name'];
    $mobile = $_POST['mobile'];
    $email = $_POST['email'];
    $address = $_POST['address'];
    $additional = $_POST['additional'];
    $file = $_FILES['file'];
    $fileName = $_FILES['file']['name'];
    $fileTempName = $_FILES['file']['tmp_name'];
    $fileError = $_FILES['file']['error'];
    $fileType = $_FILES['file']['type'];
    $fileExt = explode('.', $fileName);
    $allowed = array('jpg','jpej','png','pdf');
    $fileSize = $_FILES['file']['size'];
    $imagePath ="uploads/businesscard_upload/".$fileName;
    $user_id = $_SESSION['id'];  
   
    

    if (move_uploaded_file($fileTempName,$imagePath)) {
        $sql= "INSERT INTO businesscard_filling (name,user_id,company_name,mobile,address,logo,additional_text,cookie_id) VALUES ('$name','$user_id','$company_name', '$mobile', '$address', '$imagePath','$additional','$cookie')";
        $res= mysqli_query($conn,$sql);
        header("location:checkoutpage.php");
    }

      
//     if(($fileSize>8000000)){
//         echo "filesize is too large";
//    }
//    else {
//        if(move_uploaded_file($fileTempName,$imagePath))
//        {
//           $sql= "INSERT INTO businesscard_filling (name,company_name,mobile,address,logo,additional_text) VALUES ('$name','$company_name', '$mobile', '$address', '$imagePath','$additional')";
//           $res= mysqli_query($conn,$sql);
//           echo "image inserted into tables";

//        }
//     else {
//            echo "there was an error in uploading file";
//          }
  
}



?>
