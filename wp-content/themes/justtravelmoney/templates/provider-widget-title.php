<?php
$provider_hero_title = rwmb_meta( 'WDC_provider_hero_title' );

if($provider_hero_title){
  $title = $provider_hero_title;
}
else{
  $title = get_the_title();
}
?>

<div class="page-header provider-widget-title container-fluid">
  <h2><?= __('Check If', 'sage'). ' '.$title. ' ' .__('Is The Best Rate', 'sage') ?></h2>
</div>