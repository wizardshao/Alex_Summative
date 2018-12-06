<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <title>Immigration</title>

  <link href="https://fonts.googleapis.com/css?family=Crimson+Text:400,400i,600|Montserrat:200,300,400" rel="stylesheet">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
  
  <link rel="stylesheet" href="<?php echo get_bloginfo('template_directory');?>/assets/css/bootstrap/bootstrap.css">
  <link rel="stylesheet" href="<?php echo get_bloginfo('template_directory');?>/assets/fonts/ionicons/css/ionicons.min.css">
  <link rel="stylesheet" href="<?php echo get_bloginfo('template_directory');?>/assets/fonts/law-icons/font/flaticon.css">

  <link rel="stylesheet" href="<?php echo get_bloginfo('template_directory');?>/assets/fonts/fontawesome/css/font-awesome.min.css">


  <link rel="stylesheet" href="<?php echo get_bloginfo('template_directory');?>/assets/css/slick.css">
  <link rel="stylesheet" href="<?php echo get_bloginfo('template_directory');?>/assets/css/slick-theme.css">

  <link rel="stylesheet" href="<?php echo get_bloginfo('template_directory');?>/assets/css/helpers.css">
  
  <link rel="stylesheet" href="<?php echo get_bloginfo('template_directory');?>/style.css">

</head>

<body data-spy="scroll" data-target="#pb-navbar" data-offset="200">

    <nav class="navbar navbar-expand-lg navbar-dark pb_navbar pb_scrolled-light" id="pb-navbar">
      <div class="container">
        <a class="navbar-brand" href="#">Marshall Bird & Curtis</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#probootstrap-navbar" aria-controls="probootstrap-navbar" aria-expanded="false" aria-label="Toggle navigation">
          <span><i class="ion-navicon"></i></span>
      </button>
      <div class="collapse navbar-collapse" id="probootstrap-navbar">

        <?php 
            //output the main nav
            $args = array(
              'theme-location'=>'main-menu',
              'container'=>'ul',
              'menu_class'=>'navbar-nav ml-auto',

            );
            wp_nav_menu($args);

          ?>
    </div>
</div>
</nav>
    <!-- END nav -->