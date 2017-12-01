<article <?php post_class(); ?>>
  <header>
    <h2 class="entry-title"><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h2>
  </header>
  <div class="row">
    <div class="col-sm-3 npr">
      <div class="post-image">
        <a href="<?php the_permalink(); ?>">
        <?php if(has_post_thumbnail()){
          the_post_thumbnail('thumbnail');
        }else{
          echo '<img src="http://placehold.it/160x125/" alt="placeholder" />';
        }?>
        </a>
      </div>
    </div>

    <div class="col-sm-9">

      <div class="entry-summary">
        <?php the_excerpt(); ?>
      </div>

      <div class="read-more">
        <a href="<?php the_permalink();?>" class="btn btn-secundary">Read More</a>
      </div>

    </div>
  </div>
  
</article>
