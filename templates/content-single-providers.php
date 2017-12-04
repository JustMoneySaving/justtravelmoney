<?php while (have_posts()) : the_post(); 
$provider_header_title = rwmb_meta( 'WDC_provider_header_title' );
$provider_header_subtitle = rwmb_meta( 'WDC_provider_header_subtitle' );
$provider_header_image = rwmb_meta( 'WDC_provider_header_image' );
$provider_header_image_src = get_bloginfo('template_directory').'/assets/images/travel-money-guide.png';
$provider_video_id = rwmb_meta( 'WDC_provider_video_id' );

if(!empty($provider_header_image)):
  //Array only contains one item, always
  foreach($provider_header_image as $header_image){
    $provider_header_image_src = $header_image['full_url'];
  }
endif;?>
  <article <?php post_class(); ?>>

    <header class="clearfix">
      <div class="header-inner">
        <h2>
          <?php if($provider_header_title){
          echo $provider_header_title;
        }else{
          echo get_the_title(). ' '.__('Travel Money Guide', 'sage');
        }?>
        </h2>
        <p>
          <?php if($provider_header_subtitle){
          echo $provider_header_subtitle;
        }else{
          echo __('Your Guide To Buying Travel Money from', 'sage').' '. get_the_title();
        }?>
        </p>
      </div>
      <img src="<?php echo $provider_header_image_src;?>" alt="<?php echo get_the_title();?>"/>
    </header>

    <div class="entry-content">
      <?php the_content(); ?>

      <?php if($provider_video_id){?>
        <div class="article-video">
          <iframe width="450" height="250" src="https://www.youtube.com/embed/<?php echo $provider_video_id ;?>?rel=0&amp;showinfo=0" frameborder="0" allowfullscreen></iframe>
        </div>
      <?php } ?>
    </div>
  </article>
<?php endwhile; ?>
