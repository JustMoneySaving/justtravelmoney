<?php 
$blog_args = array(
    'post_type' => 'post',
    'posts_per_page' => 6
);
query_posts($blog_args); ?>

<ul class="recent-posts">

<?php while (have_posts()) : the_post(); ?>
    <li>
        <h6><a href="<?php the_permalink();?>"><?php the_title();?></a></h6>
    </li>
<?php endwhile; wp_reset_query();?>
</ul>