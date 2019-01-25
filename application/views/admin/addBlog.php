<style>
   .note-popover .popover-content, .panel-heading.note-toolbar {
   padding: 0 0 10px 5px !important;
   margin: 0 !important;
   }
   .note-editor .note-editing-area {
   position: relative;
   margin-top: 5px;
   }
</style>
<div class="">
   <div class="page-title">
      <div class="title_left">
         <h3>Manage <?= $title; ?></h3>
      </div>
   </div>
   <hr noshade>
   <div class="row">
      <div class="col-md-12 col-sm-12 col-xs-12">
		<div id="msg"></div>
         <div class="x_panel">
            <div class="x_title">
               <h2><?= $title; ?> |<small>Add New</small></h2>
               <div class="clearfix"></div>
            </div>
            <div class="x_content">
               <div class="col-md-10 col-md-offset-1">
                  <form class="form-horizontal" method="post" id="Addform" action="<?= base_url();?>admin/Blogs/AddRecord">
                     <div class="col-md-12">
                        <label class="control-label" for="example-text-input">Blog Title</label>
                        <input type="text" name="title" value="" placeholder="Enter Blog Title" class="form-control">
                     </div>
                     <div class="col-md-12">
                        <label class="control-label" for="example-text-input">Featured Image</label>
                        <input type="file" name="image" class="form-control">
                     </div>
                     <div class="col-md-12">
                        <label class="control-label" for="example-text-input">Short Description</label>
                        <textarea name="description" placeholder="Enter Short Description" class="form-control" rows="3"></textarea>
                     </div>
                     <div class="col-md-12">
                        <label class="control-label" for="example-text-input">Blog Content</label>
                        <textarea name="content" class="summernote"></textarea>
                     </div>
                     <div class="col-md-12">
                        <input type="submit" id="addSubmit" value="Submit" class="btn btn-default" style="width:100%" >
                     </div>
                  </form>
               </div>
            </div>
         </div>
      </div>
   </div>
</div>
<script type="text/javascript">        
   $(document).ready(function(){
   	$("#Addform").validate({
   		rules: {
   		  title: "required",
   		  image: "required",
   		  description: "required",
   		  content: "required"
   		}
   	});
   	$('.summernote').summernote({
   		placeholder: 'Enter Blog Content here...',
   		tabsize: 2,
   		height: 300
   	});
   });
   $(".btn-editc").click(function(){
   	var id=$(this).data("id");
   	$.ajax({
   		url:"<?= base_url();?>admin/condition/get_record",
   		type:'POST',
   		dataType:'JSON',
   		data:{'id':id},
   		success:function(result){
   			$('#id').val(result.id),
   			$('#title').val(result.title),
   			$("#summernote").summernote("code", result.description);
   		},
   		error: function (xhr, textStatus, errorThrown){
   			alert(xhr.responseText);
   		}
   	});
   });
</script>