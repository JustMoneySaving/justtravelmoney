<?php 
$id_attr = '';
$additional_class = 'results-single';
$header_title = __('Best Rate Travel Money', 'sage');
$best_title = __('Best Travel Money Rate!', 'sage');
$other_title = __('Other Travel Money Rates', 'sage');

if(is_page_template( 'template-homepage.php' )){
    $id_attr = 'id="homepage-results"';
    $additional_class = '';
};
if(is_singular('currency-guides')){
    $currenct_name = rwmb_meta( 'WDC_currenct_name' );
    $header_title = 'Compare '.$currenct_name.' Exchange Rates';
    $best_title = 'Best '.$currenct_name.' Exchange Rate!';
    $other_title = 'Other '.$currenct_name.' Exchange Rates';
}
?>

<section class="homepage-section result-section <?php echo $additional_class;?>" <?php echo $id_attr;?>>
    <div class="container">
        <div class="exchange-results">
            <header class="main-header">
                <div class="header-square">
                    <div class="square-inner">
                        <span class="number">10</span>
                        <?php _e('Rates Found', 'sage');?>
                        <span class="completeness">100% <?php _e('Complete', 'sage');?></span>
                    </div>
                </div>
                <div class="header-content">
                    <h2><?php echo $header_title;?></h2>
                    <p>We’ve compared the rates of <strong>British Pounds (GBP)</strong> to <strong>Dollars (USD)</strong><br>
                    At the best rate, <strong>500 Pounds</strong> buys you <strong>212 USD</strong> from <strong>Travelex</strong></p>
                </div>
            </header>

            <h2 class="best"><?php echo $best_title;?></h2>
            <?php /**
             * Result box needs to have "best" or "other" class
             */
            ?>
            <div class="result-box best">
                <div class="provider-image">
                    <a href="#">
                        <img src="http://placehold.it/160x120/" alt="alt">
                    </a>
                </div> <!-- provider-image -->

                <div class="result-content">
                    <div class="title">
                        <h3><a href="#">Travelex</a></h3>
                        <p><?php _e('Quick, get this best available rate', 'sage');?></p>
                    </div>

                    <div class="result-info">
                            <div class="amount">
                                <div class="vm">
                                    You Get <span>209 USD</span>
                                </div>
                            </div>
                            <div class="rate">
                                <div class="vm">
                                    Exchange Rate <span>1.1056</span>
                                </div>
                            </div>
                            <div class="delivery">
                                <div class="vm">
                                    Delivery <span>FREE</span>
                                </div>
                            </div>
                        </div>
                    <div class="btn-holder">
                        <div class="inner">
                            <div class="vm">
                                <a href="#" class="btn"><?php _e('Visit & Exchange!', 'sage');?></a>
                            </div>
                        </div>
                    </div>
                </div> <!-- result-content -->
            </div><!-- result-box other -->

            <?php get_template_part('templates/sponsored', 'provider');?>

            <h2 class="other"><?php echo $other_title;?></h2>

            <div class="result-box other">
                <div class="provider-image">
                    <a href="#">
                        <img src="http://placehold.it/160x120/" alt="alt">
                    </a>
                </div> <!-- provider-image -->

                <div class="result-content">
                    <div class="title">
                        <h3><a href="#">Post Office Money</a></h3>
                    </div>

                    <div class="result-info">
                            <div class="amount">
                                <div class="vm">
                                    <?php _e('You Get', 'sage');?> <span>209 USD</span>
                                </div>
                            </div>
                            <div class="rate">
                                <div class="vm">
                                    <?php _e('The Rate', 'sage');?> <span>1.1056</span>
                                </div>
                            </div>
                            <div class="delivery">
                                <div class="vm">
                                    <?php _e('Delivery', 'sage');?> <span>FREE</span>
                                </div>
                            </div>
                        </div>
                    <div class="btn-holder">
                        <div class="inner">
                            <div class="vm">
                                <a href="#" class="btn"><?php _e('Visit Anyway', 'sage');?></a>
                            </div>
                        </div>
                    </div>
                </div> <!-- result-content -->
            </div><!-- result-box other -->

            <div class="result-box other">
                <div class="provider-image">
                    <a href="#">
                        <img src="http://placehold.it/160x120/" alt="alt">
                    </a>
                </div> <!-- provider-image -->

                <div class="result-content">
                    <div class="title">
                        <h3><a href="#">Post Office Money</a></h3>
                    </div>

                    <div class="result-info">
                            <div class="amount">
                                <div class="vm">
                                    <?php _e('You Get', 'sage');?> <span>209 USD</span>
                                </div>
                            </div>
                            <div class="rate">
                                <div class="vm">
                                    <?php _e('The Rate', 'sage');?> <span>1.1056</span>
                                </div>
                            </div>
                            <div class="delivery">
                                <div class="vm">
                                    <?php _e('Delivery', 'sage');?> <span>FREE</span>
                                </div>
                            </div>
                        </div>
                    <div class="btn-holder">
                        <div class="inner">
                            <div class="vm">
                                <a href="#" class="btn"><?php _e('Visit Anyway', 'sage');?></a>
                            </div>
                        </div>
                    </div>
                </div> <!-- result-content -->
            </div><!-- result-box other -->

            <div class="result-box other">
                <div class="provider-image">
                    <a href="#">
                        <img src="http://placehold.it/160x120/" alt="alt">
                    </a>
                </div> <!-- provider-image -->

                <div class="result-content">
                    <div class="title">
                        <h3><a href="#">Post Office Money</a></h3>
                    </div>

                    <div class="result-info">
                            <div class="amount">
                                <div class="vm">
                                    <?php _e('You Get', 'sage');?> <span>209 USD</span>
                                </div>
                            </div>
                            <div class="rate">
                                <div class="vm">
                                    <?php _e('The Rate', 'sage');?> <span>1.1056</span>
                                </div>
                            </div>
                            <div class="delivery">
                                <div class="vm">
                                    <?php _e('Delivery', 'sage');?> <span>FREE</span>
                                </div>
                            </div>
                        </div>
                    <div class="btn-holder">
                        <div class="inner">
                            <div class="vm">
                                <a href="#" class="btn"><?php _e('Visit Anyway', 'sage');?></a>
                            </div>
                        </div>
                    </div>
                </div> <!-- result-content -->
            </div><!-- result-box other -->

            <div class="result-box other">
                <div class="provider-image">
                    <a href="#">
                        <img src="http://placehold.it/160x120/" alt="alt">
                    </a>
                </div> <!-- provider-image -->

                <div class="result-content">
                    <div class="title">
                        <h3><a href="#">Post Office Money</a></h3>
                    </div>

                    <div class="result-info">
                            <div class="amount">
                                <div class="vm">
                                    <?php _e('You Get', 'sage');?> <span>209 USD</span>
                                </div>
                            </div>
                            <div class="rate">
                                <div class="vm">
                                    <?php _e('The Rate', 'sage');?> <span>1.1056</span>
                                </div>
                            </div>
                            <div class="delivery">
                                <div class="vm">
                                    <?php _e('Delivery', 'sage');?> <span>FREE</span>
                                </div>
                            </div>
                        </div>
                    <div class="btn-holder">
                        <div class="inner">
                            <div class="vm">
                                <a href="#" class="btn"><?php _e('Visit Anyway', 'sage');?></a>
                            </div>
                        </div>
                    </div>
                </div> <!-- result-content -->
            </div><!-- result-box other -->

            <div class="result-box other">
                <div class="provider-image">
                    <a href="#">
                        <img src="http://placehold.it/160x120/" alt="alt">
                    </a>
                </div> <!-- provider-image -->

                <div class="result-content">
                    <div class="title">
                        <h3><a href="#">Post Office Money</a></h3>
                    </div>

                    <div class="result-info">
                            <div class="amount">
                                <div class="vm">
                                    <?php _e('You Get', 'sage');?> <span>209 USD</span>
                                </div>
                            </div>
                            <div class="rate">
                                <div class="vm">
                                    <?php _e('The Rate', 'sage');?> <span>1.1056</span>
                                </div>
                            </div>
                            <div class="delivery">
                                <div class="vm">
                                    <?php _e('Delivery', 'sage');?> <span>FREE</span>
                                </div>
                            </div>
                        </div>
                    <div class="btn-holder">
                        <div class="inner">
                            <div class="vm">
                                <a href="#" class="btn"><?php _e('Visit Anyway', 'sage');?></a>
                            </div>
                        </div>
                    </div>
                </div> <!-- result-content -->
            </div><!-- result-box other -->
        </div>
    </div>
</section>