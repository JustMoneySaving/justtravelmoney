<?php if(is_singular('post')){
    dynamic_sidebar('sidebar-blog-single');
}else if(is_home()){
    dynamic_sidebar('sidebar-blog');
}else{
    dynamic_sidebar('sidebar-primary'); 
}?>
