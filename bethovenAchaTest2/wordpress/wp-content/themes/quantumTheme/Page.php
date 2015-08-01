<!doctype html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title><?php wp_title(' | ',true,'right'); ?></title>
		<link rel="stylesheet" href="<?php bloginfo('stylesheet_url');?>">
		<script  src="<?php bloginfo('template_directory'); ?>/bootstrap/js/bootstrap.min.js"></script>
		 		
		<?php 
		//wp_enqueue_script("jquery");
		wp_head(); 
		?>		
	</head>	
	<body style="background-color:#333333;">	
<!--This page is used to display single page-->
	<div class="container" style="padding:30px;" >
		<div class="row-fluid" style="background-color:#333333;">
			 <div class="span12" style="padding:0px;margin:0;font-family:Arial;color:white;font-style:bold;">	
				<ul class="nav nav-pills">
					<!-- link from this page is copied from wordpress post link 
					<li class="active"><a href="http://localhost/bethovenAchaTest2/wordpress/2015/07/24/home">Home</a></li>
					-->
				<?php 
					//removes ul tag in the menu as well as the container
					// this code gives a series of list
					wp_nav_menu( array( 'items_wrap' => '%3$s','container'=> '', ) );
					
				 ?>
				
				</ul>
			</div>
		</div>

		

		<div class="row-fluid" style="background-color:gray;">
			
			<div  style="overflow:auto;height:300px;padding:20px;">	
				<?php
					if ( have_posts() ) :
						while ( have_posts() ) :
							the_post();
					 		the_title(); 
					 		the_content();
						endwhile;
					endif;
				?>
			</div>
		</div>

		
	</div>

	<div>
		<?php wp_footer(); ?>
	</div>
	
	</body>
</html>
