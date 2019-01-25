<!-- // being page Header -->
        <div id="page-header">
          <div class="container">
            <div class="row">
              <div class="page-header">
                <ul class="list-inline brand-tabs">
                  <li><?= $cat_title; ?> <i class="fas fa-arrow-right"></i></li>
                  <li class="completed"><a href="javascript:void(0);">
                    <span class="number">01 </span><span class="text"><?= (isset($mod_title) ? $mod_title : 'Model'); ?></span>
                  </a></li>
                  <li class="active"><a href=""><span class="number">02 </span><span class="text">Provider</span></a></li>
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
              <h3>Choose Your Provider</h3>
            </div>
            <div class="row">
              <ul class="list-inline model-list provider-list">
				 <?php
					foreach($providers AS $pro){
						if(!empty($pro['logo'])){
							echo '<li class="col-md-3 col-sm-3s col-xs-12">
							  <a href="'.$slug.'/'.$pro['slug'].'" class="btn btn-primary btn-lg btn-block">
							  <img src="'.base_url().'assets/uploads/providers/'.$pro['logo'].'" class="img-responsive normal" alt="'.$pro['slug'].'">
							  <img src="'.base_url().'assets/uploads/providers/'.$pro['logo'].'" class="img-responsive normal-hover" alt="'.$pro['slug'].'">
							  </a>
							</li>';
						}
						else{
							echo '<li class="col-md-3 col-sm-4 col-xs-12">
							  <a href="'.$slug.'/'.$pro['slug'].'" class="btn btn-primary btn-lg btn-block">'.strtoupper($pro['title']).'</a>
							</li>';
						}
					}
				  ?>
              </ul>
            </div>
          </div>
        </section>
        <!-- // end content Area -->