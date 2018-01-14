<?php

namespace Roots\Sage\Setup;

use Roots\Sage\Assets;

/**
 * Theme setup
 */
function setup() {
	// Enable features from Soil when plugin is activated
	// https://roots.io/plugins/soil/
	add_theme_support( 'soil-clean-up' );
	add_theme_support( 'soil-nav-walker' );
	add_theme_support( 'soil-nice-search' );
	add_theme_support( 'soil-jquery-cdn' );
	add_theme_support( 'soil-relative-urls' );

	// Make theme available for translation
	// Community translations can be found at https://github.com/roots/sage-translations
	load_theme_textdomain( 'sage', get_template_directory() . '/lang' );

	// Enable plugins to manage the document title
	// http://codex.wordpress.org/Function_Reference/add_theme_support#Title_Tag
	add_theme_support( 'title-tag' );

	// Register wp_nav_menu() menus
	// http://codex.wordpress.org/Function_Reference/register_nav_menus
	register_nav_menus([
		'primary_navigation' => __( 'Primary Navigation', 'sage' ),
		'footer_navigation'  => __( 'Footer Navigation', 'sage' ),
		'offer_nav'          => __( 'Offer Navigation', 'sage' ),
		'mobile_navigation'  => __( 'Mobile Navigation', 'sage' ),
	]);

	// Enable post thumbnails
	// http://codex.wordpress.org/Post_Thumbnails
	// http://codex.wordpress.org/Function_Reference/set_post_thumbnail_size
	// http://codex.wordpress.org/Function_Reference/add_image_size
	add_theme_support( 'post-thumbnails' );

	// Enable post formats
	// http://codex.wordpress.org/Post_Formats
	add_theme_support( 'post-formats', [ 'aside', 'gallery', 'link', 'image', 'quote', 'video', 'audio' ] );

	// Enable HTML5 markup support
	// http://codex.wordpress.org/Function_Reference/add_theme_support#HTML5
	add_theme_support( 'html5', [ 'caption', 'comment-form', 'comment-list', 'gallery', 'search-form' ] );

	// Use main stylesheet for visual editor
	// To add custom styles edit /assets/styles/layouts/_tinymce.scss
	add_editor_style( Assets\asset_path( 'styles/main.css' ) );
}
add_action( 'after_setup_theme', __NAMESPACE__ . '\\setup' );

/**
 * Register sidebars
 */
function widgets_init() {
	register_sidebar([
		'name'          => __( 'Primary', 'sage' ),
		'id'            => 'sidebar-primary',
		'before_widget' => '<section class="widget %1$s %2$s">',
		'after_widget'  => '</section>',
		'before_title'  => '<h3>',
		'after_title'   => '</h3>',
	]);

	register_sidebar([
		'name'          => __( 'Advice and Tips', 'sage' ),
		'id'            => 'sidebar-blog',
		'before_widget' => '<section class="widget blog-archive %1$s %2$s">',
		'after_widget'  => '</section>',
		'before_title'  => '<h3>',
		'after_title'   => '</h3>',
	]);

	register_sidebar([
		'name'          => __( 'Advice and Tips - Single', 'sage' ),
		'id'            => 'sidebar-blog-single',
		'before_widget' => '<section class="widget blog-single %1$s %2$s">',
		'after_widget'  => '</section>',
		'before_title'  => '<h3>',
		'after_title'   => '</h3>',
	]);

	register_sidebar([
		'name'          => __( 'Merchant Page', 'sage' ),
		'id'            => 'sidebar-providers',
		'before_widget' => '<section class="widget merchant-widget %1$s %2$s">',
		'after_widget'  => '</section>',
		'before_title'  => '<h3>',
		'after_title'   => '</h3>',
	]);

	register_sidebar([
		'name'          => __( 'Footer', 'sage' ),
		'id'            => 'sidebar-footer',
		'before_widget' => '<section class="widget footer-info %1$s %2$s">',
		'after_widget'  => '</section>',
		'before_title'  => '<h3>',
		'after_title'   => '</h3>',
	]);
}
add_action( 'widgets_init', __NAMESPACE__ . '\\widgets_init' );

/**
 * Determine which pages should NOT display the sidebar
 */
function display_sidebar() {
	static $display;

	isset( $display ) || $display = ! in_array(true, [
		// The sidebar will NOT be displayed if ANY of the following return true.
		// @link https://codex.wordpress.org/Conditional_Tags
		is_404(),
		is_front_page(),
	], true );

	return apply_filters( 'sage/display_sidebar', $display );
}

/**
 * Determine which pages should NOT display the hero section
 */
function display_hero() {
	static $display;

	isset( $display ) || $display = ! in_array(true, [
		// The sidebar will NOT be displayed if ANY of the following return true.
		// @link https://codex.wordpress.org/Conditional_Tags
		is_404(),
		is_front_page(),
	], true );

	return apply_filters( 'sage/display_hero', $display );
}

/**
 * Determine which pages should NOT display the breadcrumb section
 */
function display_breadcrumb() {
	static $display;

	isset( $display ) || $display = in_array( true, [
		// The sidebar will NOT be displayed if ANY of the following return true.
		// @link https://codex.wordpress.org/Conditional_Tags
		is_home(),
		is_singular( 'post' ),
		is_category(),
		is_tag(),
		is_archive(),
		is_search(),
		is_singular( 'providers' ),
		is_page_template( 'template-contact.php' ),
	], true );

	return apply_filters( 'sage/display_breadcrumb', $display );
}

/**
 * Determine which pages should display the archive title section
 */
function display_archive_title() {
	static $display;

	isset( $display ) || $display = in_array(true, [
		// The sidebar will NOT be displayed if ANY of the following return true.
		// @link https://codex.wordpress.org/Conditional_Tags
		is_home(),
		is_category(),
		is_tag(),
		is_archive(),
		is_search(),
	], true );

	return apply_filters( 'sage/display_archive_title', $display );
}

/**
 * Determine which pages should display the sponsored offer
 */
function display_sponsored_offer() {
	static $display;

	isset( $display ) || $display = in_array(true, [
		// The sidebar will NOT be displayed if ANY of the following return true.
		// @link https://codex.wordpress.org/Conditional_Tags
		is_post_type_archive( 'providers' ),
	], true );

	return apply_filters( 'sage/display_sponsored_offer', $display );
}


/**
 * Determine which pages should display the light comparison title
 */
function display_comparison_title() {
	static $display;

	isset( $display ) || $display = in_array(true, [
		// The sidebar will NOT be displayed if ANY of the following return true.
		// @link https://codex.wordpress.org/Conditional_Tags
		is_singular( 'providers' ),
	], true );

	return apply_filters( 'sage/display_comparison_title', $display );
}

/**
 * Determine which pages should display the comparison result
 */
function display_guide_results() {
	static $display;

	isset( $display ) || $display = in_array(true, [
		// The box will be displayed if ANY of the following return true.
		// @link https://codex.wordpress.org/Conditional_Tags
		is_singular( 'currency-guides' ),
	], true );

	return apply_filters( 'sage/display_guide_results', $display );
}


/**
 * Theme assets
 */
function assets() {
	wp_enqueue_style( 'sage/css', Assets\asset_path( 'styles/main.css' ), false, null );

	if ( is_single() && comments_open() && get_option( 'thread_comments' ) ) {
		wp_enqueue_script( 'comment-reply' );
	}

	wp_enqueue_script( 'jquery-ui-autocomplete' );

	wp_register_script( 'sage/js', Assets\asset_path( 'scripts/main.js' ), [ 'jquery' ], null, true );

	// Replace This array with stored array

	$currency_array = jtm_get_currency_array();

	wp_localize_script( 'sage/js', 'wdc',
		array(
			'ajax_url' => admin_url( 'admin-ajax.php' ),
			'currency_list' => $currency_array,
		)
	);

	wp_enqueue_script( 'sage/js' );

}

function jtm_get_currency_array( $refresh = false ) {
	$currencies_dropdown = get_transient( 'jtm_currencies_dropdown' );
	if ( ! $currencies_dropdown || $refresh ) {
		$json = file_get_contents( get_template_directory() . '/json/currencies.json' );
		if ( $json ) {
			$currencies_dropdown = json_decode( $json );
			$feeds = new \jtm\Currencies();
			if ( $feeds ) {
				foreach ( $currencies_dropdown as $key => $currency ) {
					if ( ! isset( $feeds->currencies[ $currency->value ] ) ) {
						unset( $currencies_dropdown[ $key ] );
					}
				}
			}
			// Reindex array
			$currencies_dropdown = array_values( $currencies_dropdown );
			set_transient( 'jtm_currencies_dropdown', $currencies_dropdown, HOUR_IN_SECONDS/2 );
		}
	}

	return $currencies_dropdown;
}

function jtm_get_currency_name($short_name){
	
	$currencies = jtm_get_currency_array();
	$currency_name = '';
	if(!empty($currencies)){
		foreach($currencies as $currency){
			$currency_value = $currency->value;
			if($currency_value == $short_name){
				$currency_name = $currency->plural;
			}
		}
	}

	return $currency_name;
}

add_action( 'wp_enqueue_scripts', __NAMESPACE__ . '\\assets', 100 );

function admin_assets() {
	wp_enqueue_script( 'jtm_ajax', Assets\asset_path( 'scripts/ajax.js' ), array( 'jquery' ), null, true );
}
add_action( 'admin_enqueue_scripts', __NAMESPACE__ . '\\admin_assets', 100 );

/**
 * Remove emoji script
 */
function wdc_disable_wp_emojicons() {
	// all actions related to emojis
	remove_action( 'admin_print_styles', 'print_emoji_styles' );
	remove_action( 'wp_head', 'print_emoji_detection_script', 7 );
	remove_action( 'admin_print_scripts', 'print_emoji_detection_script' );
	remove_action( 'wp_print_styles', 'print_emoji_styles' );
	remove_filter( 'wp_mail', 'wp_staticize_emoji_for_email' );
	remove_filter( 'the_content_feed', 'wp_staticize_emoji' );
	remove_filter( 'comment_text_rss', 'wp_staticize_emoji' );
}
add_action( 'init', __NAMESPACE__ . '\\wdc_disable_wp_emojicons' );

/**
 * Add Last mod header
 */

 /* Theme Mods */

add_action( 'send_headers',  __NAMESPACE__ . '\\wdc_add_last_modified_header' );
function wdc_add_last_modified_header() {
	//Check if we are in a single post of any type (archive pages has not modified date)
	if ( is_singular() || is_page() ) {
		$post_id = get_the_id();
		if ( $post_id ) {
			header( 'Last-Modified: ' . get_the_modified_time( 'D, d M Y H:i:s', $post_id ) );
		}
	}
}
