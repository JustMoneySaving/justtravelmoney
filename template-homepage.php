<?php
/**
 * Template Name: Homepage
 */
?>

<?php while (have_posts()) : the_post(); ?>
    <?php get_template_part('templates/homepage', 'hero'); ?>
    <?php get_template_part('templates/homepage', 'section1'); ?>
    <?php get_template_part('templates/homepage', 'section2'); ?>
    <?php get_template_part('templates/homepage', 'section3'); ?>
<?php endwhile; ?>

<?php 
/* This needs to be out ot the loop because it has it's own blog loop */
get_template_part('templates/homepage', 'section4'); ?>
