<?php 
  $slug = get_post_field('post_name');
?> 

 <section class="pb_section pb_testimonial_v1" data-section="<?php echo $slug ?>" id="<?php echo $slug ?>">
      <div class="container">
        <div class="row justify-content-md-center text-center mb-5">
          <div class="col-lg-7">
            <h2 class="mt-0 heading-border-top font-weight-normal">Happy Customers</h2>
            <p>What Our Customers Say</p>
          </div>
        </div>
        <div class="row justify-content-md-center">
          <div class="col-md-10 col-sm-12 mb-5">
            <div class="single-item-no-arrow pb_slide_v1">
               <?php 

              // The Query
              $args = array('post_type'=>'testimonial');
              $the_query = new WP_Query( $args );

              // The Loop        
              while ( $the_query->have_posts() ) {
                $the_query->the_post();
                get_template_part('content','single-testimonial');   
              }

              /* Restore original Post Data */
              wp_reset_postdata();

              ?>      
              
            </div>

          </div>

        </div>
      </div>
    </section>