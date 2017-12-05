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

      <?php
      if (has_nav_menu('offer_nav')) :
        wp_nav_menu(['theme_location' => 'offer_nav', 'menu_id' => 'offer-menu', 'menu_class' => 'nav']);
      endif;
      ?>
      <?php get_template_part('templates/special-offer'); ?>
    </nav>
  </div>
</header>
