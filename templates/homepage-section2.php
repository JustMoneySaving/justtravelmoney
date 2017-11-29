<?php
$section2_title = rwmb_meta( 'WDC_section_2_title' );
$section2_content = rwmb_meta( 'WDC_section_2_content' );
$section2_image = rwmb_meta( 'WDC_section_2_image' );
$section_image_src = 'http://placehold.it/400x200';
$section_image_alt = 'placeholder';

if($section2_image){
    $section_image_src_a = wp_get_attachment_image_src( $section2_image, 'full' );
    $section_image_src = $section_image_src_a[0];
    $section_image_alt = get_the_title($section2_image);
}
?>

<section class="homepage-section section-2 slanted">
    <div class="container">
        <div class="row">
            <div class="col-sm-7">
                <div class="section-content">
                <?php if($section2_title){?>
                    <h2><?php echo $section2_title;?></h2>
                    <?php } ?>
                    <?php if($section2_content){
                        echo apply_filters('the_content', $section2_content);
                    }?>
                </div>
            </div>

            <div class="col-sm-5">
                <div class="section-image">
                    <img src="<?php echo $section_image_src;?>" alt="<?php echo $section_image_alt;?>" />
                </div>
            </div>
        </div>
    </div>
</section>
