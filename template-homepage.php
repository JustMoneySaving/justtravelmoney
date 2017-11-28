<?php
/**
 * Template Name: Homepage
 */
?>

<?php while (have_posts()) : the_post(); ?>
    <?php get_template_part('templates/homepage', 'hero'); ?>
    <?php get_template_part('templates/homepage', 'section1'); ?>
    <?php get_template_part('templates/homepage', 'section2'); ?>
<?php endwhile; ?>
