<?php

use Roots\Sage\Setup;
use Roots\Sage\Wrapper;

$container_class = 'container';
$row_class = 'row';
$main_class = '';
if(is_page_template( 'template-homepage.php' )){
  $container_class = 'full-width';
  $row_class = 'fluid-row';
  $main_class = 'np';
}

if(is_home() || is_category() || is_tag() || is_archive() || is_archive() || is_search()){
  $main_class = 'loop';
  $row_class = 'row loop-archive';
}

if(is_singular('post')){
  $row_class = 'row single-blog';
}

if(is_singular('providers')){
  $row_class = 'row single-provider';
}
?>

<!doctype html>
<html <?php language_attributes(); ?>>
  <?php get_template_part('templates/head'); ?>
  <body <?php body_class(); ?>>
    <!--[if IE]>
      <div class="alert alert-warning">
        <?php _e('You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.', 'sage'); ?>
      </div>
    <![endif]-->
    <?php
      do_action('get_header');
      get_template_part('templates/header');
    ?>

    <?php if (Setup\display_hero()) : ?>
      <?php include Wrapper\hero_path(); ?>
    <?php endif; ?>

    <div class="wrap <?php echo $container_class;?>" role="document">
      <?php if (Setup\display_breadcrumb()) : ?>
        <?php include Wrapper\breadcrumb_path(); ?>
      <?php endif; ?>

      
      <div class="content <?php echo $row_class;?>">

        <?php if (Setup\display_sponsored_offer()) : ?>
          <?php include Wrapper\spoonsored_provider_path(); ?>
        <?php endif; ?>
      
        <?php if (Setup\display_archive_title()) : ?>
          <?php include Wrapper\archive_header_path(); ?>
        <?php endif; ?>

        <?php if (Setup\display_comparison_title()) : ?>
          <?php include Wrapper\comparison_title_path(); ?>
        <?php endif; ?>

        

        <main class="main <?php echo $main_class;?>">

        <?php if (Setup\display_comparison_title()) : ?>
          <?php include Wrapper\comparison_widget_path(); ?>
        <?php endif; ?>

          <?php include Wrapper\template_path(); ?>
        </main><!-- /.main -->
        <?php if (Setup\display_sidebar()) : ?>
          <aside class="sidebar">
            <?php include Wrapper\sidebar_path(); ?>
          </aside><!-- /.sidebar -->
        <?php endif; ?>
      </div><!-- /.content -->
    </div><!-- /.wrap -->
    <?php
      do_action('get_footer');
      get_template_part('templates/footer');
      wp_footer();
    ?>
  </body>
</html>
