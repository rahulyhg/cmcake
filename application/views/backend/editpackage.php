<div class="row">
<div class="col s12">
<h4 class="pad-left-15 capitalize">Create package</h4>
</div>
<form class='col s12' method='post' action='<?php echo site_url("site/editpackagesubmit");?>' enctype= 'multipart/form-data'>
<input type="hidden" id="normal-field" class="form-control" name="id" value="<?php echo set_value('id',$before->id);?>" style="display:none;">
<div class="row">
<div class="input-field col s6">
<label for="Name">Name</label>
<input type="text" id="Name" name="name" value='<?php echo set_value('name',$before->name);?>'>
</div>
</div>
 <div class="row">
			<div class="input-field col m6 s12">
				<?php echo form_dropdown( 'status',$status,set_value( 'status',$before->status)); ?>
					<label>Status</label>
			</div>
		</div>
<div class="row" style="display:none">
<div class="input-field col s6">
<label for="startdate">Start Date</label>
<input type="date" id="startdate" class="datepicker" name="startdate" value='<?php echo set_value('startdate',$before->startdate);?>'>
</div>
</div>
<div class="row" style="display:none">
<div class="input-field col s6">
<label for="enddate">End Date</label>
<input type="date" id="enddate" class="datepicker" name="enddate" value='<?php echo set_value('enddate',$before->enddate);?>'>
</div>
</div>
<div class="row">
<div class="col s12 m6">
<button type="submit" class="btn btn-primary waves-effect waves-light blue darken-4">Save</button>
<a href="<?php echo site_url("site/viewpackage"); ?>" class="btn btn-secondary waves-effect waves-light red">Cancel</a>
</div>
</div>
</form>
</div>
