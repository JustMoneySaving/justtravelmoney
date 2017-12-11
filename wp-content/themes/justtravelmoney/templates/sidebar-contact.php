<?php
$quick_links = rwmb_meta( 'WDC_quick_links');
?>

<?php if($quick_links):?>
<section class="widget contact-widget provider-facts">
    <h3><?php _e('Quick Links', 'sage');?></h3>
    <?php echo apply_filters('the_content', $quick_links);?>
</section>
<?php endif;?>


