	<div class="container" style="padding:30px;" >
		<div class="row" style="background-color:#333333;">
			 <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12" style="padding:0px;margin:0;font-family:Arial;color:white;font-style:bold;">	
				<ul class="nav nav-pills" >
					<!-- link from this page is copied from wordpress post link 
					<li class="active"><a href="http://localhost/bethovenAchaTest2/wordpress/2015/07/24/home">Home</a></li>
					-->
				<?php 
					//removes ul tag in the menu as well as the container
					// this code gives a series of list
					wp_nav_menu( array( 'items_wrap' => '%3$s','container'=> '' ) );
					
				 ?>
				
				</ul>
			</div>
		</div>

		<div class="row" style="background-color:gray">
			<div class="col-xs-12 col-sm-12 col-md-4 col-lg-4" >	
				<img class="img-responsive" src="<?php bloginfo('template_directory');?>/assets/images/quantumlogo.png" alt="Quantumlinx logo" style="padding:0px;margin:0;" />	
			</div>
			<div class="col-xs-12 col-sm-12 col-md-8 col-lg-8">	
				<?php echo do_shortcode('[slideshow_deploy id="45"]')?>;	
			</div>
		</div>

		<div class="row" style="background-color:gray">
			<div class="col-xs-12 col-sm-12 col-md-4 col-lg-4" >	
				<img class="img-responsive" src="<?php bloginfo('template_directory');?>/assets/images/houselake.png" alt="Quantumlinx logo" style="padding:0px;margin:0;" />	
			</div>
			<div class="col-xs-12 col-sm-12 col-md-8 col-lg-8" style="overflow:auto;height:300px;width:">	
				<?php
					if ( have_posts() ) :
						while ( have_posts() ) :
							the_post();
					 		the_title()."<br><br>"; 
					 			the_content();
					 		
						endwhile;
					endif;
				?>
			</div>
		</div>

		<div class="row" style="background-color:gray;">
			<div class="col-xs-12 col-sm-12 col-md-4 col-lg-4"  >
				<div class="panel">	
					<div class="panel-heading" style="background-color:#333333;color:white;padding:3px;"><h4>Categories</h4></div>
						<div class="panel-body">
							<?php echo do_shortcode('[wpb_menu_accordion]'); ?>
						</div>
				</div>
				
			</div>
			<div class="col-xs-12 col-sm-12 col-md-8 col-lg-8" >
				<div class="panel">	
					<div class="panel-heading" style="background-color:#333333;color:white;"><h4>Our Latest Projects</h4></div>	
						<div class="panel-body">
							<?php
								echo do_shortcode(' [wonderplugin_gallery id="1"]');
							?>
						</div>
				</div>
			</div>
		</div>

	