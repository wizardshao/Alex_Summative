<?php 
  $slug = get_post_field('post_name');
?>

<section class="pb_section pb_section_v1" data-section="<?php echo $slug ?>" id="<?php echo $slug ?>">
      <div class="container">
        <div class="row">
          <div class="col-lg-5 pr-md-5 pr-sm-0">
            <h2 class="mt-0 heading-border-top mb-3 font-weight-normal">Who We Are</h2>
            <p>We are a law firm that provides comprehensive legal advice and assistance. Clients often have a variety of different legal problems and we assist each client to find the appropriate solution.</p>
            <p>The Law Firm specialises in <span class="about">Business, Student</span> and <span class="about">Skilled</span> Migrant immigration law. We ensure that every business plan meets NZIS residence criteria. To date, we have achieved a <span class="about">100% success</span> with business client applications.</p>
            <p>In addition, Marshall Bird & Curtis specialises in assisting migrants who qualify for residence under the <span class="about">Priority Skills and Shortages</span> criteria. We work to assist migrants who seek to live in New Zealand because of a genuine relationship with a NZ resident. We also help bring family members from overseas to New Zealand.</p>
          </div>
          <div class="col-lg-7">
            <div class="images">
              <img class="img1 img-fluid" src="<?php echo get_bloginfo('template_directory');?>/assets/images/flag.jpg" alt="free Template">
              <img class="img2" src="<?php echo get_bloginfo('template_directory');?>/assets/images/visa.jpg" alt="free Template">
            </div>
          </div>
          
        </div>
      </div>  
    </section>