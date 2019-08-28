<?php
    include('header.php');
?>
    <section>
    <div class="container-fluid bnr_con">
        <div class="bnr">
            <img class="responsive" src="images/banners/wall graphics.jpg" alt="">
			<div class="ovrly">
			<p>Choose Best wallgraphics</p>
			</div>			
        </div>
        <div class="tit_b">
            <p>Wall Graphics </p> 
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
            $sql = "SELECT * FROM product_details WHERE category_id=22";
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
            <img class="card-img-top responsive prd_img" src="uploads/product_images/wallgraphics/<?php echo $row['product_image'] ?>" alt="Card image cap">
            <div class="card-body">
                <div class="row pr_row">
                <div class="col-lg-6 text-left">
                    <p class="card-text">sqft

                </div>
                <div class="col-lg-6 text-center pr_dv">
                    <input type="number" id="product_no_<?php echo $row['product_id']; ?>" class="mugs">
                </div>
                <div class="col-lg-6 text-center pr_dv1">
                    <p>Price per sqft Rs.<span><?php echo $row['product_price'] ?></span></p>
                </div>
                <div class="col-lg-6 text-center pr_dv">
                    <button id="<?php echo $row['product_id'] ?>" class="mug-btn stationary_btn market_add">Add To cart</button>
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



