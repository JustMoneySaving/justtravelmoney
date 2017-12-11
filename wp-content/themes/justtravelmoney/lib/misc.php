<?php
// Add Metabox Styling 
add_action('admin_head', 'wdc_custom_meta_styles');

function wdc_custom_meta_styles() {
  echo '<style>
    .rwmb-field input[type=text], .rwmb-field input[type=search], .rwmb-field input[type=tel], .rwmb-field input[type=time], .rwmb-field input[type=url], .rwmb-field input[type=week], .rwmb-field input[type=password],.rwmb-field  input[type=email], .rwmb-field input[type=number], .rwmb-field textarea{
		width:100%;
	}

	.rwmb-group-wrapper > .rwmb-label{
    text-align:center;
    margin-bottom:15px;
  }
  </style>';
}

// Add SVG Support

function add_file_types_to_uploads($file_types){
  $new_filetypes = array();
  $new_filetypes['svg'] = 'image/svg+xml';
  $file_types = array_merge($file_types, $new_filetypes );
return $file_types;
}
add_action('upload_mimes', 'add_file_types_to_uploads');

add_filter('get_the_archive_title', function ($title) {
  if ( is_category() ) {
      $title = single_cat_title( '', false );
  } elseif ( is_tag() ) {
      $title = single_tag_title( '', false );
  } elseif ( is_author() ) {
      $title = '<span class="vcard">' . get_the_author() . '</span>';
  } elseif ( is_year() ) {
      $title = get_the_date( _x( 'Y', 'yearly archives date format' ) );
  } elseif ( is_month() ) {
      $title = get_the_date( _x( 'F Y', 'monthly archives date format' ) );
  } elseif ( is_day() ) {
      $title = get_the_date( _x( 'F j, Y', 'daily archives date format' ) );
  } elseif ( is_tax( 'post_format' ) ) {
      if ( is_tax( 'post_format', 'post-format-aside' ) ) {
          $title = _x( 'Asides', 'post format archive title' );
      } elseif ( is_tax( 'post_format', 'post-format-gallery' ) ) {
          $title = _x( 'Galleries', 'post format archive title' );
      } elseif ( is_tax( 'post_format', 'post-format-image' ) ) {
          $title = _x( 'Images', 'post format archive title' );
      } elseif ( is_tax( 'post_format', 'post-format-video' ) ) {
          $title = _x( 'Videos', 'post format archive title' );
      } elseif ( is_tax( 'post_format', 'post-format-quote' ) ) {
          $title = _x( 'Quotes', 'post format archive title' );
      } elseif ( is_tax( 'post_format', 'post-format-link' ) ) {
          $title = _x( 'Links', 'post format archive title' );
      } elseif ( is_tax( 'post_format', 'post-format-status' ) ) {
          $title = _x( 'Statuses', 'post format archive title' );
      } elseif ( is_tax( 'post_format', 'post-format-audio' ) ) {
          $title = _x( 'Audio', 'post format archive title' );
      } elseif ( is_tax( 'post_format', 'post-format-chat' ) ) {
          $title = _x( 'Chats', 'post format archive title' );
      }
  } elseif ( is_post_type_archive() ) {
      $title = post_type_archive_title( '', false );
  } elseif ( is_tax() ) {
      $title = single_term_title( '', false );
  } else {
      $title = __( 'Archives' );
  }
  return $title;
});

?>