<?php

namespace jtm;

if ( ! class_exists( __NAMESPACE__ . '/Cron' ) ) {
	class Cron {
		public function __construct() {
		}

		public function add_actions() {
			// add_action( 'jtm_hourly_tasks',  'refresh_currencies' );
		}

		public function schedule_events() {
			if ( ! wp_next_scheduled( 'jtm_refresh_currencies' ) ) {
				// Get next full hour
				$now = time();
				$next_hour = date( 'U', $now + (3600 - $now % 3600) );
				wp_schedule_event( $next_hour, 'hourly', 'jtm_refresh_currencies' );
			}
		}

		public function refresh_currencies() {
			// Fetch new currencies from feeds
			$currencies = new Currencies( true );

			// Refresh provider tables
			$args = array(
				'post_type'   => 'provider',
				'post_status' => 'publish',
				'nopaging'               => true,
				'no_found_rows'          => true,
				'cache_results'          => true,
				'update_post_term_cache' => true,
				'update_post_meta_cache' => true,
			);

			$query = new WP_Query( $args );

			if ( $query->have_posts() ) {
				while ( $query->have_posts() ) {
					$query->the_post();
					$currencies->provider( $query->post_ID, true );
				}
			}
		}
	}

	$cron = new Cron();
	$cron->schedule_events();
}
