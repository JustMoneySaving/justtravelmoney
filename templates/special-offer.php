<?php 
// We need to display only the latest one
$offer_args = array(
    'post_type' => 'special-offers',
    'post_status'    => 'publish',
    'posts_per_page' => 1,
    'meta_key' => 'WDC_offer_active',
    'meta_value' => '1'
);

query_posts($offer_args);?>

<?php if (have_posts()) :
while (have_posts()) : the_post(); 
$offer_provider = rwmb_meta( 'WDC_offer_provider' );
$offer_desc = rwmb_meta( 'WDC_offer_desc' );
$offer_copy = rwmb_meta( 'WDC_offer_copy' );
$offer_url = rwmb_meta( 'WDC_offer_url' );
?>
<div class="offer-wrap">
    <div class="offer-inner">
        <?php if($offer_provider):    
        $provider_logo = rwmb_meta( 'WDC_provider_logo', array(), $offer_provider );
        $provider_logo_src = 'http://placehold.it/160x120/';

        if(!empty($provider_logo)){
            foreach($provider_logo as $logo){
                $provider_logo_src = $logo['full_url'];
            }
        }
        ?>
        <div class="offer-provider">
            <div class="provider-image">
                <span>
                    <img src="<?php echo $provider_logo_src;?>" alt="<?php echo get_the_title($offer_provider);?>">
                </span>
            </div>
            <div class="provider-info">
                <h2><?php echo get_the_title($offer_provider);?></h2>
                <?php if(!empty($offer_desc)){?>
                <ul>
                    <?php foreach($offer_desc as $desc){?>
                        <li><?php echo $desc;?></li>
                    <?php } ?>
                </ul>
                <?php } ?>
            </div>
        </div>
        <?php endif;?>
        <?php if($offer_copy || $offer_url ):?>
        <div class="offer-details">

            <?php if($offer_copy){
                echo apply_filters('the_content', $offer_copy);
            }?>

        <?php if($offer_url){?>
        <div class="btn-holder">
            <a href="<?php echo esc_html( $offer_url );?>" class="btn btn-primary"><?php _e('View The Deal', 'sage');?></a>
        </div>
        <?php }else if($offer_provider){?>
        <div class="btn-holder">
            <a href="<?php echo get_the_permalink( $offer_provider );?>" class="btn btn-primary"><?php _e('View The Deal', 'sage');?></a>
        </div>
        <?php } ?>

        </div>
        <?php endif;?>
    </div>
</div>
<?php endwhile; ?>

<?php endif; wp_reset_query();?>