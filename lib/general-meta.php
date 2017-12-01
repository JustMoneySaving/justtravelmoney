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


return $meta_boxes;
}?>