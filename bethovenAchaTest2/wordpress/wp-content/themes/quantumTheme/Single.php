
<h2>Other posts in this category</h2>
<ul id="related">
	<?php
		$category = get_the_category(); 
		$my_query = new WP_Query("category_name=".$category[0]->name."&showposts=5&orderby=rand");

		while ($my_query->have_posts()) : 
			$my_query->the_post();
			echo '<li><a href="'. $post->permalink.'">"' . $post->post_title .'"</a></li>';
		endwhile;
	?>
</ul>
