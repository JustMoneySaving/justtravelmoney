<?php
add_filter( 'rwmb_meta_boxes', 'WDC_register_meta_boxes' );

/**
 * Register meta boxes
 *
 * @return void
 */
function WDC_register_meta_boxes( $meta_boxes ){
	
$prefix = 'WDC_';

// HERO
$meta_boxes[] = array(
	'title' => 'Page Hero',
	'pages' => array( 'page' ),
	'fields' => array(
	
		array(
			'name'  => 'Hero title',
			'id'    => "{$prefix}page_hero_title",
			'desc'  => '',
			'type'  => 'text',
			'std'   =>  '',
		),
	
	    array(
			'name'  => 'Hero Content',
			'id'    => "{$prefix}page_hero_content",
			'desc'  => '',
			'type'  => 'wysiwyg',
			'options' => array(
				'media_buttons' => false,
				'textarea_rows' => 5
			),
		),
	),
);

// HERO
$meta_boxes[] = array(
	'title' => 'Post Hero',
	'pages' => array( 'post' ),
	'fields' => array(    
        array(
            'name'  => 'Hero Image',
            'id'    => "{$prefix}post_hero_image",					
            'desc'  => '1920 width',
            'type'  => 'image_advanced',
            'max_file_uploads' => 1,
        ),
	),
);


// HERO
$meta_boxes[] = array(
	'title' => 'Provider Hero',
	'pages' => array( 'providers' ),
	'fields' => array(

		array(
			'name'  => 'Hero title',
			'id'    => "{$prefix}provider_hero_title",
			'desc'  => '',
			'type'  => 'text',
			'std'   =>  '',
		),
	
	    array(
			'name'  => 'Hero Content',
			'id'    => "{$prefix}provider_hero_content",
			'desc'  => '',
			'type'  => 'wysiwyg',
			'options' => array(
				'media_buttons' => false,
				'textarea_rows' => 5
			),
		),
	),
);

// HERO
$meta_boxes[] = array(
	'title' => 'Provider Logo',
	'pages' => array( 'providers' ),
	'context' => 'side',
	'fields' => array(
        array(
            'name'  => 'Provider Logo',
            'id'    => "{$prefix}provider_logo",					
            'desc'  => '',
            'type'  => 'image_advanced',
            'max_file_uploads' => 1,
        ),
	),
);



// ARTICLE TITLE
$meta_boxes[] = array(
	'title' => 'Article Header Override',
	'pages' => array( 'providers' ),
	'fields' => array(
        array(
            'name'  => 'Article Header Title',
            'id'    => "{$prefix}provider_header_title",					
            'desc'  => '',
			'type'  => 'text',
		),

		array(
            'name'  => 'Article Header Subtitle',
            'id'    => "{$prefix}provider_header_subtitle",					
            'desc'  => '',
			'type'  => 'text',
		),
		
		array(
            'name'  => 'Header image',
            'id'    => "{$prefix}provider_header_image",					
            'desc'  => '200x120',
            'type'  => 'image_advanced',
            'max_file_uploads' => 1,
        ),
	),
);

// ARTICLE VIDEO
$meta_boxes[] = array(
	'title' => 'Article Video',
	'pages' => array( 'providers' ),
	'fields' => array(
        array(
            'name'  => 'YouTube Video ID',
            'id'    => "{$prefix}provider_video_id",					
            'desc'  => '',
			'type'  => 'text',
		),
	),
);


// ABOUT PROVIDER
$meta_boxes[] = array(
	'title' => 'About Provider',
	'pages' => array( 'providers' ),
	'fields' => array(
	    array(
			'name'  => 'About Content',
			'id'    => "{$prefix}about_provider",
			'desc'  => '',
			'type'  => 'wysiwyg',
			'options' => array(
				'media_buttons' => false,
				'textarea_rows' => 5
			),
		),

		array(
			'name'  => 'Website URL',
			'id'    => "{$prefix}about_provider_url",
			'desc'  => 'must contain http:// or https://',
			'type'  => 'text',
		),
	),
);

// FACT BOX
$meta_boxes[] = array(
	'title' => 'Fact Box',
	'pages' => array( 'providers' ),
	'fields' => array(
	    array(
			'name'  => 'Fact Box Content',
			'id'    => "{$prefix}provider_fact_box",
			'desc'  => '',
			'type'  => 'wysiwyg',
			'options' => array(
				'media_buttons' => false,
				'textarea_rows' => 5
			),
		),
	),
);


// FAQ Category
$meta_boxes[] = array(
	'title' => 'FAQ Category',
	'pages' => array( 'providers' ),
	'fields' => array(
		array(
			'name' => __( 'Select FAQ Category', 'wdc' ),
			'id'   => "{$prefix}faq_cat",
			'type' => 'taxonomy_advanced',
			'taxonomy' => 'faq_category',
			'field_type' => 'select',
			'query_args' => array(
				'hide_empty' => false,
			),
			'desc' => 'Please select an industry category related to this page', 
			'std' => ''
		),
	),
);


// OFFERS
$meta_boxes[] = array(
	'title' => 'Offer Details',
	'pages' => array( 'special-offers' ),
	'fields' => array(

		array(
			'name'  => 'Offer Active',
			'id'    => "{$prefix}offer_active",
			'desc'  => '',
			'type'  => 'checkbox',
			'std' => '1'
		),

		array(
			'name' => __( 'Offer provider', 'wdc' ),
			'id'   => "{$prefix}offer_provider",
			'type' => 'post',
			'post_type' => 'providers',
			'field_type' => 'select_advanced',
			'placeholder' => 'Select a provider',
			'query_args'  => array(
				'post_status'    => 'publish',
				'posts_per_page' => - 1,
			),
			'desc' => 'Please select a parent provider', 
			'std' => ''
		),

		array(
			'name'  => 'Offer Desc',
			'id'    => "{$prefix}offer_desc",
			'desc'  => '',
			'type'  => 'text',
			'clone' => true
		),

	    array(
			'name'  => 'Offer Copy',
			'id'    => "{$prefix}offer_copy",
			'desc'  => 'use Heading 3 for title',
			'type'  => 'wysiwyg',
			'options' => array(
				'media_buttons' => false,
				'textarea_rows' => 5
			),
		),

		array(
			'name'  => 'Offer URL',
			'id'    => "{$prefix}offer_url",
			'desc'  => 'must contain http:// or https:// | Leave blank to lead to provider page',
			'type'  => 'text',
		),
	),
);

// ABOUT PROVIDER
$meta_boxes[] = array(
	'title' => 'Offer Content for Travel Money Providers',
	'pages' => array( 'special-offers' ),
	'fields' => array(
	    array(
			'name'  => 'Highlight Copy',
			'id'    => "{$prefix}highlight_copy",
			'desc'  => '',
			'type'  => 'wysiwyg',
			'options' => array(
				'media_buttons' => false,
				'textarea_rows' => 5
			),
		),
	),
);


// CURRENCY GUIDE SETUP
$meta_boxes[] = array(
	'title' => 'Currency Guide Setup',
	'pages' => array( 'currency-guides' ),
	'fields' => array(
		array(
			'name'  => 'Currency Name',
			'id'    => "{$prefix}currenct_name",
			'desc'  => 'this will appear in title sections',
			'type'  => 'text',
			'std'   =>  '',
		),

		array(
            'name'  => 'Currency Logo',
            'id'    => "{$prefix}currency_logo",					
            'desc'  => '160x125',
            'type'  => 'image_advanced',
            'max_file_uploads' => 1,
        ),
	),
);

// CURRENCY GUIDE HERO
$meta_boxes[] = array(
	'title' => 'Currency Guide Hero',
	'pages' => array( 'currency-guides' ),
	'fields' => array(

		array(
			'name'  => 'Hero title',
			'id'    => "{$prefix}guide_hero_title",
			'desc'  => '',
			'type'  => 'text',
			'std'   =>  '',
		),
	
	    array(
			'name'  => 'Hero Content',
			'id'    => "{$prefix}guide_hero_content",
			'desc'  => '',
			'type'  => 'wysiwyg',
			'options' => array(
				'media_buttons' => false,
				'textarea_rows' => 5
			),
		),
	),
);

// CURRENCY GUIDE CONTENT REPEATER
$meta_boxes[] = array(
	'title' => 'Section Repeater',
	'pages' => array( 'currency-guides' ),
	'fields' => array(
		array(
			'name' => 'Currency Guide Section', // Optional
			'id' => 'guide_section',
			'type' => 'group',
			'clone' => true,
			'fields' => array(
				array(
					'name'  => 'Section Title',
					'id'    => "{$prefix}section_title",
					'desc'  => '',
					'type'  => 'text',
				),

				array(
					'name'  => 'Section Content',
					'id'    => "{$prefix}section_content",
					'desc'  => '',
					'type'  => 'wysiwyg',
					'options' => array(
						'media_buttons' => true,
						'textarea_rows' => 5
					),
				),
			),
		),
	),
);

// CURRENCY GUIDE SIDEBAR REPEATER
$meta_boxes[] = array(
	'title' => 'Sidebar Repeater',
	'pages' => array( 'currency-guides' ),
	'fields' => array(
		array(
			'name' => 'Currency Guide Sidebar Item', // Optional
			'id' => 'guide_sidebar',
			'type' => 'group',
			'clone' => true,
			'fields' => array(
				array(
					'name'  => 'Sidebar Title',
					'id'    => "{$prefix}sidebar_title",
					'desc'  => '',
					'type'  => 'text',
				),

				array(
					'name'  => 'Sidebar Content',
					'id'    => "{$prefix}sidebar_content",
					'desc'  => '',
					'type'  => 'wysiwyg',
					'options' => array(
						'media_buttons' => true,
						'textarea_rows' => 5
					),
				),
			),
		),
	),
);



return $meta_boxes;
}?>