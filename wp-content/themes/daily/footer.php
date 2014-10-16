			<!-- footer -->
			<footer class="footer" role="contentinfo">
                            <div class="container">
                               
                                 
                                <div class="follow-us-container">
                                   <img src="<?php echo get_template_directory_uri(); ?>/img/food-trust.png" >     
                                    <div class="clearfix">
                                        <div class="pull-right follow-us">
                                        <a href="" class="tiwtter">tiwtter</a>
                                        <a href="" class="facebook">facebook</a>
                                        </div>
                                        Follow us on twitter or facebook to get our latest delivery updates
                                    </div>
                                    
                                </div>
                                <div class="footer-widget">
                                    <?php if(!function_exists('dynamic_sidebar') || !dynamic_sidebar('widget-area-3')) ?>
                                </div>

                              
                            </div>
				

			</footer>
			<!-- /footer -->

		</div>
		<!-- /wrapper -->

		<?php wp_footer(); ?>

		<!-- analytics -->
		<script>
		(function(f,i,r,e,s,h,l){i['GoogleAnalyticsObject']=s;f[s]=f[s]||function(){
		(f[s].q=f[s].q||[]).push(arguments)},f[s].l=1*new Date();h=i.createElement(r),
		l=i.getElementsByTagName(r)[0];h.async=1;h.src=e;l.parentNode.insertBefore(h,l)
		})(window,document,'script','//www.google-analytics.com/analytics.js','ga');
		ga('create', 'UA-XXXXXXXX-XX', 'yourdomain.com');
		ga('send', 'pageview');
		</script>
<script>
jQuery(function($) {
$('.navbar .dropdown').hover(function() {
$(this).find('.dropdown-menu').first().stop(true, true).delay(250).slideDown();

}, function() {
$(this).find('.dropdown-menu').first().stop(true, true).delay(100).slideUp();

});

$('.navbar .dropdown > a').click(function(){  
location.href = this.href;
});

});</script>
	</body>
</html>
