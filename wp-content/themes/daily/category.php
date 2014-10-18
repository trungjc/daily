<?php get_header(); ?>
<div class="container main-layout index-layout">
	<div class="row">
		<main role="main" class="col-sm-8 col-xs-12">
		<!-- section -->
		<section >

			<h1><?php _e( 'Categories for ', 'html5blank' ); single_cat_title(); ?></h1>

			<?php if (have_posts()): while (have_posts()) : the_post(); ?>

                        <!-- article -->
                        <article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
                            <div class="media">
                                 <!-- post thumbnail -->
                                <?php if ( has_post_thumbnail()) : // Check if thumbnail exists ?>
                                        <a class="pull-right" href="<?php the_permalink(); ?>" title="<?php the_title(); ?>">
                                                <?php the_post_thumbnail(array(340,340)); // Declare pixel size you need inside the array ?>
                                        </a>
                                <?php endif; ?>
                                <!-- /post thumbnail -->
                                <div class="media-body">
                                    <!-- post title -->
                                <h2>
                                        <a href="<?php the_permalink(); ?>" title="<?php the_title(); ?>"><?php the_title(); ?></a>
                                </h2>
                                <!-- /post title -->


<?php the_content(); // Dynamic Content ?>
                                 
                                </div>
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

			<?php get_template_part('pagination'); ?>

		</section>
		<!-- /section -->
	</main>


<?php get_sidebar(); ?>
</div>
</div>
<?php get_footer(); ?>
