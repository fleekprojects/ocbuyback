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

<!-- // being page Header -->
        <div id="page-header">
          <div class="container">
            <div class="row">
              <div class="page-header">
                <ul class="list-inline brand-tabs">
                  <li><?= $cat_title; ?></li>
                  <li class="completed"><a href="javascript:void(0);">
                    <span class="number">01 </span><span class="text"><?= (isset($mod_title) ? $mod_title : 'Model'); ?></span>
                  </a></li>
                  <li class="completed"><a href="javascript:void(0);">
                    <span class="number">02 </span><span class="text"><?= (isset($pro_title) ? $pro_title : 'Provider'); ?></span>
                  </a></li>
                  <li><a href=""><span class="number">03 </span><span class="text">Storage</span></a></li>
                  <li><a href=""><span class="number">04 </span><span class="text">Condition</span></a></li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <!-- // end Header -->
        
        <!-- // being content Area -->
        <section id="main-content">
          <div class="container">
            <div class="row">
              <h3>Choose Your Model</h3>
            </div>
            <div class="row">
              <ul class="list-inline model-list">
				 <?php
					foreach($storage AS $sto){
						echo '<li class="col-md-6 col-sm-4 col-xs-12">
						  <a href="'.$slug.'/'.$sto['slug'].'" class="btn btn-primary btn-lg btn-block">'.$sto['title'].'</a>
						</li>';
					}
				  ?>
              </ul>
            </div>
          </div>
        </section>
        
</div>
</div>
        <!-- // end content Area -->