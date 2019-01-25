<div class="clear"></div>
<div class="latest-contact-title">
   <!-- Latest blog title start here -->
   <h2>contact us</h2>
   <p>Contact support services</p>
   <div class="back-btn">
      <!-- Back btn start here -->
      <p><a href="<?= base_url(); ?>"><i class="fa fa-angle-left" aria-hidden="true"></i> Back to Home</a></p>
   </div>
   <!-- Back btn end here -->
</div>
<!-- Latest blog title end here -->  
</div> <!-- main header end here -->
<div class="clear"></div>
<div class="contact-row-1">
   <!-- Contact row 1 start here -->
   <div class="container">
      <div class="row">
         <div class="col-md-6">
            <div class="customer-addr">
               <div class="cus-img">
                  <img src="<?= base_url(); ?>assets/front/images/con-col-1.png" alt="" />
               </div>
               <h3>Customer Support</h3>
               <p>Text: <?= Phone; ?></p>
               <p><a href="mailto:<?= Site_Email; ?>">Email: <?= Site_Email; ?></a></p>
            </div>
         </div>
         <div class="col-md-6">
            <div class="customer-addr">
               <div class="cus-img">
                  <img src="<?= base_url(); ?>assets/front/images/con-col-2.png" alt="" />
               </div>
               <h3>head office</h3>
               <p><?= Address; ?></p>
            </div>
         </div>
      </div>
   </div>
</div>
<!-- Contact row 1 end here -->
<div class="clear"></div>
<div class="contact-form">
   <!-- Contact form start here -->
   <div class="container">
      <div class="row">
         <div class="contact-form-inner">
            <!-- Contact form inner start here -->
            <div class="col-md-4">
               <div class="addr-text">
                  <h4>Hours of Operation:</h4>
                  <p>Monday to Friday - 9AM to 5PM (PT)<br>
                     Saturday - Closed<br>
                     Sunday - Closed
                  </p>
               </div>
               <div class="contact-map">
                  <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3311.07666908987!2d-117.88830468473473!3d33.91342628064404!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x80dcd501494ebc95%3A0x7e19c9cb7ccb999c!2sBrea+Mall%2C+Brea%2C+CA+92821!5e0!3m2!1sen!2s!4v1538395899689" width="329" height="197" frameborder="0" style="border:0" allowfullscreen></iframe>
               </div>
            </div>
            <div class="col-md-8">
				<div id="msg"></div>
				<form action="<?= base_url();?>Contact/AddRecord" method="post" id="ConForm">
                  <div class="form-group">
                     <input type="text" name="full_name" class="form-control" placeholder="Full Name*">
                  </div>
                  <div class="form-group">
                     <input type="email" name="email" class="form-control" placeholder="Email Address*">
                  </div>
                  <div class="form-group">
                     <input type="text" name="subject" class="form-control" placeholder="Subject">
                  </div>
                  <div class="form-group">
                     <textarea name="message" class="form-control" placeholder="Message*" rows="4"></textarea>
                  </div>
                  <div class="submit-btn-contact">
					 <img id="loader" src="<?= base_url(); ?>assets/images/loader.gif" style="height:50px; float:right; display:none"/>
                     <input id="ConSub" type="submit" class="btn btn-success btn-send" value="Send message">
                  </div>
               </form>
            </div>
         </div>
      </div>
   </div>
</div>
<!-- Contact form end here -->
<script src="<?= base_url(); ?>assets/js/jquery.validate.js"></script>
<script type="text/javascript">
	$("#ConForm").submit(function(e) { 
		e.preventDefault();
		if ($('#ConForm').valid()) {
			$('#ConSub').hide();
			$('#loader').show();
			var action =$('#ConForm').attr('action');
			var value =$('#ConForm').serialize();
			$.ajax({
				url:action,
				type:'POST',
				data:value,
				success:function(result){
					if(result==0){
						$("#msg").html('<span style="color:red"><i class="fa fa-ban"></i><b> Error. Please Try Again Later!</b><br/></span>');
						$("#msg").show();
					}
					else if(result==1){	
						$("#msg").html('<span style="color:white"><i class="fa fa-check"></i><b> Your Message has been sent.</b><br/></span>');
						$('#ConForm')[0].reset();
						$("#msg").show();
					}
					$('#ConSub').show();
					$('#loader').hide();
				},
				error: function (xhr, textStatus, errorThrown){
					alert(xhr.responseText);
				}
			});
		}

	});
   	$("#ConForm").validate({
   		rules: {
   		  full_name: "required",
		  email: {
			required: true,
			email: true
		  },
   		  subject: "required",
   		  message: "required"
   		}
   	});
</script>