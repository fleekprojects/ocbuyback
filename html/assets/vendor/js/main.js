// -------------------------------------------------------------
    // WOW setup
    // -------------------------------------------------------------		

jQuery(function ($) {
      var wow = new WOW({
      mobile:       false
      });
      wow.init();
    }());
$(document).ready(function(){

var quantitiy=0;
   $('.quantity-right-plus').click(function(e){
        
        // Stop acting like a button
        e.preventDefault();
        // Get the field name
        var quantity = parseInt($('#quntity').val());
        
        // If is not undefined
            
            $('#quntity').val(quantity + 1);

          
            // Increment
        
    });

     $('.quantity-left-minus').click(function(e){
        // Stop acting like a button
        e.preventDefault();
        // Get the field name
        var quantity = parseInt($('#quntity').val());
        
        // If is not undefined
      
            // Increment
            if(quantity>0){
            $('#quntity').val(quantity - 1);
            }
    });
    
});