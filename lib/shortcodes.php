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
    $atts = shortcode_atts( 
        array(
            'label' => 'Compare The Rates!',
            'show_title' => '',
            'slanted' => 'yes',
            'placement' => ''
        ), 
    $atts, 'conversion_box' );
    $slanted_class = '';

    $label1 = __('AMOUNT TO CONVERT', 'sage');
    $label2 = __('CURRENCY YOU WANT', 'sage');
    $label3 = __('YOUR EMAIL ADDRESS', 'sage');
    $actions = '';

    if($atts['slanted'] == 'yes'){
        $slanted_class = 'slanted';
    }

    if($atts['placement'] == 'widget'){
        $label1 = __('Amount of Pounds To Convert', 'sage');
        $label2 = __('Select The Currency You Want', 'sage');
        $label3 = __('Enter Your Email Address', 'sage');
        $actions = 'method="get" id="compare-form" action="'.esc_url( home_url( '/' ) ).'"';
    }
    
    $html = '';
    $html .='<div class="conversion-box '.$slanted_class.'">
    <div class="box-inner">';

    if($atts['show_title'] !=='no' ){

    $html .= '<header>
            <h2>Compare Travel Money</h2>
        </header>';
    }

    $html .= '<form '.$actions.'>
            <div class="form-group">
                <label for="currency-amount">'.$label1.'</label>
                <input type="text" id="currency-amount" name="currency-amount" placeholder="'.__('e.g £500.00', 'sage').'" />
            </div>

            <div class="form-group">
                <label>'.$label2.'</label>
                <input type="text" name="currency" autocomplete="off" />
            </div>

            <div class="form-group">
                <label for="email-address">'.$label3.'</label>
                <input type="email" name="email-address" id="email-address" />
            </div>

            <div class="form-group submit-form">
                <input type="submit" class="btn btn-primary" id="submit-conversion" value="'.$atts['label'].'" />
            </div>

        </form>
    </div>
    </div>';
    
return $html;
}
        
add_shortcode( 'conversion_box', 'wdc_conversion_box_shortcode' );

// Money Guide

function wdc_money_guide_shortcode( $atts, $content = "" ) {
    $atts = shortcode_atts( 
        array(
            'number' => '',
            'title' => '',
            'bg_color' => '',
            'icon' => '',
        ), 
    $atts, 'wdc_money_guide' );
    $color_style = '';
    $image_style = '';
    $additional_class = '';
    $style_start ='';
    $style_end = '';


    if(!empty($atts['bg_color'])){
        $color_style = 'background-color: '.$atts['bg_color'].';';
    }

    if(!empty($atts['icon'])){
        $additional_class = 'has-icon';
        $image_style = 'background-image: url('.$atts['icon'].');';
    }

    if(!empty($atts['icon']) || !empty($atts['bg_color'])){
        $style_start ='style="';
        $style_end = '"';
    }


    $html = '';
    $html .='<div class="money-guide-box '.$additional_class.'" '.$style_start.$color_style.$image_style.$style_end.'>';

    if(!empty($atts['title'])){
        $html .='<h6 class="box-title">'.$atts['title'].'</h6> ';
    }

    if(!empty($atts['number'])){
        $html .='<span class="box-number">'.$atts['number'].')</span> ';
    }

    $html .=''.$content.'
    </div>';
    
return $html;
}
add_shortcode( 'wdc_money_guide', 'wdc_money_guide_shortcode' );

?>