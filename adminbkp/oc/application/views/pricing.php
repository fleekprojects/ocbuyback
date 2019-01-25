<div class="">
   <div class="page-title">
      <div class="title_left">
         <h3>Manage <?= $category[0]['title']." ".$title;?></h3>
      </div>
   </div>
   <hr noshade>
   <div class="clearfix"></div>
   <div class="row">
      <div class="col-md-12 col-sm-12 col-xs-12">
         <div class="x_panel">
            <div class="x_content">
               <div id="msg"><?php  if($this->session->flashdata('message')){
                  echo $this->session->flashdata('message');
                  }  
                   ?>
               </div>
               <!-- start accordion -->
               <div class="accordion" id="accordion" role="tablist" aria-multiselectable="true">
                  <div class="panel">
                     <a class="panel-heading" role="tab" id="headingOne" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                        <h2><i class="fa fa-align-left"></i> <?= $category[0]['title']." ".$title;?> | <small>Add New</small></h2>
                     </a>
                     <div id="collapseOne" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingOne">
                        <div class="panel-body">
                           <form class="form-horizontal" method="post" action="<?= base_url();?>Pricing/AddRecord" id="Addform" >
                              <div id="single-row"></div>
                              <div class="col-md-4">
                                 <input type="button" onclick="addPricingRow()" value="Add More" class="btn btn-info">
                                 <input type="submit" id="addSubmit" value="Submit" class="btn btn-success" >
                              </div>
                           </form>
                        </div>
                     </div>
                  </div>
               </div>
               <!-- end of accordion -->
            </div>
         </div>
      </div>
   </div>
   <div class="row">
      <div class="col-md-12 col-sm-12 col-xs-12">
         <div class="x_panel">
            <div class="x_title">
               <h2><?= $category[0]['title']." ".$title;?> |<small>View</small></h2>
               <?php  if(count($records) > 0 ) { ?>
               <button type="button" class="btn btn-danger margin pull-right" onClick="doDelete()" style="margin-right:auto" >Delete</button>
               <?php } ?>
               <div class="clearfix"></div>
            </div>
            <div class="x_content">
				<div id="msge"></div>
               <form method="post" id="tblform" action="<?= base_url();?>Pricing/DeleteRecord">
                  <table id="datatable-buttons" class="table table-striped table-bordered">
                     <thead>
                        <tr>
                           <th align="center"><input type="checkbox" name="chkAll" class="checkUncheckAll" ></th>
                           <th>Model</th>
                           <th>Provider</th>
                           <th>Storage</th>
                           <th>Condition</th>
                           <th>Price</th>
                           <th>Status</th>
                           <th>Last Updated</th>
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
                           <td id="mod-<?= $rec['id']; ?>"><?= $rec['model_title']; ?></td>
                           <td id="pro-<?= $rec['id']; ?>"><?= $rec['provider_title']; ?></td>
                           <td id="sto-<?= $rec['id']; ?>"><?= $rec['storage_title']; ?></td>
                           <td id="con-<?= $rec['id']; ?>"><?= $rec['condition_title']; ?></td>
                           <td id="pri-<?= $rec['id']; ?>"><?= $rec['price']; ?></td>
                           <td>
                              <div class="form-group">
                                 <label>
                                 <input type="checkbox" class="js-switch"  <?= ($rec['status']==1) ? 'checked' : '' ?> onclick="togglestatus(<?= $rec['id'] ?>,'Pricing')" />
                                 </label>
                              </div>
                           </td>
                           <td>
                              <span style="font-size:0"><?= $rec['updated_at']; ?></span>
                              <?= ($rec['updated_at'] == "" ? date('jS M Y ', strtotime($rec['created_at'])) : date('jS M Y', strtotime($rec['updated_at']))); ?>
                           </td>
                           <td>
                              <a class="btn btn-warning btn-edit btn-sm" href="javascript:;" onclick="get_tbl_form(<?= $rec['id']; ?>)" id="editpri-<?= $rec['id']; ?>"><i class="fa fa-edit"></i></a>
                              <a class="btn btn-success btn-edit btn-sm" href="javascript:;" onclick="save_tbl_form(<?= $rec['id']; ?>)" id="savepri-<?= $rec['id']; ?>" style="display:none"><i class="fa fa-edit"></i></a>
                              <a class="btn btn-danger btn-sm" onclick="doDelete(<?= $rec['id']; ?>)"><i class="fa fa-trash"></i></a>
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
   </div>
</div>
<script>        
   $(document).ready(function(){
     addPricingRow();
   });
   function addPricingRow(){
      $.ajax({
   	  type: "POST",
	  data: {"cat_id":<?= $category[0]['id']; ?>},
   	  url: 'pricing/addPricingRow',
   	  success: function (data) {
   		$('#single-row').append(data);
   	  },
   	  error: function (xhr, textStatus, errorThrown){
   		alert(xhr.responseText);
   	  }
   	});
   }
   function get_tbl_form(id){
	  
      $.ajax({
   	  type: "POST",
	  data: {"cat_id":<?= $category[0]['id']; ?>,"id":id},
   	  url: 'pricing/editPricingRow',
   	  dataType: 'JSON',
   	  success: function (data) {
		  $("#editpri-"+id).hide();
		  $("#savepri-"+id).show();
		  $("#mod-"+id).html(data.model);
		  $("#pro-"+id).html(data.provider);
		  $("#sto-"+id).html(data.storage);
		  $("#con-"+id).html(data.condition);
		  $("#pri-"+id).html(data.price);
   	  },
   	  error: function (xhr, textStatus, errorThrown){
   		alert(xhr.responseText);
   	  }
   	});
   }
   function save_tbl_form(id){
	  var model=$("#model-"+id).val();
	  var provider=$("#provider-"+id).val();
	  var storage=$("#storage-"+id).val();
	  var condition=$("#condition-"+id).val();
	  var price=$("#price-"+id).val();
      $.ajax({
   	  type: "POST",
	  data: {"category_id":<?= $category[0]['id']; ?>,"model_id":model,"provider_id":provider,"storage_id":storage,"condition_id":condition,"price":price,"id":id},
   	  url: 'pricing/EditRecord',
   	  dataType: 'JSON',
   	  success: function (result) {
		  if(result.success==1){	
			$("#msge").html('<div class="alert alert-success alert-dismissable"><i class="fa fa-check"></i><button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button><b> Record Updated!</b></div>');
			$("#msge").show();
			$("#editpri-"+id).show();
			$("#savepri-"+id).hide();
			$("#mod-"+id).text(result.data[0].model);
			$("#pro-"+id).text(result.data[0].provider);
			$("#sto-"+id).text(result.data[0].storage);
			$("#con-"+id).text(result.data[0].condition);
			$("#pri-"+id).text(result.data[0].price);
			
			setTimeout(function(){$("#msge").hide(); }, 1000);
		  }
		  else if(result==2){	
			$("#msge").html('<div class="alert alert-warning alert-dismissable"><i class="fa fa-warning"></i><button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button><b> Record Already Exists!</b></div>');
			$("#msge").show();
			setTimeout(function(){$("#msge").hide(); }, 1000);
		  }
		  else{
			$("#msge").html('<div class="alert alert-danger alert-dismissable"><i class="fa fa-ban"></i><button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button><b> Error. Please Try Again!</b></div>');
			$("#msge").show();
			setTimeout(function(){$("#msge").hide(); }, 1000);

		  }
   	  },
   	  error: function (xhr, textStatus, errorThrown){
   		alert(xhr.responseText);
   	  }
   	});
   }
</script>