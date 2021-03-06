<!DOCTYPE html>
<html>
<title>Creation & More - Admin</title>

<head>
	<link rel="shortcut icon" href="<?php echo base_url('assets').'/';?>img/favicon.png" type="image/png"/>
    <!--Let browser know website is optimized for mobile-->
    <link rel="stylesheet" href="<?php echo base_url('assets').'/';?>bower_components/Materialize/dist/css/materialize.min.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link href="<?php echo base_url('assets').'/';?>css/style.css" rel="stylesheet">
    <link href="<?php echo base_url('assets').'/';?>css/font-awesome.min.css" rel="stylesheet">
    <link href="<?php echo base_url('assets').'/';?>css/jquery.fancybox.css" rel="stylesheet">
    <link rel="stylesheet" href="<?php echo base_url('assets').'/';?>css/linearfonts.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.3/css/select2.min.css" type="text/css" />

    <script src="<?php echo base_url('assets').'/';?>bower_components/jquery/dist/jquery.min.js"></script>
    <script src="<?php echo base_url('assets').'/';?>bower_components/Materialize/dist/js/materialize.min.js"></script>
    <script src="<?php echo base_url('assets').'/';?>js/chintantable.js"></script>
    <script src="<?php echo base_url('assets').'/';?>js/jquery.fancybox.pack.js"></script>
    <script src="<?php echo base_url('assets').'/';?>tinymce/tinymce.min.js"></script>
    <script src="<?php echo base_url('assets').'/';?>js/formInit.js"></script>
    	<script src="<?php echo base_url('assets').'/';?>js/lodash.js"></script>
<!--
    	    <script src="<?php echo base_url('assets/js/highchartsbyavi.js'); ?>"></script>
    <script src="<?php echo base_url('assets/js/highcharts-3dbyavi.js'); ?>"></script>
-->
    	<script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/modules/exporting.js"></script>
    <script>
$(document).ready(function(){
	 $("#select1").select2({
		
		allowClear: true,
		//minimumInputLength: 3,
		
	 });
	 $("#select2").select2({
		
		allowClear: true,
		//minimumInputLength: 3,
		
	 });
	 $("#select3").select2({
		
		allowClear: true,
		//minimumInputLength: 3,
		
	 });
	  $("#select4").select2({
		
		allowClear: true,
		//minimumInputLength: 3,
		
	 });
	 $("#select5").select2({
		
		allowClear: true,
		//minimumInputLength: 3,
		
	 });
});
</script>

    <link href='https://fonts.googleapis.com/css?family=Lato:400,100,300,700' rel='stylesheet' type='text/css'>



    <!--Let browser know website is optimized for mobile-->
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
   
</head>

<body>

	<header>
			<nav class="blue darken-4">
			<?php   $menus = $this->menu_model->viewmenus(); 	  ?>
			<ul id="slide-out" class="side-nav fixed">
				<li class="sub-menu logo">
						<a id="logo-container" href="<?php echo site_url(); ?>" class="align-center blue-text text-darken-4" style="font-size: 28px;">
                            Creation & More <span style="font-weight: 400;"></span>
						</a>
                    </li>
                    <?php
				foreach($menus as $row)
				{
					$pieces = explode("/", $row->url);
					$page2="";
					if(empty($pieces) || !isset($pieces[1]))
					{
						$page2="";
					}
					else
						$page2=$pieces[1];
					$submenus = $this->menu_model->getsubmenus($row->id);
					?>
                        <li class="<?php if($page==$page2 || $page == strtolower($row->name)) { echo 'active'; } //echo $page2;
					if(count($submenus > 0))
					{
						$pages =  $this->menu_model->getpages($row->id);
						//echo $page2;
						//print_r($pages);
						echo ' sub-menu';
						if(in_array($page, $pages,TRUE))
							echo ' active';
					}
					?> ">
                            <a class="waves-effect waves-default" href="<?php
						if($row->url == " ")
							echo "javascript:; ";
						else if($row->linktype == 1) echo site_url($row->url);
						else if($row->linktype == 2) echo base_url($row->url);
						else if($row->linktype == 3) echo ($row->url);
						?>" <?php if($row->linktype == 3) echo ""; ?>>
							<?php
							if($row->icon != "")
							{  ?>
								<i class="<?php echo $row->icon; ?>"></i>
					<?php	}
							?>
							<span><?php echo $row->name;  ?></span>
							<span class="arrow"></span>
						</a>
                            <?php
						if(count($submenus) > 0)
						{  ?>
                                <ul class="sub">
                                    <?php
								foreach($submenus as $row2)
								{
									$pieces2 = explode("/", $row2->url);

									if(empty($pieces2) || !isset($pieces2[1]))
									{
										$page3="";
									}
									else
										$page3=$pieces2[1];
								?>
                                    <li class="<?php if($page==$page3 || $page == strtolower($row2->name))  ?> nopadding">
                                            <a class="waves-effect waves-default" href="<?php
											if($row2->url == " ")
												echo "javascript:; ";
											else if($row2->linktype == 1) echo site_url($row2->url);
											else if($row2->linktype == 2) echo base_url($row2->url);
											else if($row2->linktype == 3) echo ($row2->url);
										?>">
                                                <?php
											if($row2->icon != "")
											{  ?>
                                                    <i class="<?php echo $row2->icon; ?>" <?php if($row2->linktype == 3) echo ""; ?>></i>
                                                    <?php	}
											?>
                                                        <?php echo $row2->name;  ?>
                                            </a>
                                        </li>
                                        <?php	}
								?>
                                </ul>
                                <?php	}
						?>
                        </li>
                        <?php }
				?>
                </ul>

                <div class="row">
                    <div class="col s6">
                        <a href="#" data-activates="slide-out" class="button-collapse"><i class="mdi-navigation-menu"></i></a>
                    </div>
                    <div class="col s6 offset-l6 m6 l6 search">
                        <a href="<?php echo site_url('login/logout'); ?>" class="waves-effect waves-light btn red" style="float:right; margin: 7px 0 0;"><i class="material-icons left">power_settings_new</i> Logout</a>
                    </div>
                </div>
        </nav>


    </header>
    <main>
        


