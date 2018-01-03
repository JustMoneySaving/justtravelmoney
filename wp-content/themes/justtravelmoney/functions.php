<?php
/**
 * Sage includes
 *
 * The $sage_includes array determines the code library included in your theme.
 * Add or remove files to the array as needed. Supports child theme overrides.
 *
 * Please note that missing files will produce a fatal error.
 *
 * @link https://github.com/roots/sage/pull/1042
 */
$sage_includes = [
	'lib/assets.php',           // Scripts and stylesheets
	'lib/extras.php',           // Custom functions
	'lib/setup.php',            // Theme setup
	'lib/titles.php',           // Page titles
	'lib/wrapper.php',          // Theme wrapper class
	'lib/customizer.php',       // Theme customizer
	'lib/misc.php',             // Misc Functions
	'lib/homepage-meta.php',    // Homepage Metabox
	'lib/contact-meta.php',     // Contact Metabox
	'lib/general-meta.php',     // Homepage Metabox
	'lib/shortcodes.php',       // Custom Shortcodes
	'lib/cpt.php',              // Custom Post Types
	'lib/cpt-permalinks.php',   // Remove CPT Permalink
	'lib/widgets.php',          // Custom Widgets
	'lib/pagination.php',       // Custom Pagination
	'lib/import-meta.php',      // Import Metabox
	'lib/class-currencies.php', // Import class
	'lib/class-ajax.php',       // AJAX class
];

foreach ( $sage_includes as $file ) {
	$filepath = locate_template( $file );
	if ( ! $filepath ) {
		trigger_error( sprintf( __( 'Error locating %s for inclusion', 'sage' ), $file ), E_USER_ERROR );
	}

	require_once $filepath;
}
unset( $file, $filepath );
