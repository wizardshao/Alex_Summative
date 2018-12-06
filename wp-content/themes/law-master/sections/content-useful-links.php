<?php 
  $slug = get_post_field('post_name');
?>

<section class="pb_section bg-light" data-section="<?php echo $slug ?>" id="<?php echo $slug ?>">
  <div class="container">    
        <div class="row justify-content-md-center text-center mb-5">
          <div class="col-lg-7">
            <h2 class="mt-0 heading-border-topfont-weight-normal"><?php the_title() ?></h2>
          </div>          
        </div>

    <div class="row">
      
        <?php 

        // The Query
        $args = array('post_type'=>'useful link');
        $the_query = new WP_Query( $args );

        // The Loop        
        while ( $the_query->have_posts() ) {
          $the_query->the_post();
          get_template_part('content','single-useful-link');   
        }

        /* Restore original Post Data */
        wp_reset_postdata();

        ?>      

        <div class="w-100"></div>




      </div>
    </div>
  </section>