<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
		<title>OC BuyBack</title>
		
		
<link rel="shortcut icon" type="image/png" href="<?= base_url(); ?>assets/images/fav.png"/>
		
		<!-- Old CSS -->
		<link rel="stylesheet" href="<?= base_url(); ?>assets/css/style.css" rel="stylesheet">
		<!-- Bootstrap -->
				<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

		<link rel="stylesheet" href="<?= base_url(); ?>assets/front/css/owl.carousel.min.css">
        <link rel="stylesheet" href="<?= base_url(); ?>assets/front/css/owl.theme.default.min.css">
        <script src="<?= base_url(); ?>assets/front/js/jquery.min.js"></script>
        <script src="<?= base_url(); ?>assets/front/js//owl.carousel.js"></script>
        
		<link rel="stylesheet" href="<?= base_url(); ?>assets/front/css/reset.css" rel="stylesheet">
		<link rel="stylesheet" href="<?= base_url(); ?>assets/front/css/bootstrap.min.css" rel="stylesheet">
		<link rel="stylesheet" href="<?= base_url(); ?>assets/front/css/style.css" rel="stylesheet">
		<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
		<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
		<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
		<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
		<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->
	</head>
	<body>
		<div class="wrapper">
			<!-- wrapper start here -->
			<div class="top-header-row">
				<!-- Top header row start here -->
				<div class="container">
					<div class="row">
						<div class="col-md-6">
							<div class="top-phone-left">
								<p><span>Phone:</span> <?= Phone; ?></p>
							</div>
						</div>
						<div class="col-md-6">
							<div class="top-icons-right">
								<ul>
									<a href="https://twitter.com/@buy_oc" target="_blank"><li><i class="fa fa-twitter" aria-hidden="true"></i></li></a>
									<a href="https://www.facebook.com/ocbuyback" target="_blank"><li><i class="fa fa-facebook-official" aria-hidden="true"></i></li></a>
									<a href="https://www.instagram.com/ocbuyback/" target="_blank"><li><i class="fa fa-instagram" aria-hidden="true"></i></li></a>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- Top header row end here -->
			<div class="clear"></div>
			<div class="main-header blog">
				<!-- main header start here -->
				<div class="header">
					<!-- header start here -->
					<div class="container">
						<div class="row">
							<div class="col-md-4">
					    	<div class="navbar-header">
								<div class="logo">
									<!-- Logo start here -->
							<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar"> <span class="sr-only"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>

									<a href="<?= base_url(); ?>"><img src="<?= base_url(); ?>assets/front/images/logo.png" alt="" /></a>
								</div>
								<!-- Logo end here -->
								</div>
							</div>
							<div class="col-md-8">
							    <?php
									$cart_count=$this->cart->total_items();
								  ?>
							    <div id="navbar" class="navbar-collapse collapse navbar-right" aria-expanded="false" style="height: 1px;">
								<div class="nav">
									<!-- Nav start here -->
									<ul>
										<li><a href="<?= base_url(); ?>">Home</a></li>
										<li><a href="<?= base_url(); ?>how-it-works">How it works </a></li>
										<li><a href="<?= base_url(); ?>faqs">FAQ</a></li>
										<li><a href="<?= base_url(); ?>blogs">Blogs</a></li>
										<li><a id="cart_icon" href="javascript:;" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"> (<?=$cart_count;?> Items) <i class="fa fa-shopping-cart"></i></a>
			  <?php
				if($cart_count > 0){
					?>
              <ul class="dropdown-menu dropdown-cart" role="menu">
                <li class="mini_cart_devices_title"><h1 >Your Devices</h1></li>
				<?php
				   foreach ($this->cart->contents() as $item){
				 ?>
				 
				  <li class="mini_cart">
                    <div class="cart_img" >
                      <img src="<?=base_url();?>assets/uploads/models/<?= ($rec['image'] != "" ? $rec['image'] : "dummy.png"); ?>"  style="max-height:30px;" />
                    </div>
                    <div class="mini_cart_desc">
                        <div class="model_name"> <?= $item['name']; ?></div>
                      <ul>
                        <li><?= $item['provider']; ?></li>
                        <li><?= $item['storage']; ?></li>
                        <li><?= $item['condition']; ?></li>
                      </ul>
					  <input type="number" data-row="<?= $item['rowid']; ?>" value="<?= $item['qty']; ?>"> 
                    </div>
                   	<div class="mini_price_cart">$<?= $item['price']; ?>
					  <a href="javascript:;" onclick='updateitem("<?= $item['rowid']; ?>",0);'><i class="fa fa-times"></i></a>
                    </div>
                    
                    
                  </li>
                  
                  
				   <?php } ?>
                    <li class="mini_cart_bottom">
                      <a class="text-center mini_cart_add_cart"  href="<?= base_url(); ?>">Add Another Device</a>
                      <a class="text-center mini_cart_checkout"  href="<?= base_url(); ?>order/checkout">Checkout</a></li>
                    </ul>
				<?php } ?>
                  </li>
										<li><a href="<?= base_url(); ?>sell">Request a Quote</a></li>
										<li><a href="<?= base_url(); ?>contact-us">Contact Us</a></li>
										
									</ul>
								</div>
								</div>
								<!-- Nav end here -->
								
								
								
								
								
							</div>
						</div>
					</div>
				</div>
				<!-- header end here -->
				
			<?php  $this->load->view($view,$viewData); ?>
			<!-- // End Content -->
			<div class="clear"></div>
			<div class="main-footer">
				<!--  main footer start here-->
				<div class="footer">
					<!-- Footer start here -->
					<div class="container">
						<div class="row">
							<div class="foo-logo">
								<!-- Footer logo start here -->
								<a href="<?= base_url(); ?>"><img src="<?= base_url(); ?>assets/front/images/foo-logo.png" alt="" /></a>
							</div>
							<!-- Footer logo end here -->
							<div class="foo-row-1">
								<!-- Footer row 1 start here -->
								<div class="col-md-3">
									<div class="foo-menu-1">
										<strong>CUSTOMER SERVICE</strong>
										<div class="foo-phone">
											<p><i class="fa fa-phone" aria-hidden="true"></i><?= Phone; ?></p>
										</div>
										<div class="foo-email">
											<a href="mailto:<?= Site_Email; ?>"><i class="fa fa-envelope" aria-hidden="true"></i><?= Site_Email; ?></a>
										</div>
										<div class="support-menu">
											<a href="<?= base_url(); ?>faqs"><i class="fa fa-question-circle" aria-hidden="true"></i>Support & FAQ</a>
										</div>
									</div>
								</div>
								<div class="col-md-3">
									<div class="foo-menu-1">
										<strong>MENU</strong>
										<ul>
										<!--	<li><a href="<?= base_url(); ?>about-us">About us</a></li> -->
											<li><a href="<?= base_url(); ?>how-it-works">How it works</a></li>
										<!--	<li><a href="<?= base_url(); ?>track-your-order">Track you order</a></li> -->
											<li><a href="<?= base_url(); ?>blogs">Blogs</a></li>
											<li><a href="<?= base_url(); ?>contact-us">Contact us</a></li>
										</ul>
									</div>
								</div>
								<div class="col-md-3">
									<div class="foo-menu-1">
										<strong>Hours of Operation</strong>
										<ul>
											<li><a>Monday to Friday - 9AM to 5PM (PT)</a></li>
											<li><a>Saturday - Closed</a></li>
											<li><a>Sunday - Closed</a></li>
										</ul>
									</div>
								</div>
								<div class="col-md-3">
									<div class="foo-menu-1">
										<div class="foo-map">
							<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3311.07666908987!2d-117.88830468473473!3d33.91342628064404!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x80dcd501494ebc95%3A0x7e19c9cb7ccb999c!2sBrea+Mall%2C+Brea%2C+CA+92821!5e0!3m2!1sen!2s!4v1538395899689" width="270" height="130" frameborder="0" style="border:0" allowfullscreen></iframe>
							<strong><?= Address; ?></strong>
         								</div>
									</div>
								</div>
							</div>
							<!-- Footer row 1 end here -->
							<div class="foo-row-1">
								<!-- Footer row 1 start here -->
								<div class="col-md-3">
									<div class="foo-menu-1">
										<ul>
											<li><a href="<?= base_url(); ?>sell">Sell your iPhone</a></li>
											<li><a href="<?= base_url(); ?>sell">Apple Trade In</a></li>
											<li><a href="<?= base_url(); ?>sell">Sell iPhone 6S</a></li>
											<li><a href="<?= base_url(); ?>sell">Sell iPhone 7</a></li>
										</ul>
									</div>
								</div>
								<div class="col-md-3">
									<div class="foo-menu-1">
										<ul>
											<li><a href="<?= base_url(); ?>sell">Sell my Cell Phone</a></li>
											<li><a href="<?= base_url(); ?>sell">Sell Samsung Galaxy S</a></li>
											<li><a href="<?= base_url(); ?>sell">Sell Samsung Galaxy S6</a></li>
											<li><a href="<?= base_url(); ?>sell">Sell Samsung Galaxy S7</a></li>
										</ul>
									</div>
								</div>
								<div class="col-md-3">
									<div class="foo-menu-1">
										<ul>
											<li><a href="<?= base_url(); ?>sell">Sell my Android Phone</a></li>
											<li><a href="<?= base_url(); ?>sell">Sell Google Pixel</a></li>
											<li><a href="<?= base_url(); ?>sell">Sell Tablet</a></li>
											<li><a href="<?= base_url(); ?>sell">Sell iPads</a></li>
										</ul>
									</div>
								</div>
								<div class="col-md-3">
									<div class="foo-menu-1">
										<ul>
											<li><a href="<?= base_url(); ?>sell">Sell iPhone</a></li>
											<li><a href="<?= base_url(); ?>sell">Sell Phone</a></li>
											<li><a href="<?= base_url(); ?>sell">Sell my Phone</a></li>
											<li><a href="<?= base_url(); ?>sell">Sell my iPhone</a></li>
										</ul>
									</div>
								</div>
							</div>
							<!-- Footer row 1 end here -->
						</div>
					</div>
					<div class="footer-btm-row">
						<!-- Footer btm row start here  -->
						<div class="container">
							<div class="row">
								<div class="col-md-3">
									<div class="copy-rights">
										<p>© OCBuyBack</p>
									</div>
								</div>
								<div class="col-md-9">
									<div class="btm-footer-inner">
										<div class="foo-nav">
											<ul>
												<li><a href="<?= base_url(); ?>terms-and-conditions">term of Service</a></li>
												<li><a href="<?= base_url(); ?>privacy-policy">privacy policy</a></li>
											</ul>
										</div>
										<div class="foo-social-icons">
											<ul>
										<a href="https://twitter.com/@buy_oc" target="_blank"><li><i class="fa fa-twitter" aria-hidden="true"></i></li></a>
									<a href="https://www.facebook.com/ocbuyback" target="_blank"><li><i class="fa fa-facebook-official" aria-hidden="true"></i></li></a>
									<a href="https://www.instagram.com/ocbuyback/" target="_blank"><li><i class="fa fa-instagram" aria-hidden="true"></i></li></a>
											</ul>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- Footer btm row end here  -->
				</div>
				<!-- Footer end here -->
			</div>
			<!--  main footer end here-->
		</div>
		<!-- wrapper end here -->
		<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->

		<script src="<?= base_url(); ?>assets/front/js/bootstrap.min.js"></script>
		<script src="<?= base_url(); ?>assets/js/jquery.validate.js"></script>
		<script src="<?= base_url(); ?>assets/front/js/plugins.js"></script>
		<script src="<?= base_url(); ?>assets/front/js/main.js"></script>
		<script>
		$("[type='number']").bind('keyup mouseup', function () {
		   var id=$(this).data('row');
		   var qty=$(this).val();
		   if(qty > 0){
			updateitem(id,qty);
		   }
		});
		function updateitem(id,qty){
			$.ajax({
			  type: "POST",
			  data: {"rowid":id,"qty":qty},
			  url: '<?= base_url(); ?>order/update-item',
			  success: function (data) {
				if(data==1){
					location.reload();
				}
			  },
			  error: function (xhr, textStatus, errorThrown){
				alert(xhr.responseText);
			  }
			});
		}
		</script>
	</body>
</html>

