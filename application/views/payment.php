<div class="clear"></div>

<div class="latest-sell-title">
   <!-- Latest blog title start here -->
   <h2>Sell your device</h2>
   <p>Get the highest price for your device</p>
   <div class="back-btn">
      <!-- Back btn start here -->
      <p><a href="#"><i class="fa fa-angle-left" aria-hidden="true"></i> Back to Home</a></p>
   </div>
   <!-- Back btn end here -->
</div>
<div class="clear"></div>
</div>
<div id="banner">
<div class="jumbotron">

<!-- // being content Area -->
<section id="main-content" class="checkout">
  <div class="container">
	<div class="row">
	  <h3>How would you like to be paid?</h3>
	  <h5>We will issue payment via PayPal or a mailed check within one business day of receiving your device.</h5>
	</div>
	<div class="row">
	  <div class="col-md-12">
	      <div class="content">
			<form id="pay_form" action="<?=base_url();?>order/checkout" method="POST">
			  <div class="form-group">
			  
				<input type="radio" id="paypal_check" class="checked" <?= ($pay_type == 1 ? 'checked' : ''); ?> name="pay_type" value="1">
				
				<input type="radio" id="cheque_check" class="checked" <?= ($pay_type == 2 ? 'checked' : ''); ?> name="pay_type" value="2">
				
				<label for="cheque_check" class="checkout-page-title rad-primary sel" id="lab-chk">
				  <div class="col-sm-1 col-xs-2 img">
					<img src="<?php echo base_url(); ?>assets/images/check_img.png" alt="PayPal">
				  </div>
				  <div class="col-sm-11 col-xs-10">
					<div class="content-title">Check </div>
					<p>Receive your check in the mail 3-5 business days after your order is processed</p>
				  </div>
				</label>
				
				<label for="paypal_check" class="checkout-page-title rad-primary" id="lab-pay">
				  <div class="col-sm-1 col-xs-2 img">
					<img src="<?php echo base_url(); ?>assets/images/paypal_icon.png" alt="PayPal">
				  </div>
				  <div class="col-sm-11 col-xs-10">
					<div class="content-title">PayPal</div>
					<p>Quickest payment option – funds are deposited directly into your PayPal account</p>
				  </div>
				</label>
			
			
				</div>
			 <div id="pay_details" <?= (isset($email) ? '' : 'style="display:none"'); ?>>
			  <div class="form-group">
				<label for="email" class="checkout-page-title">Email Address</label>
				<p>We will use this to send you order updates</p>
				<input type="email" class="form-control" id="email" name="email" placeholder="Email" required value="<?= $email; ?>">
			  </div>
			  <div class="form-group">
				<input type="email" class="form-control" id="confirm_email" placeholder="Confirm Email" required value="<?= $email; ?>">
			  </div>
			  <div id="emsg"></div>
			  <div class="checkbox" id="paypal_box" <?= ($paypalemail == 1 ? '' : 'style="display:none;"'); ?>>
				<label>
				  <input type="checkbox" name="paypalemail" id="paychk" class="paypal-checked" value="1" <?= ($paypalemail == 1 ? 'checked' : ''); ?> > My PayPal email is different than my contact email
				</label>
			  </div>
			  
			  <div class="paypal-email-box" <?= ($pay_type == 1 ? '' : 'style="display:none;"'); ?>>
				<div class="form-group">
				  <input type="email" class="form-control" id="paypal_email" placeholder="Paypal Email Address" name="paypal_email" value="<?= $paypal_email; ?>">
				</div>
				<div class="form-group">
				  
				  <input type="email" class="form-control" id="confirm_paypal_email" placeholder="Confirm Paypal Email Address" value="<?= $paypal_email; ?>">
				</div>
				<div id="pemsg"></div>
			  </div>
			  <div class="form-group text-right">
				<button type="button" class="btn btn-primary" onclick="validate_email()">Continue</button>
			  </div>
			 </div>
			</form>
			  
	  </div>
	  
		</div>
	</div>
  </div>
</section>
</div>
</div>
<!-- // end content Area -->
<script>
$('input[type=radio][name=pay_type]').change(function() {
    if (this.value == 1) {
        $("#pay_details").slideDown();
        $("#paypal_box").slideDown();
		$("#lab-chk").removeClass('sel');
		$("#lab-pay").addClass('sel');
    }
    else if (this.value == 2) {
		$("#paypal_email").val("");
		$("#confirm_paypal_email").val("");
		$("#paychk").removeAttr( "checked" );
        $("#paypal_box").slideUp();
        $(".paypal-email-box").slideUp();
        $("#pay_details").slideDown();
		$("#lab-pay").removeClass('sel');
		$("#lab-chk").addClass('sel');
		
    }
});
$('input[type=checkbox][name=paypalemail]').change(function() {
    if ($('input.paypal-checked').is(':checked')) {
        $(".paypal-email-box").slideDown();
    }
    else{
        $(".paypal-email-box").slideUp();
		$("#paypal_email").val("");
		$("#confirm_paypal_email").val("");
    }
});
function validate_email(){
	var email=$("#email").val();
	var cemail=$("#confirm_email").val();
	var error=0;
	if(email == "" || cemail == ""){
		error=1;
		$("#emsg").html("<span style='color:red'>Email Addresse and Confirm Email Address both are required</span>");
	}
	else if(email != cemail){
		error=1;
		$("#emsg").html("<span style='color:red'>Email Addresses donot match</span>");
	}
	else if ($('input.paypal-checked').is(':checked')) {
      var pemail=$("#paypal_email").val();
	  var pcemail=$("#confirm_paypal_email").val();
	  if(pemail == "" || pcemail == ""){		
		error=1;
		$("#emsg").html("<span style='color:red'>Paypal Email Addresse and Confirm Email Address both are required</span>");
	  }
	  if(pemail != pcemail){
		error=1;
		$("#pemsg").html("<span style='color:red'>Paypal Email Addresses donot match</span>")
	  }
    }
	if(error==0){
		$("#pay_form").submit();
	}
}
</script>

