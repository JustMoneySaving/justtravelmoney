<?php $guide_sidebars = rwmb_meta( 'guide_sidebar' );?>

<?php if($guide_sidebars):?>

    <?php foreach($guide_sidebars as $guide_sidebar){
    $sidebar_title = '';
    $sidebar_content = '';

    if(isset($guide_sidebar['WDC_sidebar_title'])){
        $sidebar_title = $guide_sidebar['WDC_sidebar_title'];
    }
    if(isset($guide_sidebar['WDC_sidebar_content'])){
        $sidebar_content = $guide_sidebar['WDC_sidebar_content'];
    }
    ?>
    <section class="widget guide-widget provider-facts">
        <?php if($sidebar_title){?>
        <h3><?php echo $sidebar_title;?></h3>
        <?php } ?>

        <?php if($sidebar_content){?>
        <?php echo apply_filters('the_content', $sidebar_content);?>
        <?php } ?>
    </section>
    <?php } ?>
<?php endif;?>