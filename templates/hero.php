<?php
$pid = get_the_id();
$hero_title = '';
$hero_content = '';
$hero_image_src = 'http://placehold.it/1920x870/';

if(is_home() || is_archive() || is_category() || is_tag() || is_search() ){
    $pid = get_option( 'page_for_posts' );
}

if(!is_singular( 'post' )){
$hero_image = wp_get_attachment_image_src( get_post_thumbnail_id($pid), 'full' );
if($hero_image){
    $hero_image_src = $hero_image[0];
}
$hero_title = rwmb_meta( 'WDC_page_hero_title', array(), $pid );
$hero_content = rwmb_meta( 'WDC_page_hero_content', array(), $pid );
}

if(is_singular( 'post' )){
    $hero_title = get_the_title(); 
    $hero_image_ids = rwmb_meta( 'WDC_post_hero_image', array(), $pid );

    foreach($hero_image_ids as $hero_id){
        if($hero_id){
            $hero_image_src = $hero_id['full_url'];
        }
    }
}
?>

<section class="hero-section page-hero has-overlay" style="background-image: url(<?php echo $hero_image_src;?>);">
    <div class="vertical">
        <div class="container">
            <div class="hero-content">
                <?php if($hero_title){?>
                <h1><?php echo $hero_title;?></h1>
                <?php } ?>
                <?php if($hero_content){
                    echo apply_filters('the_content', $hero_content);
                }?>
            </div>
        </div>
    </div>
</section>
