	</div>
<!-- Container Inner Ends -->
<!-- Footer Starts -->	
	<div id="footer">
	<?php if ($informations) { ?>
	<!-- Column Starts -->	
		<div class="column">
			<h3><?php echo $text_information; ?></h3>
			<ul>
				<?php foreach ($informations as $information) { ?>
				<li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
				<?php } ?>
			</ul>
		</div>
	<!-- Column Ends -->
	<?php } ?>
	<!-- Column Starts -->	
		<div class="column">
			<h3><?php echo $text_service; ?></h3>
			<ul>
				<li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
				<li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
				<li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
			</ul>
		</div>
	<!-- Column Ends -->
	<!-- Column Starts -->		
		<div class="column">
			<h3><?php echo $text_extra; ?></h3>
			<ul>
				<li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
				<li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
				<li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li>
				<li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
			</ul>
		</div>
	<!-- Column Ends -->
	<!-- Column Starts -->	
		<div class="column last">
			<h3><?php echo $text_account; ?></h3>
			<ul>
				<li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
				<li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
				<li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
				<li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
			</ul>
		</div>
	<!-- Column Ends -->	
	</div>
<!-- Footer Ends -->
	<!-- Powered Starts -->
		<div id="powered" class="clearfix">
			<p class="floatleft">Powered by Cloud</p>
			<p class="floatright">
				<a href="http://www.janakiram.com">Developed by Janakiram MSV</a>
			</p>			
		</div>
	<!-- Powered Ends -->
	<!-- 
		OpenCart is open source software and you are free to remove the powered by OpenCart if you want, 
		but its generally accepted practise to make a small donation.
		Please donate via PayPal to donate@opencart.com
	-->
	</div>
<!-- Container Ends -->
</body>
</html>
