<?php 
  $slug = get_post_field('post_name');
?> 

 <section class="pb_section bg-light bg-image with-overlay" data-section="<?php echo $slug ?>" id="<?php echo $slug ?>" style="background-image: url(<?php echo get_bloginfo('template_directory');?>/assets/images/background.jpg)">
      <div class="container">
        <div class="row justify-content-md-center text-center mb-5">
          <div class="col-lg-7">
            <h2 class="mt-0 heading-border-top light font-weight-normal text-white">Attorneys</h2>
            <p class="text-white">Marshall Bird & Curtis will work with you to determine a successful strategy to make your migration to New Zealand a reality. We will provide an assessment of your immigration options. We will prepare and present a fully documented and professional case to the New Zealand Immigration Service. Marshall Bird & Curtis will monitor and manage the progress of your application and provide information on moving your family and possessions to New Zealand.</p>
          </div>
        </div>

        <div class="row">

        	<?php 

        // The Query
        	$args = array('post_type'=>'lawyer');
        	$the_query = new WP_Query( $args );

        // The Loop        
        	while ( $the_query->have_posts() ) {
        		$the_query->the_post();
        		get_template_part('content','single-lawyers');   
        	}

        	/* Restore original Post Data */
        	wp_reset_postdata();

        	?>      

        </div>

      </div>
    </section>