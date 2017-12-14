<?php

namespace Roots\Sage\Extras;

use Roots\Sage\Setup;

/**
 * Add <body> classes
 */
function body_class($classes) {
  // Add page slug if it doesn't exist
  if (is_single() || is_page() && !is_front_page()) {
    if (!in_array(basename(get_permalink()), $classes)) {
      $classes[] = basename(get_permalink());
    }
  }

  // Add class if sidebar is active
  if (Setup\display_sidebar()) {
    $classes[] = 'sidebar-primary';
  }

  return $classes;
}
add_filter('body_class', __NAMESPACE__ . '\\body_class');


/**
 * Limit excerpt lenght
 */

function wdc_excerpt_length( $length ) {
	return 25;
}
add_filter( 'excerpt_length', __NAMESPACE__ . '\\wdc_excerpt_length' );


/**
 * Clean up the_excerpt()
 */
function excerpt_more() {
  return ' &hellip;';
}
add_filter('excerpt_more', __NAMESPACE__ . '\\excerpt_more');

/**
 * Prevent Yoast from overwriting Schema
 * @param  $array $data Schema input data
 * @return array        Modified schema array
 */
function bybe_remove_yoast_json($data){
  $data = array();
  return $data;
}
add_filter( 'wpseo_json_ld_output', __NAMESPACE__ . '\\bybe_remove_yoast_json', 10, 1 );
