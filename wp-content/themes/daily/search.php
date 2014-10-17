<?php get_header(); ?>


<div class="container main-layout index-layout">
	<div class="row">
		<main role="main" class="col-sm-8 col-xs-12">
		<!-- section -->
		<section>

			<h1><?php echo sprintf( __( '%s Search Results for ', 'html5blank' ), $wp_query->found_posts ); echo get_search_query(); ?></h1>

			<?php get_template_part('loop'); ?>

			<?php get_template_part('pagination'); ?>

		</section>
		<!-- /section -->
	</main>

<?php get_sidebar(); ?>
</div>
</div>
<?php get_footer(); ?>
