<div class="">
   <div class="row top_tiles">
      <div class="animated flipInY col-lg-3 col-md-3 col-sm-6 col-xs-12">
         <div class="tile-stats">
            <div class="icon"><i class="fa fa-caret-square-o-right"></i></div>
            <div class="count"><?= $counters['received']; ?></div>
            <h3>Received</h3>
            <p>Trade Ins</p>
         </div>
      </div>
      <div class="animated flipInY col-lg-3 col-md-3 col-sm-6 col-xs-12">
         <div class="tile-stats">
            <div class="icon"><i class="fa fa-check"></i></div>
            <div class="count"><?= $counters['paid']; ?></div>
            <h3>Paid </h3>
            <p>Trade Ins</p>
         </div>
      </div>
      <div class="animated flipInY col-lg-3 col-md-3 col-sm-6 col-xs-12">
         <div class="tile-stats">
            <div class="icon"><i class="fa fa-refresh"></i></div>
            <div class="count"><?= $counters['recycled']; ?></div>
            <h3>Recycled</h3>
            <p>Trade Ins</p>
         </div>
      </div>
      <div class="animated flipInY col-lg-3 col-md-3 col-sm-6 col-xs-12">
         <div class="tile-stats">
            <div class="icon"><i class="fa fa-reply"></i></div>
            <div class="count"><?= $counters['returned']; ?></div>
            <h3>Returned</h3>
            <p>Trade Ins</p>
         </div>
      </div>
   </div>
</div>
<div class="">
   <div class="row">
      <div class="col-md-12 col-sm-12 col-xs-12">
         <div class="x_panel">
	<div id="msg"></div>
            <div class="x_title">
               <h2>Recent <?= $title; ?> |<small>List</small></h2>
               <?php  if(count($records) > 0 ) { ?>
               <!--<button type="button" class="btn btn-danger margin pull-right" onClick="doDelete()" style="margin-right:auto" >Delete</button>-->
               <?php } ?>
               <div class="clearfix"></div>
            </div>
            <div class="x_content">
               <form method="post" id="ordertbl" action="<?= base_url();?>admin/Categories/DeleteRecord">
                  <table id="datatable-buttons" class="table table-striped table-bordered">
                     <thead>
                        <tr>
                           <th align="center"><input type="checkbox" name="chkAll" class="checkUncheckAll" ></th>
                           <th>Name</th>
                           <th>Email</th>
                           <th>Order Total</th>
                           <th>Status</th>
                           <th>Date Added</th>
                           <th>Action</th>
                        </tr>
                     </thead>
                     <tbody>
                        <?php
                           foreach($records AS $rec){
                            ?>
                        <tr>
                           <td align="center">
                              <input class="chkIds" type="checkbox" name="ids[]" id="chk-<?= $rec['id'] ?>" value="<?= $rec['id'] ?>"  />
                           </td>
						   <?php $name=$rec['first_name'].' '.$rec['last_name']; ?>
                           <td><?= $name; ?></td>
                           <td><?= $rec['email']; ?></td>
                           <td>$<?= $rec['amount']; ?></td>
                           <td>
							<select class="form-control" id="o_st<?= $rec['id'] ?>" onchange='change_order_status(<?= $rec['id'].',"'.$name.'","'.$rec['email'].'"'; ?>)' >
								<option <?= ($rec['status'] == "" ? 'selected' : ''); ?> value="">Pending</option>
								<option <?= ($rec['status'] == "received" ? 'selected' : ''); ?> value="received">Received</option>
								<option <?= ($rec['status'] == "paid" ? 'selected' : ''); ?> value="paid">Paid</option>
								<option <?= ($rec['status'] == "recycled" ? 'selected' : ''); ?> value="recycled">Recycled</option>
								<option <?= ($rec['status'] == "returned" ? 'selected' : ''); ?> value="returned">Returned</option>
								<?php
								if($rec['trade_details']=='Prepaid Label'){
									echo '<option '.($rec['status'] == "shipping_kit_sent" ? 'selected' : '').' value="shipping_kit_sent">Shipping Kit Sent</option>';
								} ?>
							</select>
                           </td>
                           <td>
                              <span style="font-size:0"><?= $rec['created_at']; ?></span>
                              <?= date('jS M Y<\b\r> h:i A', strtotime($rec['created_at'])); ?>
                           </td>
                           <td>
                              <a class="btn btn-info btn-flat btn-sm" href="javascript:;" onclick="get_details(<?= $rec['id']; ?>)"><i class="fa fa-eye"></i> View Details</a>
                              <!--<a class="btn btn-danger btn-sm" onclick="doDelete()"><i class="fa fa-trash"></i></a>-->
                           </td>
                        </tr>
                        <?php
                           }
                           ?>
                     </tbody>
                  </table>
               </form>
            </div>
         </div>
      </div>
      <!-- Detail modal -->
      <div class="modal fade bs-example-modal-lg" id="ModalOdet" tabindex="-1" role="dialog" aria-hidden="true">
         <div class="modal-dialog">
            <div class="modal-content">
               <div class="modal-header">
                  <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span>
                  </button>
                  <h4 class="modal-title" id="myModalLabel"><?= $title; ?> |<small>View Details</small></h4>
               </div>
               <div class="modal-body" id="detail_view">
               </div>
               <div class="modal-footer">
                  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
               </div>
            </div>
         </div>
      </div>
      </div>
      </div>
      <!-- Detail modal -->
   </div>
</div>
<script>
	$('#ordertbl').DataTable( {
        "order": [[ 0, "desc" ]]
    } );
   function get_details(id){
   	$.ajax({
   		url:"<?= base_url(); ?>admin/trades/get_order",
   		type:'POST',
   		data:{'id':id},
   		success:function(result){
   			$("#detail_view").html(result);
   			$("#ModalOdet").modal("show");
   		},
   		error: function (xhr, textStatus, errorThrown){
   			console.log(xhr.responseText);
   		}
   	});
   }
   function change_order_status(id,name,email){
	var status=$("#o_st"+id).val();
   	$.ajax({
   		url:"<?= base_url(); ?>admin/trades/ch_status",
   		type:'POST',
   		data:{'id':id,'status':status,'name':name,'email':email},
   		success:function(result){
   			$("#msg").html('<div class="alert alert-success alert-dismissable"><i class="fa fa-check"></i><button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button><b> Status Updated!</b></div>');
			$("#msg").show();
			setTimeout(function(){$("#msg").hide(); }, 1000);
   		},
   		error: function (xhr, textStatus, errorThrown){
   			console.log(xhr.responseText);
   		}
   	});
   }
</script>