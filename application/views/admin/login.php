<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title><?= Admin_Title; ?> </title>

    <!-- Bootstrap -->
    <link href="<?= base_url(); ?>assets/vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="<?= base_url(); ?>assets/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="<?= base_url(); ?>assets/vendors/nprogress/nprogress.css" rel="stylesheet">
    <!-- Animate.css -->
    <link href="<?= base_url(); ?>assets/vendors/animate.css/animate.min.css" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="<?= base_url(); ?>assets/build/css/custom.min.css" rel="stylesheet">
  </head>

  <body class="login">
    <div>
      <a class="hiddenanchor" id="signup"></a>
      <a class="hiddenanchor" id="signin"></a>

      <div class="login_wrapper">
        <div class="animate form login_form">
          <section class="login_content">
            <form id="adminlog" method="POST">
				<img src="http://199.250.201.124/~ocsupply/assets/images/logo.png" alt="" class="admin_login_logo" />
              <h1>Admin Login</h1>
			  <div>
				<span id="msg" style="display:none;"></span>
			  </div>
              <div>
                <input type="text" class="form-control" placeholder="Username" name="user_name" required />
              </div>
              <div>
                <input type="password" class="form-control" placeholder="Password" name="password" required />
              </div>
              <div>
                <button type="submit" class="btn btn-default" id="sublog">Log in</button>
                <a class="reset_pass" href="#">Lost your password?</a>
              </div>

              <div class="clearfix"></div>

              <div class="separator">

                <div class="clearfix"></div>
                <br />
              </div>
            </form>
          </section>
        </div>

      </div>
    </div>
    <!-- jQuery -->
    <script src="<?= base_url(); ?>assets/vendors/jquery/dist/jquery.min.js"></script>
	<script type="text/javascript">
		$('#adminlog input').keypress(function(e) {
			if (e.keyCode == 13) {
				$('#sublog').click();
			}
		});
		$("#adminlog").submit(function(e){
			e.preventDefault();
			var value =$("#adminlog").serialize() ;
			$.ajax({
				url:'<?php echo base_url();?>admin/login_auth',
				type:'POST',
				data:value,
				success:function(result){
					if(result==0){
						$("#msg").html('<div class="alert alert-danger alert-dismissable"><i class="fa fa-ban"></i><button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button><b>Invalid UserName/Password.</b></div>');
						$("#msg").show();
						setTimeout(function(){$("#msg").hide(); }, 3000);

					}
					else{	
						window.location.href="<?php echo base_url();?>admin/dashboard";
					}
				},
				error: function (xhr, textStatus, errorThrown){
					alert(xhr.responseText);
				}
			});

		});
</script>
  </body>
</html>
