<div class="row">
<div class="col s12">
<h4 class="pad-left-15">Create Image</h4>
</div>
<form class='col s12' method='post' action='<?php echo site_url("site/createcakeimagesubmit");?>' enctype= 'multipart/form-data'>

 <div class="row" style="display:none">
            <div class="input-field col s12 m8">
                <?php echo form_dropdown('cake', $cake, set_value('cake',$this->input->get("id"))); ?>
                 <label> cake</label>
            </div>
        </div>

 <div class="row">
      <div class="file-field input-field col s12 m6">
          <div class="btn blue darken-4">
            <span>Image</span>
            <input type="file" name="image" multiple>
          </div>
          <div class="file-path-wrapper">
              <input class="file-path validate" type="text" placeholder="Upload Image" value='<?php echo set_value('image');?>'>
          </div>
      </div>
</div>
 <div class="row">
    <div class="input-field col s6">
        <label for="order">Order</label>
        <input type="text" id="order" name="order" value='<?php echo set_value('order');?>'>
    </div>
</div>
<div class="row">
    <div class="input-field col s12">
        <textarea name="description" class="materialize-textarea" length="400"><?php echo set_value( 'description');?></textarea>
        <label>Description</label>
    </div>
</div>
      <div class="row saveclick createbuttonplacement">
				<div class="col m12 s12">
					<button type="submit" class="btn btn-primary waves-effect waves-light blue darken-4">Save</button>
					<a href="<?php echo site_url("site/viewcakeimage?id=").$this->input->get("id"); ?>" class="waves-effect waves-light btn red">Cancel</a>
				</div>
			</div>
</form>
</div>
