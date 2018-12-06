<?php 
	/* Template Name: One Page */ 
?>
<?php get_header(); ?>


	<?php 

	$sectionsIds = get_field('sections',false,false);

  	// The Query
  	$args = array(
  		'post_type' =>'section',
  		'post__in'	=> $sectionsIds,
  		'orderby'	=> 'post__in'
  	);
	$the_query = new WP_Query( $args );

	// The Loop
	while ( $the_query->have_posts() ) {
		$the_query->the_post();

		$slug = 'default';
		$terms = get_the_terms(get_the_ID(),'type');

		if($terms != false){
			$term = $terms[0];
			$type = $term->slug;

			if(locate_template(array('sections/content-'.$type.'.php'))){
				$slug = $type;
			}

		}

		$id = get_post_field('post_name');
		if(locate_template(array('sections/content-'.$id.'.php'))){
			$slug = $id;
		}


		get_template_part('sections/content',$slug);

		// $slug = get_post_field('post_name');

		// if(locate_template(array('sections/content-'.$slug.'.php'))){
		// 	get_template_part('sections/content',$slug);
		// }else{
		// 	get_template_part('sections/content','default');
		// }
		
	}

	/* Restore original Post Data */
	wp_reset_postdata();
?>
<?php get_footer(); ?>