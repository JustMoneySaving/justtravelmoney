<section class="comparison">
    <form method="get" id="compare-form-light" action="<?php echo esc_url( home_url( '/' ) ); ?>">
        <div class="form-group">
            <label for="currency-amount"><?php _e('Amount of Pounds To Convert', 'sage');?></label>
            <input type="number" id="currency-amount" name="currency-amount" placeholder="<?php _e('e.g £500.00', 'sage');?>">
        </div>

        <div class="form-group">
            <label><?php _e('Select Currency You Want', 'sage');?></label>
            <input type="text" name="currency" autocomplete="off" id="currency-select"/>
        </div>

        <div class="form-group submit-form">
            <input type="submit" class="btn btn-primary" id="submit-conversion" value="<?php _e('Compare The Rates!', 'sage');?>" />
        </div>
    </form>
</section>