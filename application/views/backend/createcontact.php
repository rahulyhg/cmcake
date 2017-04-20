<div class="row">
<div class="col s12">
<h4 class="pad-left-15 capitalize">Create contact</h4>
</div>
<form class='col s12' method='post' action='<?php echo site_url("site/createcontactsubmit");?>' enctype= 'multipart/form-data'>
<div class="row">
<div class="input-field col m6 s12">
<label for="Name">Name</label>
<input type="text" id="Name" name="name" value='<?php echo set_value('name');?>'>
</div>
</div>
<div class="row">
<div class="input-field col m6 s12">
<label for="Email">Email</label>
<input type="email" id="Email" name="email" value='<?php echo set_value('email');?>'>
</div>
</div>
<div class="row">
<div class="input-field col m6 s12">
<label for="Contact">Contact</label>
<input type="text" id="Contact" name="contact" value='<?php echo set_value('contact');?>'>
</div>
</div>
<div class="row">
<div class="input-field col m6 s12">
<textarea name="message" class="materialize-textarea" length="400"><?php echo set_value( 'message');?></textarea>
<label>Message</label>
</div>
</div>
<div class=" row">
<div class=" input-field col m6 s12">
<?php echo form_dropdown("status",$status,set_value('status'));?>
<label>Status</label>
</div>
</div>
<div class="row">
<div class="col s12 m6">
<button type="submit" class="btn btn-primary waves-effect waves-light blue darken-4">Save</button>
<a href="<?php echo site_url("site/viewcontact"); ?>" class="btn btn-secondary waves-effect waves-light red">Cancel</a>
</div>
</div>
</form>
</div>
