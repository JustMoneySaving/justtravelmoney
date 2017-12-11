<?php
$section1_title = rwmb_meta( 'WDC_section_1_title' );
$section1_content = rwmb_meta( 'WDC_section_1_content' );
$section_1_video_id = rwmb_meta( 'WDC_section_1_video_id' );
?>
<section class="homepage-section section-1">
    <div class="container">
        <div class="row">
            <div class="col-sm-5">
                <?php if($section_1_video_id){?>
                <iframe width="400" height="228" src="https://www.youtube.com/embed/<?php echo $section_1_video_id ;?>?rel=0&amp;showinfo=0" frameborder="0" allowfullscreen></iframe>
                <?php } ?>
            </div>

            <div class="col-sm-7">
                <div class="section-content">
                    <?php if($section1_title){?>
                    <h2><?php echo $section1_title;?></h2>
                    <?php } ?>
                    <?php if($section1_content){
                        echo apply_filters('the_content', $section1_content);
                    }?>
                </div>
            </div>
        </div>
    </div>
</section>
