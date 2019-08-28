<?php
include('config.php');
if(!isset($_SESSION['id']))
{
  header('Location:../index.php');
}
include('header.php');
?>
  <?php
               
               if(isset($_GET['id']))
                {
                $user_id = $_GET['id'];
                $product_id = $_GET['prod_id'];
                $cookie_id = $_GET['ck_id'];
                //echo $user_id; 
                //echo "<br>";
                //echo $product_id;
                //echo "<br>";
                //echo $cookie_id;

                }
                else 
                {
                  echo "Data not recieved";
                }
            ?>





            
          <!--order section -->

        
          <div class="row">
              <div class="col-lg-12 col-sm-12 mb-4">
                <div class="card card-small card-post card-post--aside card-post--1">
                 
                  <div class="card-body">
                    <div class="row">
                        <div class="col-lg-6">
                        <?php 
                        $query = "SELECT users.id,users.name,users.email,users.mobile,temporary_cart_details.status, temporary_cart_details.product_id, temporary_cart_details.price,temporary_cart_details.created_at FROM users INNER JOIN temporary_cart_details ON users.id=temporary_cart_details.user_id WHERE cookie_id='$cookie_id' AND status=1 AND product_id=$product_id";
                        $result = mysqli_query($conn,$query);
                        while ($row=mysqli_fetch_assoc($result)) 
                        {
                          $p_query = "SELECT * FROM product_details WHERE product_id='$product_id'";
                          $result2 = mysqli_query($conn,$p_query);
                          $row_p=mysqli_fetch_assoc($result2);
                          $query3 = "SELECT * FROM businesscard_filling WHERE cookie_id='$cookie_id'";
                          $result3 = mysqli_query($conn,$query3);
                          $row3 = mysqli_fetch_assoc($result3);
                          ?>

                  
                        <div class="card card-small card-post mb-4">
                            <div class="card-body">
                                <h5 class="card-title">Order details</h5>
                                <p>
                                Name : <span><?php echo $row['name']; ?></span>
                                </p>
                                <p>
                                    Email-id : <span><?php echo $row['email']; ?></span>
                                </p>
                                <p>
                                    Phone : <span><?php echo $row['mobile']; ?></span>
                                </p>
                                <p>
                                    Price : Rs <span><?php echo $row['price']; ?></span>
                                </p>
                                <p>
                                Product Info : <span><?php echo $row_p['product_name']; ?></span>
                                </p>
                                <p>
                                Address : <span>86/1,banaswadi , Bangalore.</span>
                                </p>
                                <p>
                                Payment Status : <span><?php if($row['status']==1){ echo "Confirmed";}else{echo "Pending";} ?></span>
                                </p>
                                <p>
                                Date of order : <span><?php echo $row['created_at']; ?></span>
                                </p>
                            </div>
                           
                            <div class="card-footer border-top d-flex">
                                <div class="card-post__author d-flex">
                                <a href="#" class="card-post__author-avatar card-post__author-avatar--small" style="background-image: url('images/avatars/2.jpg');">Written by Anna Kunis</a>
                                <div class="d-flex flex-column justify-content-center ml-3">
                                    <span class="card-post__author-name"><?php echo $row['name']; ?></span>
                                    <small class="text-muted"><?php echo $row['created_at']; ?></small>
                                </div>
                                </div>
                                <div class="my-auto ml-auto">
                                <a class="btn btn-sm btn-white" href="#">
                                    <i class="far fa-bookmark mr-1"></i> ordered </a>
                                </div>
                            </div>
                       </div>
                           <?php
                        }
                        ?>
                        </div>
                        <div class="col-lg-6">
                        <div class="card card-small mb-4">
                  <div class="card-header border-bottom">
                    <h6 class="m-0">Order Attachment Details</h6>
                  </div>
                  <ul class="list-group list-group-flush">
                    <li class="list-group-item p-3">
                      <div class="row">
                        <div class="col">
                          <form>
                            <div class="form-row">
                              <div class="form-group col-md-6">
                                <label for="feFirstName">Company Name</label>
                                <input type="text" class="form-control" id="feFirstName" placeholder="First Name" value="<?php echo $row3['company_name'] ?>"> </div>
                              <div class="form-group col-md-6">
                                <label for="feLastName">Your Name</label>
                                <input type="text" class="form-control" id="feLastName" placeholder="Last Name" value="<?php echo $row3['name'] ?>"> </div>
                            </div>
                            <div class="form-row">
                              <div class="form-group col-md-6">
                                <label for="feEmailAddress">Mobile</label>
                                <input type="text" class="form-control" id="feEmailAddress" value="<?php echo $row3['mobile']; ?>"> </div>
                              
                            </div>
                            <div class="form-group">
                              <label for="feInputAddress">Address</label>
                              <input type="text" class="form-control" id="feInputAddress" value="<?php echo $row3['address'] ?>"> </div>
                            <div class="form-row">
                             
                          
                            </div>

                            <div class="form-row">
                              <div class="form-group col-md-12">
                              <p>Logo</p>
                                <div class="col-lg-9">
                                    <img class="responsive" src="../../<?php echo $row3['logo'] ?>" alt="">
                                </div>
                                <div class="col-lg-3">
                                  <br>
                                    <p>
                                
                                    <a href="http://fixxgroup.co/clientupdates-iprints/<?php echo $row3['logo'] ?>" download>
                                      <button type="button" id="15" class="mb-2 btn btn-outline-primary mr-2 ordr_view">Download Logo</button>
                                    </a>
                                   
                                    </p>
                                </div>
                             </div>
                            </div>


                            <div class="form-row">
                              <div class="form-group col-md-12">
                                <label for="feDescription">Additional text</label>
                                <textarea class="form-control" name="feDescription" rows="5"><?php echo $row3['additional_text']; ?></textarea>
                              </div>
                            </div>
                            <button type="submit" class="btn btn-accent">Proceed order</button>
                          </form>
                        </div>
                      </div>
                    </li>
                  </ul>
                </div>
                        </div>
                    </div>
                  </div>
                </div>
              </div>

            </div>
          

          <!-- End of orders section -->
          </div>
          <?php include('footer.php');
          ?>