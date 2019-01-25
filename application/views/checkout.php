
<!-- // being content Area -->
<section id="main-content" class="checkout  checkout-one">
   <div class="container">
      <div class="row">
         <h3>Order Confirmation</h3>
         <h5>Take a minute to review the information below and make any necessary changes.</h5>
      </div>
      <div class="row content">
         <div class="col-md-12">
            <table class="table table-bordered responsive-card-table unstriped">
               <thead>
                  <tr>
                     <th>Provider</th>
                     <th>Device</th>
                     <th>Condition</th>
                     <th>Offer</th>
                     <th>Quantity</th>
                     <th>Subtotal</th>
                     <th>Remove</th>
                  </tr>
               </thead>
               <tbody>
			     <?php
				   foreach ($this->cart->contents() as $item){
				 ?>
                  <tr>
                     <td data-label="Provider"><?= $item['provider']; ?></td>
                     <td data-label="Device"><?= $item['name'].' '.$item['storage']; ?></td>
                     <td data-label="Condition"><?= $item['condition']; ?></td>
                     <td data-label="Offer">$<?= $item['price']; ?></td>
                     <td data-label="Quantity"><input type="number" class="form-control" data-row="<?= $item['rowid']; ?>" value="<?= $item['qty']; ?>"></td>
                     <td data-label="Subtotal">$<?= $item['subtotal']; ?></td>
                     <td data-label="Remove"  class="small-width" data-title="Remove : ">
                        <a href="javascript:;" onclick='updateitem("<?= $item['rowid']; ?>",0);'><i class="fa fa-times"></i></a>
                     </td>
                  </tr>
				 <?php
					}
					?>
               </tbody>
            </table>
			<p><i>*Item must be deactivated from you account and/or paid off from any carrier installment agreement (for cellular items only)</p>
         </div>
      </div>
	
	  <div class="row content">
	        <hr noshade>
         <div class="col-md-12">
			<div class="col-md-6">
			  <a href="<?= base_url(); ?>" class="btn btn-primary">
				Add Another Device &nbsp;<span class="glyphicon-plus"></span>
			  </a>
		   </div>
		   <div class="col-md-6">
			<h2>Order Total: <span id="total">$<?= $this->cart->format_number($this->cart->total()); ?></span></h2>
		   </div>
		</div>
	  </div>
	  
      <div class="row content" style="min-height: 50px;">
          <hr noshade>
         <div class="col-md-6 col-sm-6 col-xs-12">
		   <div class="col-xs-2">
			  <i class="fas fa-portrait" style="font-size: 32px;"></i>
		   </div>
		   <div class="col-xs-10">
			 <h4><b>Contact Information</b> 
				<a href="<?= base_url(); ?>order/contact"><i class="fa fa-edit"></i></a>
			 </h4>
			 <p>
				<?= $cdet['first_name'].' '.$cdet['last_name']; ?><br/>
				<?= $pdet['email']; ?><br/>
				<?= $cdet['phone']; ?><br/><br/>
				<i style="font-size: 12px;">Your prepaid shipping label  will be emailed to this email immediately after checkout.</i>
			 </p>
		   </div>
         </div>
         <div class="col-md-6 col-sm-6 col-xs-12">
		   <div class="col-xs-2">
			  <i class="fas fa-shipping-fast" style="font-size: 32px;"></i>
		   </div>
		   <div class="col-xs-10">
			 <h4><b>Shipping Information</b>  
				<a href="<?= base_url(); ?>order/contact"><i class="fa fa-edit"></i></a>
			 </h4>
			 <p>
				<?= (isset($cdet['unit']) ? $cdet['unit'].', ' : ""); ?>
				<?= (isset($cdet['street']) ? $cdet['street'].', ' : ""); ?>
				<?= (isset($cdet['zip_code']) ? $cdet['zip_code'].', ' : ""); ?>
				<?= (isset($cdet['city']) ? $cdet['city'].', ' : ""); ?>
				<?= (isset($cdet['state']) ? $cdet['state'].', ' : ""); ?>
				<?= (isset($cdet['country']) ? $cdet['country'].'. ' : ""); ?><br/>
			  </p>
			<?php
			  $trade_type=(isset($cdet['trade_type']) ? $cdet['trade_type'] : "");
			  if($trade_type == "local_dropoff"){
				echo '<p>Trade Type: Local Drop Off.<br/>
				Date: '.(isset($cdet['date']) ? date('jS M Y', strtotime($cdet['date'])) : "").'<br/>
				Time: '.(isset($cdet['time']) ? $cdet['time'] : "").'</p>'; 
			  }
			  if($trade_type == "prepaid_label"){
				echo '<p>Prepaid Label.</p>'; 
			  }
			?>
		   </div>
         </div>
      
         <div class="col-md-6 col-sm-6 col-xs-12">
		   <div class="col-xs-2">
			  <i class="fab fa-paypal" style="font-size: 32px;"></i>
		   </div>
		   <div class="col-xs-10">
			 <h4><b>Payment Method</b> 
				<a href="<?= base_url(); ?>order/payment"><i class="fa fa-edit"></i></a>
			 </h4>
			 <p>
				Payment Method: <?= ($pdet['pay_type']==1 ? 'Paypal' : 'Check'); ?><br/>
				Email: <?= (!empty($pdet['paypal_email']) ? $pdet['paypal_email'] : $pdet['email']); ?>
			 </p>
		   </div>
         </div>
      </div>
	  
      <div class="row content">
          <hr noshade>
         <div class="col-md-12  text-center">
            <a href="confirm-order" class="btn btn-orange">Complete Order</a>
         </div>
      </div>
   </div>
</section>
<!-- // end content Area -->
