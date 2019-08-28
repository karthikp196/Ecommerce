<?php
    include('header.php');
?>
    <section>

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
                    <input type="number" class="mugs">
                </div>
                <div class="col-lg-6 text-center pr_dv1">
                    <p>Price Rs.<span><?php echo $row['product_price'] ?></span></p>
                </div>
                <div class="col-lg-6 text-center pr_dv">
                    <button class="mug-btn">Add To cart</button>
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
                    <input type="number" class="mugs">
                </div>
                <div class="col-lg-6 text-center pr_dv1">
                    <p>Price Rs.<span><?php echo $row['product_price'] ?></span></p>
                </div>
                <div class="col-lg-6 text-center pr_dv">
                    <button class="mug-btn">Add To cart</button>
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



