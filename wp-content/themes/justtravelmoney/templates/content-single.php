<?php while (have_posts()) : the_post(); ?>
  <article <?php post_class(); ?>>
    <header>
      <h2 class="entry-title"><?php the_title(); ?></h2>
    </header>
    <div class="entry-content">
      <?php if(has_post_thumbnail()){ ?>
        <div class="entry-image">
          <?php the_post_thumbnail('thumbnail');?>
        </div>
      <?php } ?>
      <?php the_content(); ?>
    </div>
    <?php comments_template('/templates/comments.php'); ?>
  </article>
<?php endwhile; ?>
