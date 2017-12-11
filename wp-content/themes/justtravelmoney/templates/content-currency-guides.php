<?php
$currency_logo = rwmb_meta( 'WDC_currency_logo' );
?>

<article <?php post_class(); ?>>

    <div class="post-image">
        <a href="<?php the_permalink(); ?>">
            <?php if(!empty($currency_logo)){
                foreach($currency_logo as $logo){
                    echo '<img src="'.$logo['url'].'" alt="'.get_the_title().'" />';
                }
            }else{
                echo '<img src="http://placehold.it/160x125/" alt="placeholder" />';
            }?>
        </a>
    </div>

    <header>
        <h2 class="entry-title"><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h2>
    </header>

    <div class="read-more">
        <a href="<?php the_permalink();?>" class="btn btn-secundary">See More</a>
    </div>
</article>
