
<?php while (have_posts()) : the_post(); ?>
  <?php get_template_part('templates/content', 'currency-guides'); ?>
<?php endwhile; ?>

<?php echo wdc_paginate_archive();?>