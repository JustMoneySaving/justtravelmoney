<?php 
$container_class = 'container-fluid';
if(is_front_page() || is_singular('currency-guides')){
    $container_class = '';  
}
// We need to display only the latest one
$offer_args = array(
    'post_type' => 'special-offers',
    'post_status'    => 'publish',
    'posts_per_page' => 1,
    'meta_key' => 'WDC_offer_active',
    'meta_value' => '1'
);

// The Query
$offers_query = new WP_Query( $offer_args );
?>

<?php if ($offers_query->have_posts()) : ?>

<?php while ($offers_query->have_posts()) : $offers_query->the_post();
$offer_provider = rwmb_meta( 'WDC_offer_provider' );
$offer_desc = rwmb_meta( 'WDC_offer_desc' );
$highlight_copy = rwmb_meta( 'WDC_highlight_copy' );
$offer_copy = rwmb_meta( 'WDC_offer_copy' );
$offer_url = rwmb_meta( 'WDC_offer_url' );
$provider_logo_src = 'http://placehold.it/160x120/';

if($offer_provider):    
    $provider_logo = rwmb_meta( 'WDC_provider_logo', array(), $offer_provider );
    if(!empty($provider_logo)){
        foreach($provider_logo as $logo){
            $provider_logo_src = $logo['full_url'];
        }
    }
endif;

$offer_link = get_the_permalink($offer_provider);

if($offer_url ){
    $offer_link = esc_html( $offer_url );
}
?>

<section class="sponsored-provider <?php echo $container_class;?>">
    <header>
        <h6><?php _e('Sponsored', 'sage');?></h6>
        <p><?php _e('This placement has been sponsored by', 'sage');?> <?php echo get_the_title($offer_provider);?></p>
    </header>

    <div class="special-offer">
    <?php if($offer_provider): ?>
        <div class="offer-provider">
            <div class="provider-image">
                <a href="<?php echo $offer_link;?>">
                    <img src="<?php echo $provider_logo_src;?>" alt="<?php echo get_the_title($offer_provider);?>">
                </a>
            </div>
            <div class="provider-info">
                <div class="deal-info">
                    <h2><a href="<?php echo $offer_link;?>"><?php echo get_the_title($offer_provider);?></a></h2>
                    <?php if(!empty($offer_desc)){?>
                    <ul>
                        <?php foreach($offer_desc as $desc){?>
                            <li><?php echo $desc;?></li>
                        <?php } ?>
                    </ul>
                    <?php } ?>
                </div>

                <?php if($highlight_copy && !is_front_page() && !is_singular('currency-guides')){?>
                <div class="deal-benefit">
                    <div class="inner">
                        <div class="vm">
                            <?php echo apply_filters('the_content', $highlight_copy); ?>
                        </div>
                    </div>
                </div>
                <?php } ?>

                <?php if($offer_copy && is_front_page() || is_singular('currency-guides')){ ?>
                <div class="deal-content">
                    <div class="inner">
                        <div class="vm">
                            <?php echo apply_filters('the_content', $offer_copy); ?>
                        </div>
                    </div>
                </div>
                <?php } ?>

                <div class="btn-holder">
                    <div class="inner">
                        <div class="vm">
                            <a href="<?php echo $offer_link;?>" class="btn btn-primary"><?php _e('View The Deal', 'sage');?></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <?php endif; ?>
    </div>
</section>


<?php endwhile;?>
<?php endif; wp_reset_postdata(); ?>

