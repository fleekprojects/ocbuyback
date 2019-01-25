<div id="banner">
          <div class="jumbotron">
            <div class="container">
              <div class="row text-center">
                <h1>Get the highest price for
                <span>your device – guaranteed.</span></h1>
                <p>
				  <?php
					foreach($categories AS $cat){
						echo '<a href="sell/'.$cat['slug'].'" class="btn btn-primary btn-lg">Sell '.$cat['title'].'</a>';
					}
				  ?>
                </p>
              </div>
            </div>
          </div>
        </div>
        