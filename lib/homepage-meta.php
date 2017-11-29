<?php
add_action( 'admin_init', 'rw_home_register_meta_boxes' );
function rw_home_register_meta_boxes()
{
$prefix = 'WDC_';
$meta_boxes = array();

// HERO
$meta_boxes[] = array(
	'title' => 'Hero Section ',
	'pages' => array( 'page' ),
	'fields' => array(
	
		array(
			'name'  => 'Hero title',
			'id'    => "{$prefix}hero_title",
			'desc'  => '',
			'type'  => 'text',
			'std'   =>  '',
		),
	
	    array(
			'name'  => 'Hero Content',
			'id'    => "{$prefix}hero_content",
			'desc'  => '',
			'type'  => 'wysiwyg',
			'options' => array(
				'media_buttons' => false,
				'textarea_rows' => 5
			),
		),

		array(
			'name'  => 'Provider Logos',
			'id'    => "{$prefix}hero_logos",					
			'desc'  => '75x75',
			'type'  => 'image_advanced',
		),
	),
);

// SECTION 1
$meta_boxes[] = array(
	'title' => 'Section 1 ',
	'pages' => array( 'page' ),
	'fields' => array(
	
		array(
			'name'  => 'Section title',
			'id'    => "{$prefix}section_1_title",
			'desc'  => '',
			'type'  => 'text',
			'std'   =>  '',
		),
	
	    array(
			'name'  => 'Section Content',
			'id'    => "{$prefix}section_1_content",
			'desc'  => '',
			'type'  => 'wysiwyg',
			'options' => array(
				'media_buttons' => false,
				'textarea_rows' => 5
			),
		),
		
		array(
			'name'  => 'Youtube Video ID',
			'id'    => "{$prefix}section_1_video_id",
			'desc'  => '',
			'type'  => 'text',
			'std'   =>  '',
		),
	),
);

//SECTION 2
$meta_boxes[] = array(
	'title' => 'Section 2 ',
	'pages' => array( 'page' ),
	'fields' => array(
	
		array(
			'name'  => 'Section title',
			'id'    => "{$prefix}section_2_title",
			'desc'  => '',
			'type'  => 'text',
			'std'   =>  '',
		),
	
	    array(
			'name'  => 'Section Content',
			'id'    => "{$prefix}section_2_content",
			'desc'  => '',
			'type'  => 'wysiwyg',
			'options' => array(
				'media_buttons' => false,
				'textarea_rows' => 5
			),
		),

		array(
			'name'  => 'Section Image',
			'id'    => "{$prefix}section_2_image",					
			'desc'  => '400x200 recommended',
			'type'  => 'image_advanced',
			'max_file_uploads' => 1,
		),

	),
);

//SECTION 3
$meta_boxes[] = array(
	'title' => 'Section 3',
	'pages' => array( 'page' ),
	'fields' => array(
		array(
			'name'  => 'Section 3 title',
			'id'    => "{$prefix}section_3_title",
			'desc'  => '',
			'type'  => 'text',
			'std'   =>  '',
		),

		array(
			'name'  => 'Divider',
			'id'    => "divider1",
			'type'  => 'divider',
		),
	
        //Box 1
        array(
            'name' => 'Box 1',
            'id' => 's3_box_1',
			'type' => 'group',
			'columns' => 4,
			'clone' => false,
            'fields' => array(
                array(
                    'name'  => 'Box Title',
                    'id'    => "{$prefix}box1_title",
                    'desc'  => '',
                    'type'  => 'text',
                    'std'   =>  '',
				),
				array(
					'name'  => 'Box Content',
					'id'    => "{$prefix}box1_content",
					'desc'  => '',
					'type'  => 'wysiwyg',
					'options' => array(
						'media_buttons' => false,
						'textarea_rows' => 5
					),
				),
            ),
		),
		
		//Box 2
        array(
            'name' => 'Box 2',
            'id' => 's3_box_2',
			'type' => 'group',
			'columns' => 4,
			'clone' => false,
            'fields' => array(
                array(
                    'name'  => 'Box Title',
                    'id'    => "{$prefix}box2_title",
                    'desc'  => '',
                    'type'  => 'text',
                    'std'   =>  '',
				),
				array(
					'name'  => 'Box Content',
					'id'    => "{$prefix}box2_content",
					'desc'  => '',
					'type'  => 'wysiwyg',
					'options' => array(
						'media_buttons' => false,
						'textarea_rows' => 5
					),
				),
            ),
		),
		
		//Box 3
        array(
            'name' => 'Box 3',
            'id' => 's3_box_3',
			'type' => 'group',
			'columns' => 4,
			'clone' => false,
            'fields' => array(
                array(
                    'name'  => 'Box Title',
                    'id'    => "{$prefix}box3_title",
                    'desc'  => '',
                    'type'  => 'text',
                    'std'   =>  '',
				),
				array(
					'name'  => 'Box Content',
					'id'    => "{$prefix}box3_content",
					'desc'  => '',
					'type'  => 'wysiwyg',
					'options' => array(
						'media_buttons' => false,
						'textarea_rows' => 5
					),
				),
            ),
        ),
	),
);

// SECTION 4
$meta_boxes[] = array(
	'title' => 'Section 4',
	'pages' => array( 'page' ),
	'fields' => array(

		//Box 1
        array(
            'name' => 'Box 1',
            'id' => 's4_box_1',
			'type' => 'group',
			'columns' => 3,
			'clone' => false,
            'fields' => array(

				array(
                    'name'  => 'Box Image',
                    'id'    => "{$prefix}box1_image",					
					'desc'  => '215x118 or same proportion',
					'type'  => 'image_advanced',
					'max_file_uploads' => 1,
				),

                array(
                    'name'  => 'Box Title',
                    'id'    => "{$prefix}box1_title",
                    'desc'  => '',
                    'type'  => 'text',
                    'std'   =>  '',
				),				
            ),
		),

		//Box 2
        array(
            'name' => 'Box 2',
            'id' => 's4_box_2',
			'type' => 'group',
			'columns' => 3,
			'clone' => false,
            'fields' => array(

				array(
                    'name'  => 'Box Image',
                    'id'    => "{$prefix}box2_image",					
					'desc'  => '215x118 or same proportion',
					'type'  => 'image_advanced',
					'max_file_uploads' => 1,
				),

                array(
                    'name'  => 'Box Title',
                    'id'    => "{$prefix}box2_title",
                    'desc'  => '',
                    'type'  => 'text',
                    'std'   =>  '',
				),				
            ),
		),
	
		//Box 2
        array(
            'name' => 'Box 3',
            'id' => 's4_box_3',
			'type' => 'group',
			'columns' => 3,
			'clone' => false,
            'fields' => array(

				array(
                    'name'  => 'Box Image',
                    'id'    => "{$prefix}box3_image",					
					'desc'  => '215x118 or same proportion',
					'type'  => 'image_advanced',
					'max_file_uploads' => 1,
				),

                array(
                    'name'  => 'Box Title',
                    'id'    => "{$prefix}box3_title",
                    'desc'  => '',
                    'type'  => 'text',
                    'std'   =>  '',
				),				
            ),
		),

		//Box 2
        array(
            'name' => 'Box 4',
            'id' => 's4_box_4',
			'type' => 'group',
			'columns' => 3,
			'clone' => false,
            'fields' => array(

				array(
                    'name'  => 'Box Image',
                    'id'    => "{$prefix}box4_image",					
					'desc'  => '215x118 or same proportion',
					'type'  => 'image_advanced',
					'max_file_uploads' => 1,
				),

                array(
                    'name'  => 'Box Title',
                    'id'    => "{$prefix}box4_title",
                    'desc'  => '',
                    'type'  => 'text',
                    'std'   =>  '',
				),				
            ),
		),
		
	),
);
	

if ( ! rw_homepage_only() )
		return;

	foreach ( $meta_boxes as $meta_box ){
		new RW_Meta_Box( $meta_box );
	}

}

function rw_homepage_only()
{
	// Include in back-end only
	if ( ! defined( 'WP_ADMIN' ) || ! WP_ADMIN )
		return false;

	// Always include for ajax
	if ( defined( 'DOING_AJAX' ) && DOING_AJAX )
		return true;
		

	// Check for post IDs

	if ( isset( $_GET['post'] ) )
		$post_id = $_GET['post'];
	elseif ( isset( $_POST['post_ID'] ) )
		$post_id = $_POST['post_ID'];
	else
		$post_id = false;

	$post_id = (int) $post_id;

	// Check for page template
	$checked_templates = array( 'template-homepage.php');

	$template = get_post_meta( $post_id, '_wp_page_template', true );
	
	if ( in_array( $template, $checked_templates ) )
		return true;

	// If no condition matched
	return false;
}
?>