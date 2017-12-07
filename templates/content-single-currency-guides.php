<?php $guide_sections = rwmb_meta( 'guide_section' ); ?>

<?php if(!empty($guide_sections)): ?>

<?php foreach($guide_sections as $section){
$section_title = '';
$section_content = '';

if(isset($section['WDC_section_title'])){
    $section_title = $section['WDC_section_title'];
}

if(isset($section['WDC_section_content'])){
    $section_content = $section['WDC_section_content'];
}
?>

  <article class="currency-guide">

    <?php if($section_title){?>
    <header>
        <h2><?php echo $section_title;?></h2>
    </header>
    <?php } ?>

    <?php if($section_content){?>
    <div class="entry-content">
      <?php echo apply_filters('the_content', $section_content); ?>
    </div>
    <?php } ?>
  </article>

<?php }?>
<?php endif;?>