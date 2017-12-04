<?php if(is_singular('post')){
    dynamic_sidebar('sidebar-blog-single');
}else if(is_home()){
    dynamic_sidebar('sidebar-blog');
}else if(is_singular('providers')){
    get_template_part('templates/sidebar', 'providers');
    dynamic_sidebar('sidebar-providers');
}else{
    dynamic_sidebar('sidebar-primary'); 
}?>
