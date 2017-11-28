<footer class="content-info">
  <div class="container">
    <div class="footer-logo">
      <img class="img-logo" src="<?php bloginfo('template_directory');?>/assets/images/JustTravelMoney-logo-footer.png" alt="logo"/>
      <img class="svg-logo" src="<?php bloginfo('template_directory');?>/assets/images/JustTravelMoney-logo-footer.svg" alt="logo"/>
    </div>

    <nav class="nav-secondary">
      <?php
      if (has_nav_menu('footer_navigation')) :
        wp_nav_menu(['theme_location' => 'footer_navigation', 'menu_class' => 'footer-nav']);
      endif;
      ?>
    </nav>

    <?php dynamic_sidebar('sidebar-footer'); ?>
  </div>
</footer>
