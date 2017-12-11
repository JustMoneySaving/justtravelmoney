<header class="banner">
  <div class="container">
    <a class="brand" href="<?= esc_url(home_url('/')); ?>">
      <img class="img-logo" src="<?php bloginfo('template_directory');?>/assets/images/JustTravelMoney-logo.png" alt="logo"/>
      <img class="svg-logo" src="<?php bloginfo('template_directory');?>/assets/images/JustTravelMoney-logo.svg" alt="logo"/>
    </a>
    <nav class="nav-primary">
      <?php
      if (has_nav_menu('primary_navigation')) :
        wp_nav_menu(['theme_location' => 'primary_navigation', 'menu_class' => 'nav']);
      endif;
      ?>

      <?php if (has_nav_menu('mobile_navigation')) : ?>
      <div class="mobile-nav only-mobile">
        <a href="#" class="js-open-left-slidebar"><i class="fa fa-bars"></i> MENU</a>
      </div>
      <?php endif; ?>

      <?php if (has_nav_menu('offer_nav')) :
      
        // We need to display only the latest one
        $offer_args_h = array(
            'post_type' => 'special-offers',
            'post_status'    => 'publish',
            'posts_per_page' => 1,
            'meta_key' => 'WDC_offer_active',
            'meta_value' => '1'
        );
        // The Query
        $offers_query = new WP_Query( $offer_args_h );
        if ($offers_query->have_posts()) :
          wp_nav_menu(['theme_location' => 'offer_nav', 'menu_id' => 'offer-menu', 'menu_class' => 'nav']);
        endif; wp_reset_query(); 
      endif;?>

      <?php get_template_part('templates/special-offer'); ?>
    </nav>
  </div>
</header>
