<?php
$provider_intro = rwmb_meta( 'WDC_provider_intro' );
?>

<?php if($provider_intro): ?>
<section class="provider-intro">
    <?php echo apply_filters('the_content', $provider_intro); ?>
</section>
<?php endif;?>