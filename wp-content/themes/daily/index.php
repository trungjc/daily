<?php get_header(); ?>
<div class="slideshow"><?php putRevSlider("home")?></div>
<div class="container main-layout page-layout">
	<div class="row">
	<main role="main" class="col-md-8 col-sm-8 col-xs-12" >
		<!-- section -->
                <section class="home-content">


			<?php if (have_posts()): while (have_posts()) : the_post(); ?>

                        <!-- article -->
                        <article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>

                                <!-- post thumbnail -->
                                <?php if ( has_post_thumbnail()) : // Check if thumbnail exists ?>
                                        <a href="<?php the_permalink(); ?>" title="<?php the_title(); ?>">
                                                <?php the_post_thumbnail(array(340,340)); // Declare pixel size you need inside the array ?>
                                        </a>
                                <?php endif; ?>
                                <!-- /post thumbnail -->

                                <!-- post title -->
                                <h2>
                                        <a href="<?php the_permalink(); ?>" title="<?php the_title(); ?>"><?php the_title(); ?></a>
                                </h2>
                                <!-- /post title -->



                                <?php html5wp_excerpt('html5wp_index'); // Build your custom callback length in functions.php ?>

                                <div>
                                    <a class="readmore" href="<?php the_permalink(); ?>" title="<?php the_title(); ?>"> <?php echo get_post_meta($post->ID, 'read-more-text', true); ?>&gt;</a>
                                </div>       
                        </article>
                        <!-- /article -->

                <?php endwhile; ?>

                <?php else: ?>

                        <!-- article -->
                        <article>
                                <h2><?php _e( 'Sorry, nothing to display.', 'html5blank' ); ?></h2>
                        </article>
                        <!-- /article -->

                <?php endif; ?>


		</section>
		<!-- /section -->
	</main>

<?php get_sidebar(); ?>
</div>
</div>
<?php get_footer(); ?>
