<?php
$hero_image_src = 'http://placehold.it/1920x870/';
$hero_image = wp_get_attachment_image_src( get_post_thumbnail_id(get_the_id()), 'full' );
if($hero_image){
    $hero_image_src = $hero_image[0];
}
$hero_title = rwmb_meta( 'WDC_hero_title' );
$hero_content = rwmb_meta( 'WDC_hero_content' );
$hero_logos = get_post_meta(get_the_id(), 'WDC_hero_logos', false );
?>

<section class="hero-section homepage-hero has-overlay" style="background-image: url(<?php echo $hero_image_src;?>);">
    <div class="vertical">
        <div class="container">
            <div class="row">
                <div class="col-sm-5 npr no-mobile">
                    <?php echo do_shortcode('[conversion_box]');?>
                </div>
                <div class="col-sm-7">
                    <div class="hero-content">
                        <?php if($hero_title){?>
                        <h1><?php echo $hero_title;?></h1>
                        <?php } ?>
                        <?php if($hero_content){
                            echo apply_filters('the_content', $hero_content);
                        }?>

                        <?php if(!empty($hero_logos)): ?>
                        <div class="hero-logos no-mobile">
                            <?php foreach($hero_logos as $logo){ 
                            $img_src_a = wp_get_attachment_image_src( $logo, 'full');
                            $img_src = $img_src_a[0];
                            ?>
                            <img src="<?php echo $img_src;?>" alt="partner-<?php echo $logo;?>" />
                            <?php } ?>
                        </div>
                        <?php endif;?>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <?php if(!empty($hero_logos)): ?>

        <div class="hero-logos only-mobile">
            <?php foreach($hero_logos as $logo){ 
            $img_src_a = wp_get_attachment_image_src( $logo, 'full');
            $img_src = $img_src_a[0];
            ?>
            <img src="<?php echo $img_src;?>" alt="partner-<?php echo $logo;?>" />
            <?php } ?>
        </div>

    <?php endif;?>
</section>

<div class="container only-mobile">
    <section class="mobile-compare">
        <?php echo do_shortcode('[conversion_box slanted="no"]');?>
    </section>
</div>
