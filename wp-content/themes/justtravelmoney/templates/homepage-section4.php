<section class="homepage-section section-4">
    <div class="container">
        <div class="row">
            <div class="col-sm-6">
            <?php get_template_part('templates/homepage', 'static'); ?>
            </div>

            <div class="col-sm-6">
                <div class="blog-list">
                    <header>
                        <h3>Latest From The Blog</h3>
                        <a href="<?php echo get_the_permalink(get_option('page_for_posts'));?>">View All Now</a>
                    </header>

                    <?php get_template_part('templates/homepage', 'blog'); ?>
                </div>
            </div>
        </div>
    </div>
</section>