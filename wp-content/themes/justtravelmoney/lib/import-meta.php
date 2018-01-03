<?php
add_filter( 'mb_settings_pages', 'jtm_register_settings_page_import' );
add_filter( 'rwmb_meta_boxes', 'jtm_register_meta_boxes_import' );

/**
 * Register meta boxes
 *
 * @return void
 */
function jtm_register_settings_page_import( $settings_pages ) {
	$prefix = 'jtm_';

	// URLS
	$settings_pages[] = array(
		'id'          => 'currency-import',
		'option_name' => 'currency_import',
		'menu_title'  => 'Currency Import',
		'icon_url'    => 'dashicons-download',
	);

	return $settings_pages;
}

function jtm_register_meta_boxes_import( $meta_boxes ) {
	$prefix = 'jtm_';

	// URLS
	$meta_boxes[] = array(
		'id'             => "{$prefix}currency-import",
		'settings_pages' => 'currency-import',
		'title'          => 'Currency Import',
		'fields'      => array(
			array(
				'type'  => 'button',
				'name'  => 'Update Currencies',
				'std'   => 'Update',
				'id'    => "{$prefix}currency-update",
			),
		),
	);

	return $meta_boxes;
}
