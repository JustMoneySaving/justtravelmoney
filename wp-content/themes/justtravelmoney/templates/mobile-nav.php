<div off-canvas="slidebar-1 left push" class="main-slidebar">
    <div class="side-menu-holder">
        <?php 
        $homepage_link = '<li class="home-logo">
            <a href="'.home_url( '/' ).'">
                <img src="'.get_bloginfo('template_directory').'/assets/images/JustTravelMoney-logo-white.png" class="img-logo" alt="'.get_bloginfo('name').'" />
                <img src="'.get_bloginfo('template_directory').'/assets/images/JustTravelMoney-logo-white.svg" class="svg-logo" alt="'.get_bloginfo('name').'" />
            </a>
            </li>';
        ?>        
        <?php wp_nav_menu( array( 
            'theme_location' => 'mobile_navigation', 
            'menu'            => '',
            'container'       => 'ul',
            'container_class' => '',
            'container_id'    => '',
            'menu_class'      => 'side-menu',
            'menu_id'         => 'side-menu',
            'fallback_cb'     => 'wp_page_menu',
            'items_wrap'      => '<ul id="%1$s" class="%2$s">'.$homepage_link.' %3$s</ul>',
        ) );?>
    </div>
</div>