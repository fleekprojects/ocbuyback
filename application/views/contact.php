<!-- // being content Area -->
<section id="main-content" class="checkout">
  <div class="container">
	<div class="row">
	  <h3>Shipping Information</h3>
	  <h5>Provide the address for your free shipping label and payment.</h5>
	</div>
	<div class="row">
		<div class="col-md-12 content">
			<form id="pay_form" action="<?=base_url();?>order/payment" method="POST">
			  <div class="col-sm-6">
			    <div class="form-group">
					<input type="text" class="form-control" name="first_name" placeholder="First Name" value="<?= (isset($cdet['first_name']) ? $cdet['first_name'] : ""); ?>" required>
			    </div>
			  </div>
			  <div class="col-sm-6">
			    <div class="form-group">
					<input type="text" class="form-control" name="last_name" placeholder="Last Name" value="<?= (isset($cdet['last_name']) ? $cdet['last_name'] : ""); ?>" required>
			    </div>
			  </div>
			  <div class="col-sm-12">
			    <div class="form-group">
					<?php
						$trade_type=(isset($cdet['trade_type']) ? $cdet['trade_type'] : "");
						$time=(isset($cdet['time']) ? $cdet['time'] : "");
					?>
					<select class="form-control" name="trade_type" id="trade_type" required>
						<option <?= ($trade_type == "" ? "selected" : ""); ?> value="">Select how to ship us your item</option>
						<option <?= ($trade_type == "local_dropoff" ? "selected" : ""); ?> value="local_dropoff">Local Drop Off - Visit Our Location For Payout.</option>
						<option  <?= ($trade_type == "prepaid_label" ? "selected" : ""); ?> value="prepaid_label">Prepaid Label - Print Label Now and Use Your Own Box For Faster Payout.</option>
					</select>
			    </div>
			  </div>
			  <div class="col-sm-12" id="local_tradein" <?= ($trade_type != "local_dropoff" ? 'style="display:none"' : ""); ?>>
			    <div class="col-sm-6">
				  <div class="form-group">
					<input type="text" class="form-control" id="datepicker" name="date" placeholder="Select Date" value="<?= (isset($cdet['date']) ? $cdet['date'] : ""); ?>">
				  </div>
				</div>
				<div class="col-sm-6">
				  <div class="form-group">
					<select name="time" id="time" class="form-control">
						<option <?= ($time == "" ? "selected" : ""); ?> value="">Select Time</option>
						<option <?= ($time == "9:00 AM" ? "selected" : ""); ?> value="9:00 AM">9:00 AM</option>
						<option <?= ($time == "10:00 AM" ? "selected" : ""); ?> value="10:00 AM">10:00 AM</option>
						<option <?= ($time == "11:00 AM" ? "selected" : ""); ?> value="11:00 AM">11:00 AM</option>
						<option <?= ($time == "12:00 PM" ? "selected" : ""); ?> value="12:00 PM">12:00 PM</option>
						<option <?= ($time == "01:00 PM" ? "selected" : ""); ?> value="01:00 PM">01:00 PM</option>
						<option <?= ($time == "02:00 PM" ? "selected" : ""); ?> value="02:00 PM">02:00 PM</option>
						<option <?= ($time == "03:00 PM" ? "selected" : ""); ?> value="03:00 PM">03:00 PM</option>
						<option <?= ($time == "04:00 PM" ? "selected" : ""); ?> value="04:00 PM">04:00 PM</option>
						<option <?= ($time == "05:00 PM" ? "selected" : ""); ?> value="05:00 PM">05:00 PM</option>
					</select>
				  </div>
				</div>
			  </div>
			
			  <div class="col-sm-12">
			    <div class="form-group" id="locationField">
					<input id="autocomplete" placeholder="Enter Your Address" onFocus="geolocate()" type="text" name="address" value="<?= (isset($cdet['address']) ? $cdet['address'] : ""); ?>" class="form-control" required ></input>
				</div>
			  </div>
			  <div id="address">
			  <div class="col-sm-4">
				<div class="form-group">
					<input type="text" class="field form-control" id="street_number" name="unit" placeholder="Unit, Suite or Apt Number" value="<?= (isset($cdet['unit']) ? $cdet['unit'] : ""); ?>" readonly>
				</div>
			  </div>
			  <div class="col-sm-8">
				<div class="form-group">
					<input type="text" class="field form-control" name="street" id="route" placeholder="Street Address" value="<?= (isset($cdet['street']) ? $cdet['street'] : ""); ?>" readonly>
				</div>
			  </div>
			  <div class="col-sm-4">
				<div class="form-group">
					<input type="text" class="field form-control" id="locality" name="city" value="<?= (isset($cdet['city']) ? $cdet['city'] : ""); ?>" placeholder="City" readonly>
				</div>
			  </div>
			  <div class="col-sm-4">
				<div class="form-group">
					<input type="text" class="field form-control" id="administrative_area_level_1" name="state" value="<?= (isset($cdet['state']) ? $cdet['state'] : ""); ?>"  placeholder="State" readonly>
				</div>
			  </div>
			  <div class="col-sm-4">
				<div class="form-group">
					<input type="text" class="field form-control" id="postal_code" name="zip_code" value="<?= (isset($cdet['zip_code']) ? $cdet['zip_code'] : ""); ?>" placeholder="Zip Code" readonly>
				</div>
			  </div>
			  <div class="col-sm-6">
				<div class="form-group">
					<input type="text" class="field form-control" id="country" name="country" placeholder="Country" value="<?= (isset($cdet['country']) ? $cdet['country'] : ""); ?>" readonly>
				</div>
			  </div>
			  </div>
			  <div class="col-sm-6">
			    <div class="form-group">
					<input type="tel" class="form-control" name="phone" placeholder="Phone Number 111-111-1111" value="<?= (isset($cdet['phone']) ? $cdet['phone'] : ""); ?>" pattern="[0-9]{3}[-][0-9]{3}[-][0-9]{4}" required>
			    </div>
			  </div>
			  <div class="form-group text-right">
				<button type="submit" class="btn btn-primary" >Continue</button>
			  </div>
			</form>
		</div>
	</div>
  </div>
</section>
<!-- // end content Area -->
					
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDDUCHzlUnF7YwDC_OfKHAuHNkJ_BzIjoA&libraries=places&callback=initAutocomplete" async defer></script>
							
<script>

$(document).ready(function() {
  $(window).keydown(function(event){
    if(event.keyCode == 13) {
      event.preventDefault();
      return false;
    }
  });
});

$( function() {
    $( "#datepicker" ).datepicker({
		minDate: new Date(),
		beforeShowDay: $.datepicker.noWeekends
	});
} );
 

$('#trade_type').change(function() {
    if (this.value == 'local_dropoff') {
        $("#local_tradein").slideDown();
    }
    else if (this.value == 'prepaid_label') {
        $("#local_tradein").slideUp();
        $("#datepicker").val("");
        $("#time").val("");
    }
});


var placeSearch, autocomplete;
var componentForm = {
  street_number: 'short_name',
  route: 'long_name',
  locality: 'long_name',
  administrative_area_level_1: 'short_name',
  postal_code: 'short_name',
  country: 'long_name'
};

function initAutocomplete() {
  // Create the autocomplete object, restricting the search to geographical
  // location types.
  autocomplete = new google.maps.places.Autocomplete(
    /** @type {!HTMLInputElement} */
    (document.getElementById('autocomplete')), {
      types: ['geocode']
    });

  // When the user selects an address from the dropdown, populate the address
  // fields in the form.
  autocomplete.addListener('place_changed', fillInAddress);
}

function fillInAddress() {
  // Get the place details from the autocomplete object.
  var place = autocomplete.getPlace();

  for (var component in componentForm){
    document.getElementById(component).value = '';
	if(component != "country"){
		document.getElementById(component).readOnly = false;
	}
  }
  // Get each component of the address from the place details
  // and fill the corresponding field on the form.
  for (var i = 0; i < place.address_components.length; i++) {
    var addressType = place.address_components[i].types[0];
    if (componentForm[addressType]) {
      var val = place.address_components[i][componentForm[addressType]];
      document.getElementById(addressType).value = val;
	  if(addressType == "country" && val != "United States"){
		  alert("Invalid US Address");
		  $("#autocomplete").val("");
		  for (var component in componentForm){
			document.getElementById(component).value = '';
			document.getElementById(component).readOnly = true;
		  }
		   return false;
	  }
    }
  }

  
}

// Bias the autocomplete object to the user's geographical location,
// as supplied by the browser's 'navigator.geolocation' object.
function geolocate() {
  if (navigator.geolocation) {
    navigator.geolocation.getCurrentPosition(function(position) {
      var geolocation = {
        lat: position.coords.latitude,
        lng: position.coords.longitude
      };
      var circle = new google.maps.Circle({
        center: geolocation,
        radius: position.coords.accuracy
      });
      autocomplete.setBounds(circle.getBounds());
    });
  }
}

</script>

