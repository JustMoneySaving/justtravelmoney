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
?>