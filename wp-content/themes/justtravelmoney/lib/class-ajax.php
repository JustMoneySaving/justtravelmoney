<?php

namespace jtm;

if ( ! class_exists( __NAMESPACE__ . '/Ajax' ) ) {
	class Ajax {
		public function __construct() {
			$this->add_actions();
		}

		private function add_actions() {
			add_action( 'wp_ajax_update_currencies', array( $this, 'update_currencies' ) );
			add_action( 'wp_ajax_exchange', array( $this, 'exchange' ) );
		}

		public function update_currencies() {
			if ( isset( $_POST['refresh'] ) ) {
				$refresh = 'true' === $_POST['refresh'] ? true : false;
			} else {
				$refresh = false;
			}

			// Get feeds but bypass cache
			$feeds = new \jtm\Currencies( $refresh );

			wp_die();
		}

		public function exchange() {
			if ( isset( $_POST['currency'] ) && isset( $_POST['value'] ) && is_numeric( $_POST['value'] ) ) {
				$feeds = new \jtm\Currencies();
				$currency = $_POST['currency'];
				$value = $_POST['value'];
				$exchange_results = $feeds->exchange( $currency, $value );
				$currency_array = \Roots\Sage\Setup\jtm_get_currency_array();
				$currency_record = array_search( $currency, array_column( $currency_array, 'value' ), true );
				$currency_name = $currency_array[ $currency_record ]->plural;
				include( locate_template( array( 'templates/results.php' ) ) );
			} else {
				return false;
			}
			wp_die();
		}
	}
	$jtm_ajax = new Ajax();
}
