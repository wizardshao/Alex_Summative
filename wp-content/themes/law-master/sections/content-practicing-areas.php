<?php 
  $slug = get_post_field('post_name');
?>

 <section class="pb_section pb_bg-half" data-section="<?php echo $slug ?>" id="<?php echo $slug ?>">
      <div class="container">
        <div class="row justify-content-md-center text-center mb-5">
          <div class="col-lg-7">
            <h2 class="mt-0 heading-border-top font-weight-normal"><?php the_title(); ?></h2>
            <p>The law firm specialises in every aspect of immigration law including complex issues relating to the grant of residence and the full range of visa categories, including:</p>
          </div>
        </div>

        <div class="row">
          <div class="col-md-12">

            <div class="single-item pb_slide_v2">

              <?php 

              // The Query
              $args = array('post_type'=>'practicing area');
              $the_query = new WP_Query( $args );

              // The Loop        
              while ( $the_query->have_posts() ) {
                $the_query->the_post();
                get_template_part('content','single-practicing-areas');   
              }

              /* Restore original Post Data */
              wp_reset_postdata();

              ?>      

            </div>

          </div>
        </div>
      </div>  
    </section>