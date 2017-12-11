<?php
$about_provider = rwmb_meta( 'WDC_about_provider');
$about_provider_url = rwmb_meta( 'WDC_about_provider_url');
$provider_fact_box = rwmb_meta( 'WDC_provider_fact_box');
?>

<?php if($about_provider):?>
<section class="widget merchant-widget about-provider">
    <h3>About <?php echo get_the_title();?></h3>
    <?php echo apply_filters('the_content', $about_provider);?>
    <?php if($about_provider_url !=''){?>
    <div class="btn-holder">
        <a href="<?php echo $about_provider_url ;?>" class="btn btn-secundary" target="_blank">Go To Website</a>
    </div>
    <?php } ?>
</section>
<?php endif;?>


<?php if($provider_fact_box):?>
<section class="widget merchant-widget provider-facts">
    <h3>Fact Box</h3>
    <?php echo apply_filters('the_content', $provider_fact_box);?>
</section>
<?php endif;?>