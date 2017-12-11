<?php 
/**
 * Custom Widgets
 */


// Register and load the widget
function wdc_load_custom_widgets() {
    register_widget( 'wdc_browse_all_widget' );
    register_widget( 'wdc_recent_posts_widget' );
    register_widget( 'wdc_compare_rates_widget' );
}
add_action( 'widgets_init', 'wdc_load_custom_widgets' );

// wdc_browse_all_widget  
class wdc_browse_all_widget extends WP_Widget {
    function __construct() {
        parent::__construct(
            'wdc_browse_all_widget',
            'WDC: Browse all', 
            array( 
                'description' => 'Browse All Advices and Tips Widget', 
            )
        );
    }

    // Creating widget front-end
    public function widget( $args, $instance ) {
        $title = apply_filters( 'widget_title', $instance['title'] );
        $button_label = $instance['button_label'];       
        echo $args['before_widget'];
        ?>

        <h3><?php echo $title;?></h3>
        <a href="<?php echo get_the_permalink( get_option('page_for_posts') );?>" class="btn btn-secundary"> <?php echo $button_label;?></a>

        <?php
        echo $args['after_widget'];
    }
		
    // Widget Backend 
    public function form( $instance ) {
        $title = '';
        $button_label = 'Browse All';

        if ( isset( $instance[ 'title' ] ) ) {
            $title = $instance[ 'title' ];
        }
        if ( isset( $instance[ 'button_label' ] ) ) {
            $button_label = $instance[ 'button_label' ];
        }?>

        <p>
            <label for="<?php echo $this->get_field_id( 'title' ); ?>"><?php _e( 'Title:' ); ?></label> 
            <input class="widefat" id="<?php echo $this->get_field_id( 'title' ); ?>" name="<?php echo $this->get_field_name( 'title' ); ?>" type="text" value="<?php echo esc_attr( $title ); ?>" />
        </p>

        <p>
            <label for="<?php echo $this->get_field_id( 'button_label' ); ?>"><?php _e( 'Button Label:' ); ?></label> 
            <input class="widefat" id="<?php echo $this->get_field_id( 'button_label' ); ?>" name="<?php echo $this->get_field_name( 'button_label' ); ?>" type="text" value="<?php echo esc_attr( $button_label ); ?>" />
        </p>
    <?php 
    }
	
    // Updating widget replacing old instances with new
    public function update( $new_instance, $old_instance ) {
        $instance = array();
        $instance['title'] = ( ! empty( $new_instance['title'] ) ) ? strip_tags( $new_instance['title'] ) : '';
        $instance['button_label'] = ( ! empty( $new_instance['button_label'] ) ) ? strip_tags( $new_instance['button_label'] ) : '';

        return $instance;
    }

} // Class wdc_browse_all_widget ends here


// wdc_recent_posts_widget  
class wdc_recent_posts_widget extends WP_Widget {
    function __construct() {
        parent::__construct(
            'wdc_recent_posts_widget',
            'WDC: Recent posts', 
            array( 
                'description' => 'Custom Recent posts Widget', 
            )
        );
    }

    // Creating widget front-end
    public function widget( $args, $instance ) {
        $title = apply_filters( 'widget_title', $instance['title'] );
        $button_label = $instance['button_label'];
        $number_of_posts = $instance['number_of_posts'];       
        echo $args['before_widget'];
        ?>

        <h3><?php echo $title;?></h3>

        <?php
        $blog_args_widget = array(
            'post_type' => 'post',
            'posts_per_page' => $number_of_posts
        );
        query_posts($blog_args_widget); ?>
        
        <ul class="recent-posts-widget">
        <?php while (have_posts()) : the_post(); ?>
            <li>
                <a href="<?php the_permalink();?>"><?php the_title();?></a>
            </li>
        <?php endwhile; wp_reset_query();?>
        </ul>

        <div class="btn-holder">
            <a href="<?php echo get_the_permalink( get_option('page_for_posts') );?>" class="btn btn-primary"> <?php echo $button_label;?></a>
        </div>

        <?php
        echo $args['after_widget'];
    }
		
    // Widget Backend 
    public function form( $instance ) {
        $title = '';
        $button_label = 'Go To Blog';
        $number_of_posts = '6';

        if ( isset( $instance[ 'title' ] ) ) {
            $title = $instance[ 'title' ];
        }
        if ( isset( $instance[ 'button_label' ] ) ) {
            $button_label = $instance[ 'button_label' ];
        }
        if ( isset( $instance[ 'number_of_posts' ] ) ) {
            $number_of_posts = $instance[ 'number_of_posts' ];
        }?>

        <p>
            <label for="<?php echo $this->get_field_id( 'title' ); ?>"><?php _e( 'Title:' ); ?></label> 
            <input class="widefat" id="<?php echo $this->get_field_id( 'title' ); ?>" name="<?php echo $this->get_field_name( 'title' ); ?>" type="text" value="<?php echo esc_attr( $title ); ?>" />
        </p>

        <p>
            <label for="<?php echo $this->get_field_id( 'number_of_posts' ); ?>"><?php _e( 'Number of posts:' ); ?></label> 
            <input class="widefat" id="<?php echo $this->get_field_id( 'number_of_posts' ); ?>" name="<?php echo $this->get_field_name( 'number_of_posts' ); ?>" type="text" value="<?php echo esc_attr( $number_of_posts ); ?>" />
        </p>

        <p>
            <label for="<?php echo $this->get_field_id( 'button_label' ); ?>"><?php _e( 'Button label:' ); ?></label> 
            <input class="widefat" id="<?php echo $this->get_field_id( 'button_label' ); ?>" name="<?php echo $this->get_field_name( 'button_label' ); ?>" type="text" value="<?php echo esc_attr( $button_label ); ?>" />
        </p>
    <?php 
    }
	
    // Updating widget replacing old instances with new
    public function update( $new_instance, $old_instance ) {
        $instance = array();
        $instance['title'] = ( ! empty( $new_instance['title'] ) ) ? strip_tags( $new_instance['title'] ) : '';
        $instance['number_of_posts'] = ( ! empty( $new_instance['number_of_posts'] ) ) ? strip_tags( $new_instance['number_of_posts'] ) : '';
        $instance['button_label'] = ( ! empty( $new_instance['button_label'] ) ) ? strip_tags( $new_instance['button_label'] ) : '';

        return $instance;
    }

} // Class wdc_recent_posts_widget ends here


// wdc_curency_comparison_widget  
class wdc_compare_rates_widget extends WP_Widget {
    function __construct() {
        parent::__construct(
            'wdc_compare_rates_widget',
            'WDC: Compare Rates', 
            array( 
                'description' => 'Custom Compare Rates Widget', 
            )
        );
    }

    // Creating widget front-end
    public function widget( $args, $instance ) {
        $title = apply_filters( 'widget_title', $instance['title'] );
        $button_label = $instance['button_label'];
        echo $args['before_widget'];
        ?>

        <header>
            <h3><?php echo $title;?></h3>
        </header>
        <?php echo do_shortcode('[conversion_box label="'.$button_label.'" show_title="no" slanted="no" placement="widget"]');?>

        <?php
        echo $args['after_widget'];
    }
		
    // Widget Backend 
    public function form( $instance ) {
        $title = '';
        $button_label = 'Compare The Rates!';
        $comparison_shortcode = '';

        if ( isset( $instance[ 'title' ] ) ) {
            $title = $instance[ 'title' ];
        }
        if ( isset( $instance[ 'button_label' ] ) ) {
            $button_label = $instance[ 'button_label' ];
        }
        ?>

        <p>
            <label for="<?php echo $this->get_field_id( 'title' ); ?>"><?php _e( 'Title:' ); ?></label> 
            <input class="widefat" id="<?php echo $this->get_field_id( 'title' ); ?>" name="<?php echo $this->get_field_name( 'title' ); ?>" type="text" value="<?php echo esc_attr( $title ); ?>" />
        </p>
      
        <p>
            <label for="<?php echo $this->get_field_id( 'button_label' ); ?>"><?php _e( 'Button label:' ); ?></label> 
            <input class="widefat" id="<?php echo $this->get_field_id( 'button_label' ); ?>" name="<?php echo $this->get_field_name( 'button_label' ); ?>" type="text" value="<?php echo esc_attr( $button_label ); ?>" />
        </p>
    <?php 
    }
	
    // Updating widget replacing old instances with new
    public function update( $new_instance, $old_instance ) {
        $instance = array();
        $instance['title'] = ( ! empty( $new_instance['title'] ) ) ? strip_tags( $new_instance['title'] ) : '';
        $instance['button_label'] = ( ! empty( $new_instance['button_label'] ) ) ? strip_tags( $new_instance['button_label'] ) : '';

        return $instance;
    }

} // Class wdc_compare_rates_widget ends here