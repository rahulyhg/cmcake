<div class="row">
<div class="col s12">
<h4 class="pad-left-15 capitalize">Edit company</h4>
</div>
</div>
<div class="row">
<form class='col s12' method='post' action='<?php echo site_url("site/editcompanysubmit");?>' enctype= 'multipart/form-data'>
<input type="hidden" id="normal-field" class="form-control" name="id" value="<?php echo set_value('id',$before->id);?>" style="display:none;">
<div class="row">
<div class="input-field col s6">
<label for="Name">Name</label>
<input type="text" id="Name" name="name" value='<?php echo set_value('name',$before->name);?>'>
</div>
</div>
<div class="row">
<div class="input-field col s6">
<label for="Email">Email</label>
<input type="email" id="Email" name="email" value='<?php echo set_value('email',$before->email);?>'>
</div>
</div>
 <div class="row">
			<div class="input-field col m6 s12">
				<?php echo form_dropdown( 'sector',$sector,set_value( 'sector',$before->sector)); ?>
					<label>Sector</label>
			</div>
		</div>
    <div class="row">
<div class="input-field col s6">
<label for="startdate">Start Date</label>
<input type="date" id="startdate" class="datepicker" name="startdate" value='<?php echo set_value('startdate',$before->startdate);?>'>
</div>
</div>
<div class="row">
<div class="input-field col s6">
<label for="enddate">End Date</label>
<input type="date" id="enddate" class="datepicker" name="enddate" value='<?php echo set_value('enddate',$before->enddate);?>'>
</div>
</div>
<div class="row">
<div class="col s6">
<button type="submit" class="btn btn-primary waves-effect waves-light  blue darken-4">Save</button>
<a href='<?php echo site_url("site/viewcompany"); ?>' class='btn btn-secondary waves-effect waves-light red'>Cancel</a>
</div>
</div>
</form>
</div>
<div class="row">
<div class="col s12">
<h4 class="pad-left-15 capitalize">Packages</h4>
</div>
<div class="col s12">
<div class="row">
<div class="col s12 drawchintantable">
<table class="highlight responsive-table">
<thead>
<tr>
<th data-field="id">Id</th>
<th data-field="Name">Package</th>
</tr>
</thead>
<tbody>
</tbody>
</table>
</div>
</div>
</div>
</div>
<script>
function drawtable(resultrow) {
return "<tr><td>" + resultrow.id + "</td><td>" + resultrow.name + "</td><td><a class='btn btn-primary btn-xs waves-effect waves-light blue darken-4 z-depth-0 less-pad' href='<?php echo site_url('site/editcompanypackage?id=');?>"+resultrow.id+"&companyid="+resultrow.company+"'><i class='fa fa-pencil propericon'></i></a><a class='btn btn-danger btn-xs waves-effect waves-light red pad10 z-depth-0 less-pad' onclick=\"return confirm('Are you sure you want to delete?');\" href='<?php echo site_url('site/deletecompanypackage?id='); ?>"+resultrow.id+"&companyid="+resultrow.company+"'><i class='material-icons propericon'>delete</i></a></td></tr>";
}
generatejquery("<?php echo $base_url;?>");
</script>

