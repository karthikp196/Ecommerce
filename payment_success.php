<?php

include 'config/config.php';

error_reporting(0);

?>
<!doctype html>
<html lang="en" >
<!--id="style-7"-->

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!--    <link rel="stylesheet" href="css/demo1.css">-->
    <link href="css/responsive-slider.css" rel="stylesheet">
    <!-- Font-Awesome CSS -->
    <link rel="stylesheet" href="css/font-awesome.css">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/owl.carousel.css">
    <!-- Favicon CSS -->
    <link rel="icon" href="images/fav-icon.png" type="image/png" sizes="32*32">
    <!-- Jquery slider css-->
    <link rel="stylesheet" href="css/jquery.animateSlider.css">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.css">
     <!-- animate css-->
    <link rel="stylesheet" href="css/animate.css">
    <!-- Custom Style CSS -->
    <link rel="stylesheet" href="css/style.css">
    

    <title>Sarathi</title>

</head>

<body>


    <header>
            <div class=" header-2">
                <div class="social-navbar clearfix  login-1">
                   <div class="wrapper">
                    <!--
            <ul class="social-icons">
                <li><a href="#"><i class="fab fa-facebook-f"></i></a></li>
                <li><a href="#"><i class="fab fa-twitter"></i></a></li>
            </ul>
-->
                    <ul class="login float-right">
                        <li class="join"><a href="#">Download Android <span><img src="images/Andriod%20Icon.png" alt=""></span></a></li>
                        

                      <?php
                        if(isset($_SESSION['user_id']))
                        {
                        
                        ?>

                        <li>
                            <button class="login-btn"onclick="document.getElementById('id01').style.display='block'" style="width:auto;"><?php echo $_SESSION['user_name']; ?></button>
                            <ul>
                                <li><a href="my_tests.php">My Test's</a></li>
                                <li><a href="#">My Profile</a></li>
                                <li><a href="logout.php">Logout</a></li>
                            </ul>  

                        </li>

                        <?php
                        }
                        else
                        {
                        ?>
                           <li><a href="login.php" class="login-btn"><span class="links">Login</span></a></li>
                           <li><a href="sign_up.php" class="login-btn"><span class="links">Sign Up</span></a></li>

                        <?php
                        }
                        ?>  
                        
                    </ul>
                    </div>
                </div>
                <div class="wrapper">
                <nav class="navbar navbar-expand-lg navbar-dark bg-dark nav-2">
                    <a class="navbar-brand logo-1" href="index.php">
                        <img src="images/Sarathi-logo.png" alt="">
                    </a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarMain" aria-controls="navbarMain" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>

                    <div class="collapse navbar-collapse" id="navbarMain nav-2-2">
                         <ul class="navbar-nav ml-auto custom-mar">
                            <li class="nav-item active nav1-item">
                                <a class="nav-link" href="who_we_are.php">Who We Are</a>
                            </li>
                            <li class="nav-item active nav1-item">
                                <a class="nav-link" href="what_we_do.php">What We Do</a>
                            </li>
                            <li class="nav-item active nav1-item">
                                <a class="nav-link" href="mock_subs.php">Mock Test</a>
                            </li>
                            <li class="nav-item active nav1-item">
                                <a class="nav-link" href="coaching_genie.php">Coaching Genie</a>
                            </li>
                            <li class="nav-item active nav1-item">
                                <a class="nav-link" href="#">Talent Quiz</a>
                            </li>
                            <li class="nav-item active nav1-item">
                                <a class="nav-link" href="yogdhaan.php">Yogdaan Contribution</a>
                            </li>
                            <li class="nav-item active nav1-item">
                                <a class="nav-link" href="sarathi.php">Become a Sarathi</a>
                            </li>
                            <li class="nav-item active nav1-item">
                                <a class="nav-link" href="gallery.php">Gallery & Awards</a>
                            </li>
                            <li class="nav-item active nav1-item">
                                <a class="nav-link" href="contact.php">Lets Connect</a>
                            </li>
                        </ul>
                    </div>
                </nav>
                </div>
            </div>
    </header>
    
     

    <main>

        <?php

        date_default_timezone_set('Asia/Kolkata');
        $date = date("d-m-y H:i:s");
        

            if(isset($_SESSION['user_id']))
            {

                $user_id = $_SESSION['user_id'];

                $query = ("SELECT * FROM users where user_id ='$user_id'");

                $result = mysqli_query($conn,$query);

                while($row = mysqli_fetch_array($result))
                {
                    $email = $row['email_id'];
                    $name = $row['name'];
                }

            }

            


        ?>


    	<?php

			if(isset($_POST['status']))
	   		{
	    		if($_POST['status']=="success")
	    		{

                    $trans_id = $_POST['txnid'];
                    $trans_amount = $_POST['amount'];

	    ?> 			
        <div class="mock-result">
            <div class="wrapper-extra-small">
                <div class="row">
                    <div class="col-lg-12">
                        <img src="images/hand-img.png" alt="">
                        <h1>Thank You For Your Payment</h1>
                        <p>The clock will be set at the server. The countdown timer in the top right corner of screen will display the remaining time available to you for completing the examination. </p>
                        <div class="test-card">
                            <table class="table">
                                
                                <tbody>
                                  <tr>
                                    <td>Name : </td>
                                    <td><?php echo $_POST['firstname']; ?></td>
                                  </tr>
                                  <tr>
                                    <td>Email Id : </td>
                                    <td><?php echo $_POST['email']; ?></td>
                                  </tr>
                                  <tr>
                                    <td>Product Information : </td>
                                    <td><?php echo $_POST['productinfo']; ?></td>
                                  </tr>
                                  <tr>
                                    <td>Date : </td>
                                    <td><?php echo $date; ?></td>
                                  </tr>
                                   <tr>
                                    <td>Txn ID :  </td>
                                    <td><?php echo $trans_id; ?></td>
                                  </tr>
                                   <tr>
                                    <td>Amount : </td>
                                    <td><?php echo $trans_amount;  ?></td>
                                  </tr>
                                </tbody>
                              </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <a href="my_tests.php"><input type="button" value="My Test's" class="test"></a>


        <?php

                if(isset($_SESSION['test_type']))
                {
                    $test_type = $_SESSION['test_type'];

                    if($test_type == "indi")
                    {
                  
                    $test_id = $_SESSION['imp_id'];

                    $query = ("INSERT INTO transaction_test_details (user_id,amount,test_id,txn_id,date1) VALUES ('$user_id','$trans_amount','$test_id','$trans_id','$date')  ");
                    $result = mysqli_query($conn,$query);


                    $query_1 = ("INSERT INTO test_details (user_id,test_id) VALUES ('$user_id','$test_id') ");
                    $result_1 = mysqli_query($conn,$query_1);

                    }
                    else
                    {
                        $sub_id = $_SESSION['imp_id'];

                        $query_z = ("SELECT * FROM mock_tests_details where sub_id = '$sub_id' ");

                        $result_z = mysqli_query($conn,$query_z);

                        while($rowz = mysqli_fetch_array($result_z))
                        {
                            $test_id = $row['test_id'];

                            $query = ("INSERT INTO transaction_test_details (user_id,amount,test_id,txn_id,date1) VALUES ('$user_id','$trans_amount','$test_id','$trans_id','$date')  ");
                            $result = mysqli_query($conn,$query);


                            $query_1 = ("INSERT INTO test_details (user_id,test_id) VALUES ('$user_id','$test_id') ");
                            $result_1 = mysqli_query($conn,$query_1);


                        }
                    }

                }
                


			}

        }

        ?>

        
        <?php
        require_once("lib/config_paytm.php");
        require_once("lib/encdec_paytm.php");

        $paytmChecksum = "";
        $paramList = array();
        $isValidChecksum = "FALSE";

        $paramList = $_POST;
        $paytmChecksum = isset($_POST["CHECKSUMHASH"]) ? $_POST["CHECKSUMHASH"] : "";
        $isValidChecksum = verifychecksum_e($paramList, PAYTM_MERCHANT_KEY, $paytmChecksum); //will return TRUE or FALSE string.


        if($isValidChecksum == "TRUE") 
        {

            if ($_POST["STATUS"] == "TXN_SUCCESS") 
            {

                $txn_id = $_POST['TXNID'];
                $txn_amount = $_POST['TXNAMOUNT'];
		?>

        <div class="mock-result">
            <div class="wrapper-extra-small">
                <div class="row">
                    <div class="col-lg-12">
                        <img src="images/hand-img.png" alt="">
                        <h1>Thank You For Your Payment</h1>
                        <p>The clock will be set at the server. The countdown timer in the top right corner of screen will display the remaining time available to you for completing the examination. </p>
                        <div class="test-card">
                            <table class="table">
                                
                                <tbody>
                                  <tr>
                                    <td>Name : </td>
                                    <td><?php echo $name; ?></td>
                                  </tr>
                                  <tr>
                                    <td>Email Id : </td>
                                    <td><?php echo $email; ?></td>
                                  </tr>
                                  <tr>
                                    <td>Product Information : </td>
                                    <td><?php echo $_SESSION['test_name']; ?></td>
                                  </tr>
                                  <tr>
                                    <td>Date : </td>
                                    <td><?php echo $date; ?></td>.
                                  </tr>
                                   <tr>
                                    <td>Txn ID :  </td>
                                    <td><?php echo $txn_id; ?></td>
                                  </tr>
                                   <tr>
                                    <td>Amount : </td>
                                    <td>Rs <?php echo $txn_amount; ?></td>
                                  </tr>
                                </tbody>
                              </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <a href="my_tests.php"><input type="button" value="My Test's" class="test"></a>

        <?php

                if(isset($_SESSION['test_type']))
                {
                    $test_type = $_SESSION['test_type'];

                    if($test_type == "indi")
                    {     
                        $test_id = $_SESSION['imp_id'];

                        $query = ("INSERT INTO transaction_test_details (user_id,amount,test_id,txn_id,date1) VALUES ('$user_id','$txn_amount','$test_id','$txn_id','$date')  ");
                        $result = mysqli_query($conn,$query);


                        $query_1 = ("INSERT INTO test_details (user_id,test_id) VALUES ('$user_id','$test_id') ");
                        $result_1 = mysqli_query($conn,$query_1);

                    }
                    else
                    {
                        $sub_id = $_SESSION['imp_id'];

                        $query_z = ("SELECT * FROM mock_tests_details where sub_id = '$sub_id' ");

                        $result_z = mysqli_query($conn,$query_z);

                        while($rowz = mysqli_fetch_array($result_z))
                        {
                            $test_id = $rowz['test_id'];

                            //echo $test_id;

                            $query = ("INSERT INTO transaction_test_details (user_id,amount,test_id,txn_id,date1) VALUES ('$user_id','$txn_amount','$test_id','$txn_id','$date')  ");
                            $result = mysqli_query($conn,$query);


                            $query_1 = ("INSERT INTO test_details (user_id,test_id) VALUES ('$user_id','$test_id') ");
                            $result_1 = mysqli_query($conn,$query_1);


                        }
                    }

                }
                


                }

            }

        ?>

    </main>
 
    <footer>
         <div class="wrapper">
             <div class="row">
                 <div class="col-lg-4 col-md-6 col-sm-12">
                     <div class="footer-inner foot-1">
                         <h3>About Sarathi</h3>
                         <p>it is a long established fact that a reader will be 
                            distracted by the readable content of a page 
                            when looking at its t. The point</p>
                         <div class="details-link">
                             <h6>General Enquiry</h6>
                             <a href="mailto:info@successsarathi.com;">info@successsarathi.com</a>
                         </div>
                         <div class="details-link">
                             <h6>Call Us Today</h6>
                             <a href="tel:7353366688;">+91-7353366688</a> / 
                             <a href="tel:7353776285;">+91-7353776285</a>
                         </div>
                     </div>
                 </div>
                 <div class="col-lg-2 col-md-6 col-sm-12">
                     <div class="footer-inner foot-2">
                         <h3>Quick Links</h3>
                         <ul class="menu-link">
                         <li>
                             <a href="#">About Us</a>
                             <a href="#">Current Affairs</a>
                             <a href="#">Book Store</a>
                             <a href="#">Test & Results</a>
                             <a href="#">Blog</a>
                             <a href="#">Gallery & Awards</a>
                         </li>
                         </ul>
                     </div>
                 </div>
                 <div class="col-lg-2 col-md-6 col-sm-12">
                     <div class="footer-inner foot-3">
                         <h3>Useful Links</h3>
                         <ul class="menu-link">
                             <li>
                                 <a href="#">Terms & Condition</a>
                                 <a href="#">Results</a>
                                 <a href="#">Payment Option</a>
                                 <a href="#">Enrollment</a>
                                 <a href=""><img src="images/google-icon.png" alt=""></a>
                             </li>
                         </ul>
                         <a href="" class="img-link">
                          <img src="" alt="">
                         </a>
                     </div>
                 </div>
                 <div class="col-lg-4 col-md-6 col-sm-12">
                     <div class="footer-inner  foot-4">
                         <h3>Newsletter</h3>
                         <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit voluptates, 
                            temporibus at, facere harum fugiat!</p>
                         <div class="form-link">
                          <form action="">
                              <input type="text" placeholder="Enter Mail ID" required>
                              <button value="submit" >Subscribe </button>
                          </form>
                         </div>
                         
                     </div>
                 </div>
                 <div class="col-lg-12">
                    <ul class="foot-soical-link">
                        <li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                        <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                        <li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
                        <li><a href="#"><i class="fa fa-google" aria-hidden="true"></i></a></li>
                        <li><a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
                    </ul>
                     <hr>
                     <div class="foot-copy">
                         <p>Successsarathi © 2018, All Rights Reserved</p>
                     </div>
                 </div>
             </div>
             
         </div>
     
    </footer>

    <!-- Optional JavaScript -->

    <!-- jQuery first -->
    <script src="js/jquery.js"></script>
    <!-- Boostrap Js -->
    <script src="js/bootstrap.js"></script>
    <!-- owl.carousel Js -->
    <script src="js/owl.carousel.js"></script>
    <!-- responsive-slider Js -->
    <script src="js/responsive-slider.js"></script>
    <!-- WOW Js -->
    <script src="js/WOW.js"></script>
      <script>
              new WOW().init();
              </script>


    <script>
       
        $(window).on('scroll', function() {
            if ($(window).scrollTop() >= 1000) {
                $('header').addClass('main');
            } else {
                $('header').removeClass('main');
            }

        });
        $('.Stud-slider').owlCarousel({
            loop: true,
            margin: 10,
            nav: false,
            dots: true,
            autoplay: true,
            autoplayTimeout: 5000,
            autoplaySpeed: 3000,
            dotsSpeed: 2000,
            responsive: {
                0: {
                    items: 1
                },
                600: {
                    items: 1
                },
                1000: {
                    items: 1
                }
            }
        });
        $('.bolg-slider').owlCarousel({
            loop: true,
            margin: 60,
            nav: false,
            dots: true,
            autoplay: true,
            autoplayTimeout: 5000,
            autoplaySpeed: 3000,
            dotsSpeed: 2000,
            responsive: {
                0: {
                    items: 1
                },
                600: {
                    items:3
                },
                1000: {
                    items: 3
                }
            }
        });
        $('.test-slider').owlCarousel({
            loop: true,
            margin: 60,
            nav: false,
            dots: true,
            autoplay: true,
            autoplayTimeout: 5000,
            autoplaySpeed: 3000,
            dotsSpeed: 2000,
            responsive: {
                0: {
                    items: 1
                },
                600: {
                    items:1
                },
                1000: {
                    items: 1
                }
            }
        });
        $(document).ready(function() {

            var tabWrapper = $('#tab-block'),
                tabMnu = tabWrapper.find('.tab-mnu  li'),
                tabContent = tabWrapper.find('.tab-cont > .tab-pane');

            tabContent.not(':first-child').hide();

            tabMnu.each(function(i) {
                $(this).attr('data-tab', 'tab' + i);
            });
            tabContent.each(function(i) {
                $(this).attr('data-tab', 'tab' + i);
            });

            tabMnu.click(function() {
                var tabData = $(this).data('tab');
                tabWrapper.find(tabContent).hide();
                tabWrapper.find(tabContent).filter('[data-tab=' + tabData + ']').show();
            });

            $('.tab-mnu > li').click(function() {
                var before = $('.tab-mnu li.active');
                before.removeClass('active');
                $(this).addClass('active');
            });

        });
    </script>
    <script>
        // Get the modal
        var modal = document.getElementById('id01');

        // When the user clicks anywhere outside of the modal, close it
        window.onclick = function(event) {
            if (event.target == modal) {
                modal.style.display = "none";
            }
        }
        var modal = document.getElementById('id02');

        // When the user clicks anywhere outside of the modal, close it
        window.onclick = function(event) {
            if (event.target == modal) {
                modal.style.display = "none";
            }
        }
        </script>
   
</body>

</html>