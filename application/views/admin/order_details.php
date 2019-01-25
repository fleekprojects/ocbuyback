<div class="row">
   <div class="col-md-12">
      <table style="width:100%">
         <thead>
            <tr>
               <th>Provider</th>
               <th>Device</th>
               <th>Condition</th>
               <th>Price</th>
               <th>Quantity</th>
               <th>Subtotal</th>
            </tr>
         </thead>
         <tbody>
            <?php
			foreach ($odetails as $item){
				?>            
            <tr>
               <td><?= $item['provider']; ?></td>
               <td><?= $item['device'].' '.$item['storage']; ?></td>
               <td><?= $item['condition']; ?></td>
               <td>$<?= $item['offer']; ?></td>
               <td><?= $item['quantity']; ?></td>
               <td>$<?= $item['subtotal']; ?></td>
            </tr>
            <?php
			}
			?>         
         </tbody>
      </table>
   </div>
</div>
<hr noshade>
<div class="row">
   <div class="col-md-12">
      <h2>Order Total: <span id="total">$<?= $order[0]['amount']; ?></span></h2>
   </div>
</div>
<hr noshade>
<div class="row" style="min-height: 50px;">
   <div class="col-md-6 col-sm-6 col-xs-12">
      <div class="col-xs-2">         <i class="fa fa-user" style="font-size: 32px;"></i>      </div>
      <div class="col-xs-10">
         <h4>            Contact Information          </h4>
         <p>            <?= $order[0]['first_name'].' '.$order[0]['last_name']; ?><br/>            <?= $order[0]['email']; ?><br/>            <?= $order[0]['phone']; ?><br/><br/>         </p>
      </div>
   </div>
   <div class="col-md-6 col-sm-6 col-xs-12">
      <div class="col-xs-2">         <i class="fa fa-edit" style="font-size: 32px;"></i>      </div>
      <div class="col-xs-10">
         <h4>            Shipping Information          </h4>
         <p><?= $order[0]['address']; ?><br/>
		 <?= $order[0]['zip'].', '.$order[0]['city'].', '.$order[0]['state']; ?>
		 <hr/>
		 <?= $order[0]['trade_details']; ?>
		 </p>
      </div>
   </div>
   <div class="col-md-6 col-sm-6 col-xs-12">
      <div class="col-xs-2">         <i class="fa fa-paypal" style="font-size: 32px;"></i>      </div>
      <div class="col-xs-10">
         <h4>            Payment Method         </h4>
         <p>
		 Payment Method: <?= ($order[0]['pay_type']==1 ? 'Paypal' : 'Check'); ?><br/>
		 Email: <?= (!empty($order[0]['paypal_email']) ? $order[0]['paypal_email'] : $order[0]['email']);?> </p>
      </div>
   </div>
</div>
<hr noshade>