<?php 
  ob_start();


	//register resources
	
	function register_resources(){

		//register a menu
		register_nav_menu('main-menu','Main Menu');

		
		  $arg = array(
      		'labels' => array(
        		'name' => 'Sections',
        		'singular_name' => 'Section',
        		'menu_name' => 'Sections'
      		),
      		'public' => true,
      		'show_in_nav_menues' => true,
    	);
   		register_post_type( 'section', $arg);

      $arg = array(
          'labels' => array(
            'name' => 'Useful Links',
            'singular_name' => 'Useful Link',
            'menu_name' => 'Useful Links'
          ),
          'public' => true,
          'show_in_nav_menues' => true,
      );
      register_post_type( 'useful link', $arg);

      $arg = array(
          'labels' => array(
            'name' => 'Lawyers',
            'singular_name' => 'Lawyer',
            'menu_name' => 'Lawyers'
          ),
          'public' => true,
          'show_in_nav_menues' => true,
      );
      register_post_type( 'lawyer', $arg);

      $arg = array(
          'labels' => array(
            'name' => 'Testimonials',
            'singular_name' => 'Testimonial',
            'menu_name' => 'Testimonials'
          ),
          'public' => true,
          'show_in_nav_menues' => true,
      );
      register_post_type( 'testimonial', $arg);

      $arg = array(
          'labels' => array(
            'name' => 'Practicing Areas',
            'singular_name' => 'Practicing Area',
            'menu_name' => 'Practicing Areas'
          ),
          'public' => true,
          'show_in_nav_menues' => true,
      );
      register_post_type( 'practicing area', $arg);

      $arg = array(
        'label'=>'Type',
        'rewrite'=> array ('slug'=>'type'),
        'hierarchical'=>true,
        
      );
      register_taxonomy('type','section',$arg);
	}

	add_action('init','register_resources');

  

	//menu items hooks

	function add_menu_li_class($classes,$item,$args){
		$classes[] = 'nav-item';
		return $classes;
	}
	add_filter('nav_menu_css_class','add_menu_li_class',10,3);

	function add_menu_anchor_class($attrs,$item,$args){
		$attrs['class'] = 'nav-link';
		return $attrs;
	}
	add_filter('nav_menu_link_attributes','add_menu_anchor_class',10,3);

  // Customiser bits
  // Set up customiser control
  function mytheme_customize_register( $wp_customize ) {
  //All our sections, settings, and controls will be added here

    $wp_customize->add_section( 'section_colors' , array(
      'title'      => 'Theme Settings',
      'priority'   => 30,
    ) );

    $wp_customize->add_setting( 'heading_color_setting' , array(
      'default'   => '#fa8027',
      'transport' => 'refresh',
    ) );

    $wp_customize->add_control( new WP_Customize_Color_Control( $wp_customize, 'heading_color_control', array(
      'label'      => 'Heading Colors',
      'section'    => 'section_colors',
      'settings'   => 'heading_color_setting',
    ) ) );

    //----------The text input

    $wp_customize->add_setting( 'font_setting', array(
      'capability' => 'edit_theme_options',
      'default' => 'Lato',
      // 'sanitize_callback' => 'sanitize_text_field',
    ) );

    $wp_customize->add_control( 'font_setting', array(
      'type' => 'text',
      'section' => 'section_colors', // Add a default or your own section
      'label' => 'Theme Fonts',
      'description' => 'Please specify your font',
    ) );

    // ---------image upload
    $wp_customize->add_setting('logo_setting',array(
      'transport'    => 'refresh',
      'default'      => '',
    ));

    $wp_customize->add_control(
       new WP_Customize_Image_Control(
           $wp_customize,'logo_setting_control',
           array(
               'label'      => 'Upload a logo',
               'section'    => 'section_colors',
               'settings'   => 'logo_setting',
           )
       )
    );
  }
  add_action( 'customize_register', 'mytheme_customize_register' );

  function mytheme_customize_css()
  {
    ?>
         <style type="text/css">
            h1.heading-title { 
              color: <?php echo get_theme_mod('heading_color_setting', 'salmon'); ?> !important; 
            }

            body,p,div{
              font-family: <?php echo get_theme_mod('font_setting', 'Lato'); ?> !important;
            }
         </style>
    <?php
  }
add_action( 'wp_head', 'mytheme_customize_css');

?>


