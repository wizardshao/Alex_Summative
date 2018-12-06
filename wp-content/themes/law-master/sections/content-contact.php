<?php 
  $slug = get_post_field('post_name');
?>

<section class="pb_section" data-section="<?php echo $slug ?>" id="<?php echo $slug ?>">
      <div class="container">

        <div class="row justify-content-md-center text-center mb-5">
          <div class="col-lg-7">
            <h2 class="mt-0 heading-border-top font-weight-normal">Get In Touch</h2>
            <p>For more details, please contact us.</p>
          </div>
        </div>

        
        <div class="row">
          <div class="col-md-8 pr-md-5 pr-sm-0 mb-4">
            <form action="#">
              <div class="row">
                <div class="col-md">
                  <div class="form-group">
                    <label for="name">Name</label>
                    <input type="text" class="form-control p-3 rounded-0" id="name">
                  </div>
                </div>
                <div class="col-md">
                  <div class="form-group">
                    <label for="email">Email</label>
                    <input type="text" class="form-control p-3 rounded-0" id="email">
                  </div>
                </div>
              </div>
              
              <div class="form-group">
                <label for="message">Message</label>
                <textarea cols="30" rows="10" class="form-control p-3 rounded-0" id="message"></textarea>
              </div>
              <div class="form-group">
                <input type="submit" class="btn pb_outline-dark pb_font-13 pb_letter-spacing-2 p-3 rounded-0" value="Send Message">
              </div>
            </form>
          </div>
          <div class="col-md-4">
            <ul class="pb_contact_details_v1">
              <li>
                <span class="text-uppercase">Email</span>
                trevor@legaleagle.co.nz <br>
                carole@legaleagle.co.nz <br>
                ioana@legaleagle.co.nz <br>
              </li>
              <li>
                <span class="text-uppercase">Phone</span>
                +09 377 5543
              </li>
              <li>
                <span class="text-uppercase">Fax</span>
                +30 976 1382 9922
              </li>
              <li>
                <span class="text-uppercase">Address</span>
                Auckland, New Zealand <br>
                16 High Street  <br>
                Campbell's Building, Level 4
              </li>
            </ul>
          </div>
        </div>
        
      </div>
    </section>