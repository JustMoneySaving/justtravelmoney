<?php
//Arrow CTA line
function wdc_arrow_cta_shortcode( $atts, $content = "" ) {
    $atts = shortcode_atts( 
        array(
            'arrow' => '',
        ), 
    $atts, 'wdc_arrow_cta' );
    $arrow_class = '';

    if(!empty($atts['arrow']) && $atts['arrow'] =='yes'){
        $arrow_class = 'has-arrow';
    }

    $html = '';
    $html .='<div class="arrow-cta '.$arrow_class.'">';
    $html .=''.$content.'
    </div>';
    
return $html;
}
add_shortcode( 'wdc_arrow_cta', 'wdc_arrow_cta_shortcode' );


// CONVERSION BOX
function wdc_conversion_box_shortcode( $atts ) {

    $html = '';
    $html .='<div class="conversion-box slanted">
    <div class="box-inner">
        <header>
            <h2>Compare Travel Money</h2>
        </header>

        <form>
            <div class="form-group">
                <label for="currency-amount">AMOUNT TO CONVERT</label>
                <input type="text" id="currency-amount" name="currency-amount" placeholder="e.g £500.00" />
            </div>

            <div class="form-group">
                <label>CURRENCY YOU WANT</label>
                <input type="text" name="currency" autocomplete="off" />
            </div>

            <div class="form-group">
                <label for="email-address">YOUR EMAIL ADDRESS</label>
                <input type="email" name="email-address" id="email-address" />
            </div>

            <div class="form-group submit-form">
                <input type="submit" class="btn btn-primary" id="submit-conversion" value="Compare The Rates!" />
            </div>

        </form>
    </div>
    </div>';
    
return $html;
}
        
add_shortcode( 'conversion_box', 'wdc_conversion_box_shortcode' );
?>