<?php

include('config.php');
$message = array();

if(isset($_POST['name']) && ($_POST['email']) && ($_POST['mobile']) && ($_POST['password']))
{
   
    $name= $_POST['name'];
    $email= $_POST['email'];
    $mobile=$_POST['mobile'];
    $password=$_POST['password'];
    $pass = md5($password);
    $sql = "SELECT * FROM users WHERE email = '$email' ";
    $res = mysqli_query($conn,$sql);
    $num = mysqli_num_rows($res);

    if($num == 0)
    {
        $sql = "INSERT INTO users (name,email,mobile,password) VALUES ('$name', '$email', '$mobile' ,'$pass')";
        $res = mysqli_query($conn,$sql);
        $message['is_error'] = 0;
        $message['msg'] = "User Registered Successfully";
    }
    else
    {
        $message['is_error'] = 1;
        $message['msg'] = "Email already Registered";
    }

    echo json_encode($message);

}

else if(isset($_POST['mail_in']) && ($_POST['password_in'])) 
{
   $mail_in = $_POST['mail_in'];
   $password_in = md5($_POST['password_in']);
   
   $sql = "SELECT * FROM users WHERE email = '$mail_in' and password = '$password_in'";
   $res = mysqli_query($conn,$sql);
   $num = mysqli_num_rows($res);

   if($num == 1) 
   {
      while($row=mysqli_fetch_array($res))
      {
          $_SESSION['id']= $row['id'];
          $_SESSION['name']= $row['name'];
      }
      $message['is_error'] = 0;
      $message['msg'] = "Successfully logged in";
   }

   else
   {
      $message['is_error'] = 1;
      $message['msg'] = "Invalid Credentials";
   }

   echo json_encode($message);
}


else if(isset($_POST['product_id']) && ($_POST['no_single_side_cards']))
{
 

  $product_id = $_POST['product_id'];

  $no_single_side_cards = $_POST['no_single_side_cards'];

  $query = ("SELECT * FROM businesscard where product_id = '$product_id'");

  $result = mysqli_query($conn,$query);

  while($row = mysqli_fetch_array($result))
  {
    $singleside_price = $row['singleside_price'];
  }

  $total_price = $singleside_price * $no_single_side_cards;

  $query1 = (" INSERT INTO temporary_cart_details (product_id,no_items,price,cookie_id) VALUES ('$product_id','$no_single_side_cards','$total_price','$cookie')");

  $result1 = mysqli_query($conn,$query1);
   
   $message['is_error'] = 0;
   $message['msg'] = "Product added to cart";

   echo json_encode($message);

}

else if(isset($_POST['product_id']) && ($_POST['no_double_side_cards']))
{
 

  $product_id = $_POST['product_id'];

  $no_double_side_cards = $_POST['no_double_side_cards'];

  $query = ("SELECT * FROM businesscard where product_id = '$product_id'");

  $result = mysqli_query($conn,$query);

  while($row = mysqli_fetch_array($result))
  {
    $doubleside_price = $row['doubleside_price'];
  }

  $total_price = $doubleside_price * $no_double_side_cards;

  $query1 = (" INSERT INTO temporary_cart_details (product_id,no_items,price,cookie_id) VALUES ('$product_id','$no_double_side_cards','$total_price','$cookie')");

  $result1 = mysqli_query($conn,$query1);
   
   $message['is_error'] = 0;
   $message['msg'] = "Product added to cart";

   echo json_encode($message);

}

else if(isset($_POST['temp_id'])){
    $temp_id = $_POST['temp_id'];
    $sql ="DELETE FROM temporary_cart_details WHERE temp_id='$temp_id'";
    $res = mysqli_query($conn,$sql);

    echo "successfully removed from cart";
}

else if(isset($_POST['allproduct_id']) && ($_POST['no_products']))
{
  $allproducts_id = $_POST['allproduct_id'];
  $no_products = $_POST['no_products'];
  
  $sql = "SELECT * FROM product_details WHERE product_id='$allproducts_id'";
  $res = mysqli_query($conn,$sql);
  while($row = mysqli_fetch_array($res))
  {
    $product_price = $row['product_price'];
  }
  $total_product_price = $product_price*$no_products;
  $sql1 = (" INSERT INTO temporary_cart_details (product_id,no_items,price,cookie_id) VALUES ('$allproducts_id','$no_products','$total_product_price','$cookie')");
  $res1 = mysqli_query($conn,$sql1);
  $message['is_error'] = 0;
  $message['msg'] = "All Product added to cart";

  echo json_encode($message);

}



?>