<?php
$faq_cat = rwmb_meta( 'WDC_faq_cat');
?>

<?php if(!empty($faq_cat)): 
$selected_cat = $faq_cat->term_id;
?>
<section class="provider-faqs">
    <header>
        <h2><?php echo get_the_title();?> <?php _e('FAQ', 'sage');?></h2>
        <p><?php _e('Most Popular Questions &amp; Answers', 'sage');?></p>
    </header>
    <?php
    $faq_args = array(
        'post_type' => 'faqs',
        'posts_per_page' => -1,
        'tax_query' => array(
            array(
                'taxonomy' => 'faq_category',
                'terms' => $selected_cat,
                'field' => 'term_id',
            )
        ),
    );
    query_posts($faq_args);?>

    <?php while (have_posts()) : the_post(); ?>
        <article <?php post_class( );?>>
            <h4><span>Q - </span><?php the_title();?></h4>
            <?php the_content();?>
        </article>
    <?php endwhile; wp_reset_query();?>
</section>

<?php endif;?>