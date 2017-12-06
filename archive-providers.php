
<?php while (have_posts()) : the_post(); ?>
  <?php get_template_part('templates/content', 'providers'); ?>
<?php endwhile; ?>

<?php echo wdc_paginate_archive();?>