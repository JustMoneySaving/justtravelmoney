<?php
$s4_box_1 = rwmb_meta( 's4_box_1' );
$s4_box_2 = rwmb_meta( 's4_box_2' );
$s4_box_3 = rwmb_meta( 's4_box_3' );
$s4_box_4 = rwmb_meta( 's4_box_4' );

$section4_boxes_row1 = array();

// CREATE UNIFORM ARRAY
if(!empty($s4_box_1)){
    $section4_boxes_row1['box1'] = array();

    if(isset($s4_box_1['WDC_box1_title'])){
        $section4_boxes_row1['box1']['title'] = $s4_box_1['WDC_box1_title'];
    }
    if(isset($s4_box_1['WDC_box1_image'])){
        $section4_boxes_row1['box1']['image'] = $s4_box_1['WDC_box1_image'];
    }
}

if(!empty($s4_box_2)){
    $section4_boxes_row1['box2'] = array();
    
    if(isset($s4_box_2['WDC_box2_title'])){
        $section4_boxes_row1['box2']['title'] = $s4_box_2['WDC_box2_title'];
    }
    if(isset($s4_box_2['WDC_box2_image'])){
        $section4_boxes_row1['box2']['image'] = $s4_box_2['WDC_box2_image'];
    }
}

$section4_boxes_row2 = array();

// CREATE UNIFORM ARRAY
if(!empty($s4_box_3)){
    $section4_boxes_row2['box1'] = array();

    if(isset($s4_box_3['WDC_box3_title'])){
        $section4_boxes_row2['box1']['title'] = $s4_box_3['WDC_box3_title'];
    }
    if(isset($s4_box_3['WDC_box3_image'])){
        $section4_boxes_row2['box1']['image'] = $s4_box_3['WDC_box3_image'];
    }
}

if(!empty($s4_box_4)){
    $section4_boxes_row2['box2'] = array();
    
    if(isset($s4_box_4['WDC_box4_title'])){
        $section4_boxes_row2['box2']['title'] = $s4_box_4['WDC_box4_title'];
    }
    if(isset($s4_box_4['WDC_box4_image'])){
        $section4_boxes_row2['box2']['image'] = $s4_box_4['WDC_box4_image'];
    }
}?>

<div class="fearures-grid">
    <?php if(!empty($section4_boxes_row1)): ?>
    <div class="row">
        <?php foreach($section4_boxes_row1 as $box){
            $box_title = '';
            $box_image_id = '';
            $box_image = 'http://placehold.it/215x118/';
            $box_image_alt = 'placeholder';

            if(isset($box['title'])){
                $box_title = $box['title'];
            }

            if(isset($box['image'])){
                $box_image_id = $box['image'];
            }

            if(!empty($box_image_id)){
                $box_image_a = wp_get_attachment_image_src( $box_image_id[0], 'full');
                $box_image = $box_image_a[0];
                $box_image_alt = get_the_title($box_image_id[0]);
            }
        ?>
            <div class="col-sm-6">
                <div class="box">
                    <div class="box-image">
                        <img src="<?php echo $box_image;?>" alt="<?php echo $box_image_alt;?>" />
                    </div>

                    <?php if($box_title){?>
                    <div class="box-title">
                        <?php echo $box_title;?>
                    </div>
                    <?php } ?>
                </div>
            </div>
        <?php } ?>
    </div><!-- ROW -->
    <?php endif;?>

    <?php 
    // ROW 2
    if(!empty($section4_boxes_row2)): ?>
    <div class="row">
        <?php foreach($section4_boxes_row2 as $box){
            $box_title = '';
            $box_image_id = '';
            $box_image = 'http://placehold.it/215x118/';
            $box_image_alt = 'placeholder';

            if(isset($box['title'])){
                $box_title = $box['title'];
            }

            if(isset($box['image'])){
                $box_image_id = $box['image'];
            }

            if(!empty($box_image_id)){
                $box_image_a = wp_get_attachment_image_src( $box_image_id[0], 'full');
                $box_image = $box_image_a[0];
                $box_image_alt = get_the_title($box_image_id[0]);
            }
        ?>
            <div class="col-sm-6">
                <div class="box">
                    <div class="box-image">
                        <img src="<?php echo $box_image;?>" alt="<?php echo $box_image_alt;?>" />
                    </div>

                    <?php if($box_title){?>
                    <div class="box-title">
                        <?php echo $box_title;?>
                    </div>
                    <?php } ?>
                </div>
            </div>
        <?php } ?>
    </div><!-- ROW -->
    <?php endif;?>

</div>