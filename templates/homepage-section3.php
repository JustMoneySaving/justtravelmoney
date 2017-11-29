<?php
$section_3_title = rwmb_meta( 'WDC_section_3_title' );
$section3_boxes = array();

$s3_box_1 = rwmb_meta( 's3_box_1' );
$s3_box_2 = rwmb_meta( 's3_box_2' );
$s3_box_3 = rwmb_meta( 's3_box_3' );

// CREATE UNIFORM ARRAY
if(!empty($s3_box_1)){
    $section3_boxes['box1'] = array();

    if(isset($s3_box_1['WDC_box1_title'])){
        $section3_boxes['box1']['title'] = $s3_box_1['WDC_box1_title'];
    }
    if(isset($s3_box_1['WDC_box1_content'])){
        $section3_boxes['box1']['content'] = $s3_box_1['WDC_box1_content'];
    }
}

if(!empty($s3_box_2)){
    $section3_boxes['box2'] = array();
    
    if(isset($s3_box_2['WDC_box2_title'])){
        $section3_boxes['box2']['title'] = $s3_box_2['WDC_box2_title'];
    }
    if(isset($s3_box_2['WDC_box2_content'])){
        $section3_boxes['box2']['content'] = $s3_box_2['WDC_box2_content'];
    }
}

if(!empty($s3_box_3)){
    $section3_boxes['box3'] = array();
    if(isset($s3_box_3['WDC_box3_title'])){
        $section3_boxes['box3']['title'] = $s3_box_3['WDC_box3_title'];
    }
    if(isset($s3_box_3['WDC_box3_content'])){
        $section3_boxes['box3']['content'] = $s3_box_3['WDC_box3_content'];
    }
}
?>

<section class="homepage-section section-3">
    <div class="container">
        <?php if($section_3_title){?>
            <header>
                <h2><?php echo $section_3_title;?></h2>
            </header>
        <?php } ?>

        <?php if(!empty($section3_boxes)): ?>
        <div class="row">
            <?php 
            $i=0;
            foreach($section3_boxes as $box){ 
            $i++;
            $box_title = '';
            $box_content = '';
            if(isset($box['title'])){
                $box_title = $box['title'];
            }
            if(isset($box['content'])){
                $box_content = $box['content'];
            }
            ?>
            <div class="col-sm-4">
                <div class="box">
                    <div class="box-number"><?php echo $i;?></div>
                    <div class="box-inner">
                        <?php if($box_title){?>
                            <h3><?php echo $box_title;?></h3>
                        <?php } ?>

                        <?php if($box_content){
                            echo apply_filters('the_content', $box_content);
                        }?>
                    </div>
                </div>
            </div>
           <?php }?>
        </div> <!-- ROW -->
        <?php endif;?>
    </div>
</section>
