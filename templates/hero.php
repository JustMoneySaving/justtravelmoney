<?php
$pid = get_the_id();
$hero_title = '';
$hero_content = '';
$hero_image_src = 'http://placehold.it/1920x870/';
$added_class = '';

if(is_home() || is_archive()){
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

if(is_post_type_archive('providers')){
    $hero_title = 'All Travel Money Providers';
    $hero_content = 'We’ve compared the rates of British Pounds (GBP) to Dollars (USD) <br>
    At the best rate, 500 Pounds buys you 212 USD from Travelex';
}

if(is_post_type_archive('currency-guides')){
    $hero_title = 'Currency Guides';
    $hero_content = '';
}

if(is_singular('providers')){
    $hero_title = get_the_title();
    $hero_image = wp_get_attachment_image_src( get_post_thumbnail_id($pid), 'full' );
    $hero_title_meta = rwmb_meta( 'WDC_provider_hero_title', array(), $pid );

    if($hero_title_meta){
        $hero_title = $hero_title_meta;
    }
    $hero_content = rwmb_meta( 'WDC_provider_hero_content', array(), $pid );
    $provider_logo = rwmb_meta( 'WDC_provider_logo', array(), $pid );
    $logo_src = 'http://placehold.it/120x40/';
    $added_class = 'provider-hero';

    if(!empty($provider_logo)):
        foreach($provider_logo as $logo){
            $logo_src = $logo['full_url'];
        }
    endif;
}

if(is_singular('currency-guides')){
    $hero_title = get_the_title();
    $hero_title_meta = rwmb_meta( 'WDC_guide_hero_title', array(), $pid );
    if($hero_title_meta){
        $hero_title = $hero_title_meta;
    }
    $hero_content = rwmb_meta( 'WDC_guide_hero_content', array(), $pid );
}
?>

<section class="hero-section page-hero has-overlay" style="background-image: url(<?php echo $hero_image_src;?>);">
    <div class="vertical">
        <div class="container">
            <?php if(is_singular('providers')){ ?>
                <div class="provider-logo">
                    <div class="logo-inner">
                        <img src="<?php echo $logo_src;?>" alt="<?php get_the_title();?>" />
                    </div>
                </div>
            <?php } ?>

            <div class="hero-content <?php echo $added_class;?>">
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