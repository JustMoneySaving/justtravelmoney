<?php
$currencies = new \jtm\Currencies();
$exchange_results = $currencies->provider(get_the_id(), true);
$hero_title = get_the_title();
$hero_title_meta = rwmb_meta( 'WDC_provider_hero_title', array(), get_the_id() );
//Meta
$website_url = rwmb_meta( 'WDC_about_provider_url', array(), get_the_id() );
$affiliate_url = rwmb_meta( 'WDC_about_provider_affiliate_url', array(), get_the_id() );

$buy_now_url = $website_url;
if($affiliate_url){
    $buy_now_url = $affiliate_url;
}

if($hero_title_meta){
    $hero_title = $hero_title_meta;
}
if($exchange_results): ?>

<div class="compare-rates">

    <header>
        <h3>Latest <?php echo $hero_title;?> Rates</h3>
        <span class="update_time">(59:43 Until Next Update)</span>
    </header>

    <table id="currency-comparison-list" class="table">
        <tr class="nobg">
            <th class="currency"><?php _e('Currency', 'sage');?></th>
            <th class="exchange-rate"><?php _e('<span class="no-mobile">Exchange </span>Rate', 'sage');?></th>
            <th class="you-get"><?php _e('&pound; 100 Buys', 'sage');?></th>
            <th class="action"></th>
        </tr>

        <?php
        $i = 0;
        foreach($exchange_results as $name => $exchange){ 
            $i++;
            $currency_name = $name;
            $exchange_int = floatval($exchange);
            $hundred_pounds_buys = 100 * $exchange_int;
            $currency_plural = \Roots\Sage\Setup\jtm_get_currency_name($currency_name);
            $row_class = 'tr';
            if($i > 6){
                $row_class = 'tr noshow';
            }
        ?>

        <tr class="<?php echo $row_class;?>">
            <td class="currency"><div><span class="name"><?php echo $currency_plural;?></span> <span class="iso"><?php echo $currency_name;?></span></div></td>
            <td class="exchange-rate"><div><?php echo $exchange_int;?></div></td>
            <td class="you-get"><div><?php echo $hundred_pounds_buys.' <span class="iso">('.$currency_name.')</span>';?></div></td>
            <td class="action"><a href="<?php echo $buy_now_url;?>" class="btn btn-secundary"><?php _e('Buy Now', 'sage');?></a></td>
        </tr>
        
        <?php } ?>
    </table>
    <div class="show-all-results">
        <a href="#" id="show-all-exchange-results"><?php _e('View All Rates', 'sage');?></a>
    </div>
</div>
<?php endif; ?>