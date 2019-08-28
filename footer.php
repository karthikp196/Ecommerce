
<!--footer -->
<div class="footer">
	<div class="container">
		<div class="col-md-3 footer-grid">
			<h3>About Us</h3>
			<p>Iprints is an Independent, full service digital printing company that offers a wide range of services and products in printing Industry.
			We have been in this business since 2005 and we have proved digital and vinyl printing services for various business Industries.</p>
		</div>
		<div class="col-md-3 footer-grid ">
			<h3>Menu</h3>
			<ul>
				<li><a href="#">Who We are</a></li>
				<li><a href="#">Why Iprints?</a></li>
				<li><a href="#">Careers</a></li>						 
				<li><a href="#">Privacy Policy</a></li> 
				<li><a href="#">Contact Ust</a></li>
			</ul>
		</div>
		<div class="col-md-3 footer-grid ">
			<h3>Customer Services</h3>
			<ul>
				<li><a href="#">Shipping</a></li>
				<li><a href="#">Terms & Conditions</a></li>
				<li><a href="#">Online Shopping</a></li>	
				<li><a href="#">Faqs</a></li>
				<li><a href="#">Contact</a></li>
									 
				 
			</ul>
		</div>
		<div class="col-md-3 footer-grid">
			<h3>My Account</h3> 
			<ul>
				<li><a href="#">Login</a></li>
				<li><a href="#">Register</a></li>
				<li><a href="#">Order History</a></li>
				<li><a href="#">Wishlist</a></li>
				
			</ul>
		</div>
		<div class="clearfix"></div>
			<div class="footer-bottom">
				<h2 ><a href="#">Iprints<span>Best Printing Company in Bangalore</span></a></h2>
				<p class="fo-para">Iprints is an individual firm that offers printing and document services all under one Place. We wish to make printing a 
				simple and hassle-free process for both business customers and individuals. We can work with you to make anything from
				visiting cards, letterheads, brochures, banners, T-shirts & mug printing . </p>
				<ul class="social-fo">
					<li><a href="#" class=" face"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
					<li><a href="#" class=" twitter"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
					<li><a href="#" class=" instagram"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
					<li><a href="#" class="youtube"><i class="fa fa-youtube" aria-hidden="true"></i></a></li>
				</ul>
				<div class=" address">
					<div class="col-md-4 fo-grid1">
							<p><i class="fa fa-home" aria-hidden="true"></i>22/1, 4th Cross, 6th A Main,Banaswadi, Bengaluru.</p>
					</div>
					<div class="col-md-4 fo-grid1">
							<p><i class="fa fa-phone" aria-hidden="true"></i>+91-9945040907, +91-80-41161286</p>	
					</div>
					<div class="col-md-4 fo-grid1">
						<p><a href="mailto:info@example.com"><i class="fa fa-envelope-o" aria-hidden="true"></i>info@iprintsonline.com</a></p>
					</div>
					<div class="clearfix"></div>
					
					</div>
			</div>
		<div class="copy-right">
			<p> &copy; 2018 Iprints. All Rights Reserved | Designed by  <a href="http://www.fixxgroup.com/"target="_blank"> Fixxgroup</a></p>
		</div>
	</div>
</div>
<!-- //footer-->

<!-- smooth scrolling -->
	<script type="text/javascript">
		$(document).ready(function() {
		/*
			var defaults = {
			containerID: 'toTop', // fading element id
			containerHoverID: 'toTopHover', // fading element hover id
			scrollSpeed: 1200,
			easingType: 'linear' 
			};
		*/								
		$().UItoTop({ easingType: 'easeOutQuart' });
		});
	</script>
	<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
<!-- //smooth scrolling -->
<!-- for bootstrap working -->
		<script src="js/bootstrap.js"></script>
<!-- //for bootstrap working -->
<script type='text/javascript' src="js/jquery.mycart.js"></script>
  <script type="text/javascript">
  $(function () {

    var goToCartIcon = function($addTocartBtn){
      var $cartIcon = $(".my-cart-icon");
      var $image = $('<img width="30px" height="30px" src="' + $addTocartBtn.data("image") + '"/>').css({"position": "fixed", "z-index": "999"});
      $addTocartBtn.prepend($image);
      var position = $cartIcon.position();
      $image.animate({
        top: position.top,
        left: position.left
      }, 500 , "linear", function() {
        $image.remove();
      });
    }

    $('.my-cart-btn').myCart({
      classCartIcon: 'my-cart-icon',
      classCartBadge: 'my-cart-badge',
      affixCartIcon: true,
      checkoutCart: function(products) {
        $.each(products, function(){
          console.log(this);
        });
      },
      clickOnAddToCart: function($addTocart){
        goToCartIcon($addTocart);
      },
      getDiscountPrice: function(products) {
        var total = 0;
        $.each(products, function(){
          total += this.quantity * this.price;
        });
        return total * 1;
      }
    });

  });
  </script>


  <script>
  	
 

  </script>
  
 
</body>
</html>