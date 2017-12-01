<?php use Roots\Sage\Titles; 
$title_prepend = '';
if(is_home()){
  $title_prepend = __('Browse All ', 'sage');
}
?>

<div class="page-header">
  <h1><?= $title_prepend .Titles\title(); ?></h1>
</div>
