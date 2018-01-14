<article <?php post_class(); ?>>
    <header>
        <h2 class="entry-title"><?php _e('How To Contact Us', 'sage');?></h2>
    </header>
    <div class="entry-content">
        <?php the_content(); ?>
        <?php wp_link_pages(['before' => '<nav class="page-nav"><p>' . __('Pages:', 'sage'), 'after' => '</p></nav>']); ?>
    </div>
</article>