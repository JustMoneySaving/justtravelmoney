<?php
$id_attr = '';
$additional_class = 'results-single';
$header_title = __( 'Best Rate Travel Money', 'sage' );
$best_title = __( 'Best Travel Money Rate!', 'sage' );
$other_title = __( 'Other Travel Money Rates', 'sage' );

if ( is_page_template( 'template-homepage.php' ) || wp_doing_ajax() ) {
	$id_attr = 'id="homepage-results"';
	$additional_class = '';
	if ( isset( $_GET['currency-amount'] ) && isset( $_GET['currency'] ) ) {
		$additional_class .= ' results-loaded';
		$feeds = new \jtm\Currencies();
		$currency = $_GET['currency'];
		$value = $_GET['currency-amount'];
		$exchange_results = $feeds->exchange( $currency, $value );
		$currency_array = \Roots\Sage\Setup\jtm_get_currency_array();
		$currency_record = array_search( $currency, array_column( $currency_array, 'value' ), true );
		$currency_name = $currency_array[ $currency_record ]['plural'];
	}
};
if ( is_singular( 'currency-guides' ) ) {
	$currenct_name = rwmb_meta( 'WDC_currenct_name' );
	$header_title = 'Compare ' . $currenct_name . ' Exchange Rates';
	$best_title = 'Best ' . $currenct_name . ' Exchange Rate!';
	$other_title = 'Other ' . $currenct_name . ' Exchange Rates';

	$feeds = new \jtm\Currencies();
	$currency = rwmb_meta( 'WDC_currency_symbol' );
	$value = 500;
	if ( ! $currency ) {
		$exchange_results = null;
	} else {
		$exchange_results = $feeds->exchange( $currency, $value );
		$currency_array = \Roots\Sage\Setup\jtm_get_currency_array();
		$currency_record = array_search( $currency, array_column( $currency_array, 'value' ), true );
		$currency_name = $currency_array[ $currency_record ]['plural'];
	}
}

$num_results = count( $exchange_results );

// Get data for best option
$line_data = null !== $exchange_results ? array_shift( $exchange_results ) : null;

?>

<section class="homepage-section result-section <?php echo esc_attr( $additional_class ); ?>" <?php echo $id_attr; ?>>
	<div class="container">
		<div class="exchange-results">
			<header class="main-header">
				<div class="header-square">
					<div class="square-inner">
						<span class="number"><?php echo esc_html( $num_results ); ?></span>
						<?php _e( 'Rates Found', 'sage' ); ?>
						<span class="completeness">100% <?php _e( 'Complete', 'sage' ); ?></span>
					</div>
				</div>
				<div class="header-content">
					<h2><?php echo $header_title; ?></h2>
					<p>We’ve compared the rates of <strong>British Pounds (GBP)</strong> to <strong><?php echo $currency_name; ?> (<?php echo $currency; ?>)</strong><br>
					At the best rate, <strong><?php echo $value; ?> Pounds</strong> buys you <strong><?php echo esc_attr( $line_data['you_get'] ); ?> <?php echo $currency; ?></strong> from <strong><?php echo esc_attr( $line_data['name'] ); ?></strong></p>
				</div>
			</header>

			<h2 class="best"><?php echo $best_title; ?></h2>
			<?php
			/**
			 * Result box needs to have "best" or "other" class
			 */

			$line_class = 'best';
			include( locate_template( array( 'templates/results-line.php' ) ) );
			?>

			<?php get_template_part( 'templates/sponsored', 'provider' ); ?>

			<?php if ( count( $exchange_results ) >= 1 ) { ?>

			<h2 class="other"><?php echo $other_title; ?></h2>

			<?php
			$line_class = 'other';
			foreach ( $exchange_results as $line_data ) {
				include( locate_template( array( 'templates/results-line.php' ) ) );
			}
			?>

			<?php } ?>
		</div>
	</div>
</section>
