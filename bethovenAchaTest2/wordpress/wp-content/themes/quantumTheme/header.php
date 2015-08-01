<!doctype html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title><?php wp_title(' | ',true,'right'); ?></title>
		<link rel="stylesheet" href="<?php bloginfo('stylesheet_url');?>">
		<script  src="<?php bloginfo('template_directory'); ?>/bootstrap-3.3.5-dist/js/bootstrap.min.js"></script>
		 		
		<?php 
		//wp_enqueue_script("jquery");
		wp_head(); 
		?>		
	</head>	
	<body style="background-color:#333333;">	
		
		
		<?php require_once 'head.php'; ?>
		<?php require_once 'functions.php'; ?>
		<?php require_once 'footer.php'; ?>
		
		