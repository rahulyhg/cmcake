<!--
<div class="row">
    <div class="col s12">
        <h4 class="pad-left-15 capitalize">Create company package</h4>
    </div>
    <form class='col s12' method='post' action='<?php echo site_url("site/createcompanypackagesubmit");?>' enctype='multipart/form-data'>
        <div class="row" style="display:none">
            <div class="input-field col s12 m8">
                <?php echo form_dropdown('company', $company, set_value('company')); ?>
                    <label>Company</label>
            </div>
        </div>
        <div class="row">
            <div class="input-field col m6 s12">
                <?php echo form_dropdown( 'package',$package,set_value( 'package')); ?>
                    <label>Package</label>
            </div>
        </div>
        <div class="row">
            <div class="col s12 m6">
                <button type="submit" class="btn btn-primary waves-effect waves-light blue darken-4">Save</button>
                <a href="<?php echo site_url(" site/viewcompanypackage "); ?>" class="btn btn-secondary waves-effect waves-light red">Cancel</a>
            </div>
        </div>
    </form>
</div>-->
<div class="row">
	<div class="col s12">
		<h4 class="pad-left-15 capitalize">Create company package</h4>
	</div>
	<form class="col s12" method="post" action="<?php echo site_url('site/createcompanypackagesubmit');?>" enctype="multipart/form-data">
	
	
		<div class="row" style="display:none">
			<div class="input-field col m6 s12">
				<?php echo form_dropdown( 'company',$company,set_value( 'company',$this->input->get("id"))); ?>
					<label>company</label>
			</div>
		</div>
	
	   <div class="row">
			<div class="input-field col m6 s12">
				<?php echo form_dropdown( 'package',$package,set_value( 'package')); ?>
					<label>package</label>
			</div>
		</div>

		<div class=" form-group">
			<div class="row">
				<div class="col m6 s12">
					<button type="submit" class="btn btn-primary waves-effect waves-light blue darken-4">Save</button>
					<a href="<?php echo site_url('site/viewcompanypackage?id=').$this->input->get("id"); ?>" class="waves-effect waves-light btn red">Cancel</a>
				</div>
			</div>
		</div>
	</form>
</div>