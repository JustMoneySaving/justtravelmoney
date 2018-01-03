<?php

namespace jtm;

if ( ! class_exists( __NAMESPACE__ . '/Currencies' ) ) {
	class Currencies {
		/**
		 * Array of currencies covered against each provider
		 * @var array
		 */
		var $currencies;

		public function __construct( $refresh = false ) {
			$this->currencies = $this->get_feeds( $this->get_urls( $refresh ), $refresh );
		}

		private function get_feeds( $feed_urls = null, $refresh_cache = false ) {
			if ( null === $feed_urls ) {
				return false;
			}

			$currencies = get_transient( 'jtml_currency_rates' );
			if ( ! $currencies || $refresh_cache ) {
				$currencies = array();
				foreach ( $feed_urls as $post_id => $feed_url ) {
					$feed_result = wp_remote_get( $feed_url );
					if ( is_wp_error( $feed_result ) ) {
						die;
					}
					$data = json_decode( $feed_result['body'] );
					if ( isset( $data->result->extractorData ) ) {
						$rates = $data->result->extractorData->data[0]->group;
						foreach ( $rates as $rate ) {
							$code = $rate->Currency[0]->text; // @codingStandardsIgnoreLine
							$currencies[ $code ][ $post_id ] = array(
								'rate' => $rate->{'Standard Sell Rate'}[0]->text,
							);
						}
					} else {
						$rates = $data->currencies[0]->currencies;
						foreach ( $rates as $rate ) {
							$code = $rate->details->code;
							$currencies[ $code ][ $post_id ] = array(
								'rate' => $rate->storeRate->rate, // @codingStandardsIgnoreLine
							);
						}
					}

					set_transient( 'jtml_currency_rates', $currencies, DAY_IN_SECONDS );
				}
			}
			return $currencies;
		}

		private function get_urls( $refresh_cache = false ) {
			$urls = get_transient( 'jtml_currency_feed_urls' );
			if ( ! $urls || $refresh_cache ) {
				$args = array(
					// Type & Status Parameters
					'post_type'   => 'providers',
					'post_status' => 'publish',

					// Pagination Parameters
					'nopaging'               => true,

					// Parameters relating to caching
					'no_found_rows'          => true,
					'cache_results'          => true,
					'update_post_term_cache' => false,
					'update_post_meta_cache' => false,

					'fields'                 => 'ids',

				);

				$query = new \WP_Query( $args );
				$urls = array();

				foreach ( $query->posts as $post_id ) {
					$url = rwmb_meta( 'WDC_feed_url', null, $post_id );
					if ( $url ) {
						$urls[ $post_id ] = $url;
					}
				}
				set_transient( 'jtml_currency_feed_urls', $urls, DAY_IN_SECONDS );
			}

			return $urls;
		}

		public function exchange( $currency = null, $value = 0 ) {
			// Return false if currency and/or value are not set
			if ( null === $currency || 0 === $value || ! is_numeric( $value ) ) {
				return false;
			}

			// Return false if there are no rates stored for currency
			if ( ! isset( $this->currencies[ $currency ] ) ) {
				return false;
			}

			// Ensure currency is uppercase
			$currency = strtoupper( $currency );

			// Extract rates for selected currency
			$rates = $this->currencies[ $currency ];

			$results = array();
			foreach ( $rates as $id => $rate ) {

				// Get logo URL
				$provider_logo = rwmb_meta( 'WDC_provider_logo', null, $id );
				if ( ! empty( $provider_logo ) ) {
					foreach ( $provider_logo as $logo ) {
						$provider_logo_url = $logo['full_url'];
					}
				} else {
					$provider_logo_url = 'http://placehold.it/160x125/';
				}

				$results[ $id ] = array(
					'logo'     => $provider_logo_url,
					'name'     => get_the_title( $id ),
					'you_get'  => round( $value * $rate['rate'], 2 ),
					'rate'     => $rate['rate'],
					'delivery' => 'FREE',
					'url'      => rwmb_meta( 'WDC_about_provider_affiliate_url', null, $id ) ?: rwmb_meta( 'WDC_about_provider_url', null, $id ),
					'usp'      => rwmb_meta( 'WDC_about_provider_usp', null, $id ),
				);

				foreach ( $results as $id => $result ) {
					$you_get[ $id ] = $result['you_get'];
				}

				array_multisort( $you_get, SORT_DESC, $results );
			}

			return $results;
		}
	}
}
