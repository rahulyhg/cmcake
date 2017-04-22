<div class="row">
    <div class="col s12">
        <h4 class="pad-left-15">Edit cakeimages</h4>
    </div>
</div>
<div class="row">
    <form class='col s12' method='post' action='<?php echo site_url("site/editcakeimagesubmit"); ?>' enctype='multipart/form-data'>
        <input type="hidden" id="normal-field" class="form-control" name="id" value="<?php echo set_value('id',$before->id);?>" style="display:none;">


<div class="row" style="display:none">
            <div class="input-field col s12 m8">
                <?php echo form_dropdown('cake', $cake, set_value('cake',$before->cake)); ?>
                 <label> cake</label>
            </div>
        </div>
        <div class="row">
			<div class="file-field input-field col m6 s12">
				<span class="img-center big">
								                    	<?php if($before->image == "") { } else {
									                    ?><img src="<?php echo base_url('uploads')."/".$before->image; ?>">
															<?php } ?>
															</span>
				<div class="btn blue darken-4">
					<span>Image</span>
					<input name="image" type="file" multiple>
				</div>
				<div class="file-path-wrapper">
					<input class="file-path validate" type="text" placeholder="Upload image" value="<?php echo set_value('image',$before->image);?>">
				</div>
			</div>
			<span style=" display: block;
		padding-top: 30px;"></span>
		</div>
      <div class="row">
        <div class="input-field col s6">
            <label for="order">Order</label>
            <input type="text" id="order" name="order" value='<?php echo set_value('order',$before->order);?>'>
        </div>
    </div>
    <div class="row">
        <div class="col s12 m6">
            <label>description</label>
            <textarea name="description" placeholder="Enter text ..."><?php echo set_value( 'description',$before->description);?></textarea>
        </div>
    </div>
        <div class="row saveclick createbuttonplacement">
				<div class="col m12 s12">
					<button type="submit" class="btn btn-primary waves-effect waves-light blue darken-4">Save</button>
					<a href="<?php echo site_url("site/viewcakeimage?id=").$this->input->get("cakeid");?>" class="waves-effect waves-light btn red">Cancel</a>
				</div>
			</div>
    </form>
</div>
