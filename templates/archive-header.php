<?php use Roots\Sage\Titles;
$title_prepend = '';
if(is_home()){
    $pid = get_option( 'page_for_posts' );
    $title_prepend = __('Browse All ', 'sage');
    $title = $title_prepend. get_the_title($pid);
}

if(is_archive()){
    $title_prepend = __('Browse All ', 'sage');
}
?>

<div class="page-header archive-title container-fluid">
  <h1><?= $title_prepend .Titles\title(); ?></h1>
</div>