<!doctype html>
<html <?php language_attributes(); ?> class="no-js">
	<head>
		<meta charset="<?php bloginfo('charset'); ?>">
		<title><?php wp_title(''); ?><?php if(wp_title('', false)) { echo ' :'; } ?> <?php bloginfo('name'); ?></title>

		<link href="//www.google-analytics.com" rel="dns-prefetch">
        <link href="<?php echo get_template_directory_uri(); ?>/img/icons/favicon.ico" rel="shortcut icon">
        <link href="<?php echo get_template_directory_uri(); ?>/img/icons/touch.png" rel="apple-touch-icon-precomposed">

		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="description" content="<?php bloginfo('description'); ?>">

		<?php wp_head(); ?>
		

	</head>
	<body <?php body_class(); ?>>

		<!-- wrapper -->
		<div class="wrapper">

			<header class="header clearfix" role="banner">
                            <div class="top-bar container">
                                <div class="pull-right right-top">
                                   <div class="title"> Come shop with us on Prince Avenue!</div>
                                   <div class="info">
                                       <div class="address">523 Prince Ave, Athens, GA 30601</div>
                                        <div class="number">(706) 548-1732</div>
                                        <div class="time-open">Open Daily 8am -9pm</div>
                                   </div>
                                </div>
                                <a class=" logo" href="<?php echo home_url(); ?>">
                                        <!-- svg logo - toddmotto.com/mastering-svg-use-for-a-retina-web-fallbacks-with-png-script -->
                                        <img src="<?php echo get_template_directory_uri(); ?>/img/logo.png" alt="Logo" class="logo-img">
                                </a>
                            </div>
				<div class="navbar-top-box">
					<nav class="navbar navbar-top" role="navigation">
					    <div class="container">
					        <!-- Brand and toggle get grouped for better mobile display -->
					        <div class="navbar-header">
					            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbarCollapse">
					                <span class="sr-only">Toggle navigation</span>
					                <span class="icon-bar"></span>
					                <span class="icon-bar"></span>
					                <span class="icon-bar"></span>
					            </button>
					           
					        </div>

					        <!-- Collect the nav links, forms, and other content for toggling -->
					        <div class="collapse navbar-collapse" id="navbarCollapse">
					        	<?php html5blank_nav(); ?>
					        </div>
					        <!-- /.navbar-collapse -->
					    </div>
					    <!-- /.container-fluid -->
					</nav>
				</div>

			</header>
