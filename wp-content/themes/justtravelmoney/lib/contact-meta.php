<?php
add_action( 'admin_init', 'rw_contact_register_meta_boxes' );
function rw_contact_register_meta_boxes()
{
$prefix = 'WDC_';
$meta_boxes = array();


// FACT BOX
$meta_boxes[] = array(
	'title' => 'Quick Links',
	'pages' => array( 'page' ),
	'fields' => array(
	    array(
			'name'  => 'Quick links content',
			'id'    => "{$prefix}quick_links",
			'desc'  => '',
			'type'  => 'wysiwyg',
			'options' => array(
				'media_buttons' => false,
				'textarea_rows' => 5
			),
		),
	),
);
	

if ( ! rw_contact_page_only() )
		return;

	foreach ( $meta_boxes as $meta_box ){
		new RW_Meta_Box( $meta_box );
	}

}

function rw_contact_page_only()
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
	$checked_templates = array( 'template-contact.php');

	$template = get_post_meta( $post_id, '_wp_page_template', true );
	
	if ( in_array( $template, $checked_templates ) )
		return true;

	// If no condition matched
	return false;
}
?>