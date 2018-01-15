<?php
	$line_class = ( null !== $line_class ? $line_class : 'other' );
?>
			<div class="result-box <?php echo esc_attr( $line_class ); ?>">
				<div class="provider-image">
					<a href="<?php echo esc_attr( $line_data['url'] ); ?>">
						<img src="<?php echo esc_attr( $line_data['logo'] ); ?>" alt="<?php echo esc_attr( $line_data['name'] ); ?>">
					</a>
				</div> <!-- provider-image -->

				<div class="result-content">
					<div class="title">
						<h3><a href="<?php echo esc_attr( $line_data['url'] ); ?>"><?php echo esc_attr( $line_data['name'] ); ?></a></h3>
						<?php if ( 'best' === $line_class ) { ?>
						<p><?php _e( 'Quick, get this best available rate', 'sage' ); ?></p>
						<?php } ?>
					</div>

					<div class="result-info">
							<div class="amount">
								<div class="vm">
									You Get <span><?php echo esc_attr( number_format( $line_data['you_get'], 2 ) ); ?> <?php echo esc_attr( $currency ); ?></span>
								</div>
							</div>
							<div class="rate">
								<div class="vm">
									Exchange Rate <span><?php echo esc_attr( $line_data['rate'] ); ?></span>
								</div>
							</div>
							<div class="delivery">
								<div class="vm">
									<?php echo esc_attr( $line_data['usp'] ); ?>
								</div>
							</div>
						</div>
					<div class="btn-holder">
						<div class="inner">
							<div class="vm">
								<a href="<?php echo esc_attr( $line_data['url'] ); ?>" class="btn"><?php _e( 'Visit & Exchange!', 'sage' ); ?></a>
							</div>
						</div>
					</div>
				</div> <!-- result-content -->
			</div><!-- result-box other -->
