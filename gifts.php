<?php
    include('header.php');
?>
    <section>
    <div class="container-fluid bnr_con">
        <div class="bnr">
            <img class="responsive" src="images/banners/gifts.jpg" alt="">
			<div class="ovrly">
			<p>Choose Best Gifts</p>
			</div>			
        </div>
        <div class="tit_b">
            <p>Gifts </p> 
        </div>
    </div>
            <div class="c_pop">
                    <p class="pop_crt">
                        <span><i class="fa fa-check"></i></span> Product added to cart
                    </p>
            </div>    

        <div class="container">
        <div class="row">

        <?php
            $id = 7;
            $sql = "SELECT * FROM product_details WHERE category_id=5";
            $res = mysqli_query($conn,$sql);
            while($row = mysqli_fetch_array($res))
            {
        ?>

        <div class="col-lg-4">
            <div class="card mugs-card">
                <div class="col-lg-12 text-center">
                    <p class="title_p">
                   <?php echo $row['product_name']; ?>
                    </p>
                </div>
            <img class="card-img-top responsive prd_img" src="uploads/product_images/mugs/<?php echo $row['product_image'] ?>" alt="Card image cap">
            <div class="card-body">
                <div class="row pr_row">
                <div class="col-lg-6 text-left">
                    <p class="card-text">no of products

                </div>
                <div class="col-lg-6 text-center pr_dv">
                    <input type="number" id="product_no_<?php echo $row['product_id']; ?>" class="mugs">
                </div>
                <div class="col-lg-6 text-center pr_dv1">
                    <p>Price Rs.<span><?php echo $row['product_price'] ?></span></p>
                </div>
                <div class="col-lg-6 text-center pr_dv">
                    <button id="<?php echo $row['product_id'] ?>" class="mug-btn stationary_btn">Add To cart</button>
                </div>
                <div class="col-lg-12">
                    <p class="text-center">Minimum 
                    <span>
                    <?php
                        $p_id = $row['product_id'];
                                            
                        switch ($p_id) {
                            case "7":
                                echo " 100 Nos";
                                break;
                            default:
                                echo "10 Nos";
}

                    ?>
                    </span>
                    </p>
                </div>

                </div>

            </div>
            </div>
        </div>

        <?php
            }
        ?>

        <?php
           
            $sql = "SELECT * FROM product_details WHERE category_id=19";
            $res = mysqli_query($conn,$sql);
            while($row = mysqli_fetch_array($res))
            {
        ?>

        <div class="col-lg-4">
            <div class="card mugs-card">
                <div class="col-lg-12 text-center">
                    <p class="title_p">
                   <?php echo $row['product_name']; ?>
                    </p>
                </div>
            <img class="card-img-top responsive prd_img" src="uploads/product_images/gifts/<?php echo $row['product_image'] ?>" alt="Card image cap">
            <div class="card-body">
                <div class="row pr_row">
                <div class="col-lg-6 text-left">
                    <p class="card-text">no of products

                </div>
                <div class="col-lg-6 text-center pr_dv">
                    <input type="number" id="product_no_<?php echo $row['product_id']; ?>" class="mugs">
                </div>
                <div class="col-lg-6 text-center pr_dv1">
                    <p>Price Rs.<span><?php echo $row['product_price'] ?></span></p>
                </div>
                <div class="col-lg-6 text-center pr_dv">
                    <button id="<?php echo $row['product_id'] ?>" class="mug-btn stationary_btn">Add To cart</button>
                </div>
                <div class="col-lg-12">
                    <p class="text-center">Minimum 
                    <span>
                    <?php
                        $p_id = $row['product_id'];
                                            
                        switch ($p_id) {
                            case "8":
                                echo " 50 Nos";
                                break;
                            case "9":
                                echo " 50 Nos";
                                break;
                            case "10":
                                echo " 25 Nos";
                                break;
                            case "11":
                            echo " 50 Nos";
                            break;
                           
                            default:
                                echo "10 Nos";
                      }
                    ?>
                    </span>
                    </p>
                </div>
                </div>

            </div>
            </div>
        </div>

        <?php
            }
        ?>

     
        </div>
    </div>

    </section>
<?php
    include('footer.php');
?>



