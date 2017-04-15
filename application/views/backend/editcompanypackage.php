<div class="row">
<div class="col s12">
<h4 class="pad-left-15 capitalize">Edit company package</h4>
</div>
<form class='col s12' method='post' action='<?php echo site_url("site/editcompanypackagesubmit");?>' enctype= 'multipart/form-data'>
<input type="hidden" id="normal-field" class="form-control" name="id" value="<?php echo set_value('id',$before->id);?>" style="display:none;">
 <div class="row" style="display:none">
            <div class="input-field col s12 m8">
                <?php echo form_dropdown('company', $company, set_value('company',$before->company)); ?>
                 <label>Company</label>
            </div>
        </div>
        <div class="row">
            <div class="input-field col s12 m8">
                <?php echo form_dropdown('package', $package, set_value('package',$before->package)); ?>
                 <label>Package</label>
            </div>
        </div>


<div class="row">
<div class="col s12 m6">
<button type="submit" class="btn btn-primary waves-effect waves-light blue darken-4">Save</button>
<a href="<?php echo site_url("site/viewcompanypackage?id=").$this->input->get('companyid'); ?>" class="btn btn-secondary waves-effect waves-light red">Cancel</a>
</div>
</div>
</form>
</div>
