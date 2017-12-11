<?php
$provider_video_id = rwmb_meta( 'WDC_provider_video_id' );
?>

<?php if($provider_video_id): ?>
<section class="provider-intro">
    <div class="article-video">
        <iframe width="470" height="260" src="https://www.youtube.com/embed/<?php echo $provider_video_id ;?>?rel=0&amp;showinfo=0" frameborder="0" allowfullscreen></iframe>
    </div>
</section>
<?php endif;?>