<div class="clear"></div>

<div class="latest-sell-title">
   <!-- Latest blog title start here -->
   <h2>Sell your device</h2>
   <p>Get the highest price for your device</p>
   <div class="back-btn">
      <!-- Back btn start here -->
      <p><a href="<?= base_url(); ?>"><i class="fa fa-angle-left" aria-hidden="true"></i> Back to Home</a></p>
   </div>
   <!-- Back btn end here -->
</div>
<div class="clear"></div>
</div>


<div id="banner">
          <div class="jumbotron">
            <div class="container">
              <div class="row text-center">
                <h1>Get the highest price for
                <span>For your Device - Guaranteed</span></h1>
               
                <p>
				  <?php
					foreach($categories AS $cat){
						echo '<div class="col-md-3"><a class="pro-cate" href="sell/'.$cat['slug'].'"><img src="'.base_url().'assets/uploads/categories/'.($cat['image'] != "" ? $cat['image'] : "dummy.png").'"/></a>
						<a href="sell/'.$cat['slug'].'" class="btn btn-primary btn-lg">Sell '.$cat['title'].'</a></div>';
					}
				  ?>
                </p>
              </div>
            </div>
          </div>
        </div>
        