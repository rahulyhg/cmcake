<div class="row">
    <div class="col s12">
        <div class="row">
            <div class="col s12 drawchintantable">
                <?php $this->chintantable->createsearch("Clients");?>
                    <table class="highlight responsive-table">
                        <thead>
                            <tr>
                                <th data-field="id">Id</th>
                                <th data-field="name">Contact Name</th>
                                <th data-field="email">Contact Email</th>
                                <!--<th data-field="package">Package</th>-->
                            </tr>
                        </thead>
                        <tbody>
                        </tbody>
                    </table>
            </div>
        </div>
        <?php $this->chintantable->createpagination();?>
            <div class="createbuttonplacement"><a class="btn-floating btn-large waves-effect waves-light blue darken-4 tooltipped" href="<?php echo site_url("site/createcompany"); ?>"data-position="top" data-delay="50" data-tooltip="Create"><i class="material-icons">add</i></a></div>
    </div>
</div>

<script>
    var new_base_url = "<?php echo site_url(); ?>";

    function sendEmail(id) {
        alert2('Sure you want to resend email?', function () {
            $.getJSON(new_base_url + '/site/resendEmail', {
                id: id
            }, function (data) {
                console.log("abc");
                alert2('Mail sent successfully!');
            });
        }, function () {
            console.log("Cancel");
        });
    }

    function blockCompany(id) {
        alert2('Are you sure want to block?', function () {

            $.get(new_base_url + '/site/blockCompany', {
                id: id
            }, function (data) {
                console.log("abc");
                Materialize.toast('Successfully Blocked!',2000);
                $(".chintantablesearchgo").trigger("click");
            });
        }, function () {
            console.log("Cancel");
        });

    }

    function unBlockCompany(id) {
        alert2('Are you sure want to Un block?', function () {
            $.get(new_base_url + '/site/unBlockCompany', {
                id: id
            }, function (data) {
                console.log("abc");
                Materialize.toast('Successfully Unblocked!',2000);
                $(".chintantablesearchgo").trigger("click");
            });
        }, function () {
            console.log("Cancel");
        });
    }
</script>
<script>
    function drawtable(resultrow) {
        var blockfuncname = "blockCompany";
        var blockTitle = "Block Company";
        var blockIcon = "not_interested";
        var blockIconColor = "waves-light red";
        if (resultrow.isblock == 1) {
            blockfuncname = "unBlockCompany";
            blockTitle = "Unblock Company";
            blockIcon = "verified_user";
            blockIconColor = "waves-light green";
        }
        return "<tr><td>" + resultrow.id + "</td><td>" + resultrow.name + "</td><td>" + resultrow.email + "</td><td><a class='btn btn-primary btn-xs waves-effect waves-light blue darken-4 z-depth-0 less-pad tooltipped' href='<?php echo site_url('site/editcompany?id=');?>" + resultrow.id + "' data-position='top' data-delay='50' data-tooltip='Edit Company'><i class='fa fa-pencil propericon'></i></a><a class='btn btn-danger btn-xs waves-effect waves-light black pad10 z-depth-0 less-pad tooltipped' href='<?php echo base_url();?>" + resultrow.id + "/index.php/login/validatemasterto'  target='_blank' data-position='top' data-delay='50' data-tooltip='Change Password'><i class='material-icons propericon'>lock_open</i></a><a class='btn btn-danger btn-xs waves-effect "+blockIconColor+" pad10 z-depth-0 less-pad tooltipped' onclick=\"" + blockfuncname + "(\'" + resultrow.id + "\')\" data-position='top' data-delay='50' data-tooltip='" + blockTitle + "'><i class='material-icons propericon'>"+blockIcon+"</i></a><a class='btn btn-danger btn-xs waves-effect waves-light pink pad10 z-depth-0 less-pad tooltipped' onclick=\"sendEmail(\'" + resultrow.id + "\')\" data-position='top' data-delay='50' data-tooltip='Resend Email'><i class='material-icons propericon'>replay</i></a><a class='btn btn-danger btn-xs waves-effect waves-light purple pad10 z-depth-0 less-pad tooltipped' href='<?php echo site_url('site/viewInterlinkage?id='); ?>" + resultrow.id + "' target='_blank' data-position='top' data-delay='50' data-tooltip='Interlinkage'><i class='material-icons propericon'>repeat</i></a><a class='btn btn-danger btn-xs waves-effect waves-light green pad10 z-depth-0 less-pad tooltipped'  href='<?php echo base_url();?>" + resultrow.id + "/index.php/login/validatemaster' target='_blank' data-position='top' data-delay='50' data-tooltip='Provide Access'><i class='material-icons propericon'>vpn_key</i></a><a class='btn btn-danger btn-xs waves-effect waves-light orange pad10 z-depth-0 less-pad tooltipped'  href='<?php echo base_url();?>" + resultrow.id + "/index.php/login/exportsuggestioncsv?companyname="+resultrow.name +"' target='_blank' data-position='top' data-delay='50' data-tooltip='Download Suggestion'><i class='material-icons propericon'>import_export</i></a><a class='btn btn-danger btn-xs waves-effect waves-light grey pad10 z-depth-0 less-pad tooltipped'  href='<?php echo base_url();?>" + resultrow.id + "/index.php/login/viewchangeexpected' target='_blank' data-position='top' data-delay='50' data-tooltip='Change Weightages'><i class='material-icons propericon'>swap_calls</i></a></td></tr>";
    }
    generatejquery("<?php echo $base_url;?>");
</script>
