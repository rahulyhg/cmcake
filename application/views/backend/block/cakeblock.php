<section class="panel">
    <div class="panel-body">
        <ul id="nav-mobile">
            
            <li><a class="waves-effect waves-light <?php if ($this->uri->segment(2) == 'viewcake') {
    echo 'active';
} ?>" href="<?php echo site_url('site/viewcake'); ?>">All Cakes</a></li>
            
            <li><a class="waves-effect waves-light <?php if ($this->uri->segment(2) == 'editcake') {
    echo 'active';
} ?>" href="<?php echo site_url('site/editcake?id=').$before1; ?>">Cake Details</a></li>
            
            <li><a class="waves-effect waves-light <?php if ($this->uri->segment(2) == 'viewcakeimage' || $this->uri->segment(2) == 'editcakeimage'  || $this->uri->segment(2) == 'createcakeimage') {
    echo 'active';
} ?>" href="<?php echo site_url('site/viewcakeimage?id=').$before2; ?>"> Images</a></li>
            
        </ul>
    </div>
</section>