<?php
/**
 * CUSTOM POST TYPES
 */

 //FAQ
add_action( 'init', 'wdc_faq_init' );
function wdc_faq_init() {

   $labels = array( 
       'name' => 'FAQs',
       'singular_name' => 'FAQ',
       'add_new' => 'Add New',
       'add_new_item' => 'Add New FAQ',
       'edit_item' => 'Edit FAQ Item',
       'new_item' => 'New FAQ Item',
       'view_item' => 'View FAQ Item',
       'search_items' => 'Search FAQs',
       'not_found' => 'No FAQs found',
       'not_found_in_trash' => 'No FAQs found in Trash',
       'parent_item_colon' => 'Parent FAQ:',
       'menu_name' => 'FAQs',
   );

   $args = array( 
       'labels' => $labels,
       'hierarchical' => false,
       'menu_icon' => 'dashicons-editor-help',
       'public' => true,
       'show_ui' => true,
       'show_in_menu' => true,
       'show_in_nav_menus' => true,
       'publicly_queryable' => true,
       'exclude_from_search' => true,
       'has_archive' => false,
       'query_var' => true,
       'can_export' => true,
       'supports' => array('title', 'editor'),
       'rewrite' =>  array( 
			'slug' => 'faqs', 
			'with_front' => false,
			),
       'capability_type' => 'post'
   );

   register_post_type( 'faqs', $args );
}

// FAQ TAXONOMY
function add_custom_taxonomies_faq() {

register_taxonomy('faq_category', 'faqs', array( 
	
	//'hierarchical' => true,
	'labels' => array( 
		'name' => 'FAQ Categories',
		'singular_name' => 'FAQ Category', 
		'search_items' => 'Search Categories', 
		'all_items' =>  'All Category', 
		'parent_item' => 'Parent Category', 
		'parent_item_colon' => 'Parent Category:', 
		'edit_item' => 'Edit Category', 
		'update_item' => 'Update Category', 
		'add_new_item' => 'Add New Category', 
		'new_item_name' =>  'New Type Category', 
		'menu_name' =>  'FAQ Categories'
	), 
	'hierarchical' => true,
	'rewrite' => array( 
		'slug' => 'faq-category',  
		'with_front' => false,
	) 
));
}
add_action( 'init', 'add_custom_taxonomies_faq', 0 );

//PROVIDERS
add_action( 'init', 'wdc_provider_init' );
function wdc_provider_init() {

   $labels = array( 
       'name' => 'Travel Money Providers',
       'singular_name' => 'Travel Money Provider',
       'add_new' => 'Add New',
       'add_new_item' => 'Add New Provider',
       'edit_item' => 'Edit Provider',
       'new_item' => 'New Provider',
       'view_item' => 'View Providers',
       'search_items' => 'Search Providers',
       'not_found' => 'No Providers found',
       'not_found_in_trash' => 'No Providers found in Trash',
       'parent_item_colon' => 'Parent Provider:',
       'menu_name' => 'Providers',
   );

   $args = array( 
       'labels' => $labels,
       'hierarchical' => false,
       'menu_icon' => 'dashicons-download',
       'public' => true,
       'show_ui' => true,
       'show_in_menu' => true,
       'show_in_nav_menus' => true,
       'publicly_queryable' => true,
       'exclude_from_search' => true,
       'has_archive' => true,
       'query_var' => true,
       'can_export' => true,
       'supports' => array('title', 'editor', 'thumbnail'),
       'rewrite' =>  array( 
			'slug' => 'travel-money-providers', 
			'with_front' => true,
			),
       'capability_type' => 'post'
   );

   register_post_type( 'providers', $args );
}

//SPECIAL OFFERS

add_action( 'init', 'wdc_special_offer_init' );
function wdc_special_offer_init() {

   $labels = array( 
       'name' => 'Special Offers',
       'singular_name' => 'Special Offer',
       'add_new' => 'Add New',
       'add_new_item' => 'Add New Offer',
       'edit_item' => 'Edit Offer',
       'new_item' => 'New Offer',
       'view_item' => 'View Offers',
       'search_items' => 'Search Offers',
       'not_found' => 'No Offers found',
       'not_found_in_trash' => 'No Offers found in Trash',
       'parent_item_colon' => 'Parent Offer:',
       'menu_name' => 'Special Offers',
   );

   $args = array( 
       'labels' => $labels,
       'hierarchical' => false,
       'menu_icon' => 'dashicons-awards',
       'public' => true,
       'show_ui' => true,
       'show_in_menu' => true,
       'show_in_nav_menus' => true,
       'publicly_queryable' => true,
       'exclude_from_search' => true,
       'has_archive' => false,
       'query_var' => true,
       'can_export' => true,
       'supports' => array('title'),
       'rewrite' =>  array( 
			'slug' => 'special-offers', 
			'with_front' => false,
			),
       'capability_type' => 'post'
   );

   register_post_type( 'special-offers', $args );
}

// CURRENCY GUIDES
add_action( 'init', 'wdc_currency_guides_init' );
function wdc_currency_guides_init() {

   $labels = array( 
       'name' => 'Currency Guides',
       'singular_name' => 'Currency Guide',
       'add_new' => 'Add New',
       'add_new_item' => 'Add New Guide',
       'edit_item' => 'Edit Guide',
       'new_item' => 'New Guide',
       'view_item' => 'View Guides',
       'search_items' => 'Search Guides',
       'not_found' => 'No Guides found',
       'not_found_in_trash' => 'No Guides found in Trash',
       'parent_item_colon' => 'Parent Guide:',
       'menu_name' => 'Currency Guides',
   );

   $args = array( 
       'labels' => $labels,
       'hierarchical' => false,
       'menu_icon' => 'dashicons-analytics',
       'public' => true,
       'show_ui' => true,
       'show_in_menu' => true,
       'show_in_nav_menus' => true,
       'publicly_queryable' => true,
       'exclude_from_search' => true,
       'has_archive' => true,
       'query_var' => true,
       'can_export' => true,
       'supports' => array('title', 'thumbnail'),
       'rewrite' =>  array( 
            'slug' => 'currency-guides', 
            'with_front' => true,
        ),
       'capability_type' => 'post'
   );

   register_post_type( 'currency-guides', $args );
}