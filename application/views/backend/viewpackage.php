<div class="row">
<div class="col s12">
<div class="row">
<div class="col s12 drawchintantable">
<?php $this->chintantable->createsearch(" List of Packages");?>
<table class="highlight responsive-table">
<thead>
<tr>
<th data-field="id">Id</th>
<th data-field="name">Name</th>
<th data-field="statusname">Status</th>
<!--
<th data-field="startdate">Start Date</th>
<th data-field="enddate">End Date</th>
-->
</tr>
</thead>
<tbody>
</tbody>
</table>
</div>
</div>
<?php $this->chintantable->createpagination();?>
<div class="createbuttonplacement"><a class="btn-floating btn-large waves-effect waves-light blue darken-4 tooltipped" href="<?php echo site_url("site/createpackage"); ?>"data-position="top" data-delay="50" data-tooltip="Create"><i class="material-icons">add</i></a></div>
</div>
</div>
<script>
function drawtable(resultrow) {
return "<tr><td>" + resultrow.id + "</td><td>" + resultrow.name + "</td><td>" + resultrow.statusname + "</td><td><a class='btn btn-primary btn-xs waves-effect waves-light blue darken-4 z-depth-0 less-pad' href='<?php echo site_url('site/editpackage?id=');?>"+resultrow.id+"'><i class='fa fa-pencil propericon'></i></a></td></tr>";
}
generatejquery("<?php echo $base_url;?>");
</script>
