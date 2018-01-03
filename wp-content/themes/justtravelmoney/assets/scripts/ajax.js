(function($) {
	// Refresh currency tables
	$('#jtm_currency-update').on('click', function(event) {
		event.preventDefault();

		// Buffer button
		$trigger_container = $(this).parent();

		var data = {
			'action' : 'update_currencies',
			'refresh': 'true'
		};

		$trigger_container.html('<em>Updating...</em>');

		jQuery.post(ajaxurl, data, function(response) {
			$trigger_container.html('<em>Currency tables updated</em>');
			console.log(response);
		});
	});
}(jQuery));
